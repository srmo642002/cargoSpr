package cargo

import cargo.cargoItem.AirCargoItem
import cargo.cargoItem.OceanCargoItem
import cargo.cargoItem.RailCargoItem
import cargo.cargoItem.RoadCargoItem
import cargo.insuranceCertificate.CustomsOperations
import grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException
import grails.converters.deep.JSON

@Secured("Admin,Create Shipment,Edit Shipment,Create DocType,Edit DocType,Delete DocType,Create AirFreight,Edit AirFreight,Delete AirFreight,Create OceanFreight,Edit OceanFreight,Delete OceanFreight,Create RailFreight,Edit RailFreight,Delete RailFreight,Create RoadFreight,Edit RoadFreight,Delete RoadFreight")
class ShipmentController {
    def principalService
    def shipmentService
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def test() {
        def i = 0
    }

    def list() {
        def user = principalService.getUser()
        def userid = user.id
        def groupid = user.groups?.id
        def adminRole = Role.findByAuthority("Admin")
        def view = "list"
        if (user.authorities.contains(adminRole))
            view = "adminList"
        render(view: view, model: [userid: userid, groupid: groupid])
    }

    def create() {
        [shipmentInstance: new Shipment(params)]
    }

    def saveShipment() {
        def shipment
        if (params.id) {
            shipment = Shipment.get(params.id)
            shipment.properties = params
        } else {
            shipment = new Shipment(params)
            shipment.referenceCode = shipmentService.generateReferenceCode(shipment)
            shipment.user = principalService.getUser()
        }
        shipment.save()
        render 0;
    }

    def save() {
        def shipmentInstance = new Shipment(params)
        if (!shipmentInstance.save(flush: true)) {
            render(view: "create", model: [shipmentInstance: shipmentInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'shipment.label', default: 'Shipment'), shipmentInstance.id])
        redirect(action: "show", id: shipmentInstance.id)
    }

    def show() {
        def shipmentInstance = Shipment.get(params.id)
        if (!shipmentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'shipment.label', default: 'Shipment'), params.id])
            redirect(action: "list")
            return
        }
        def customsOperation = CustomsOperations.findByShipment(shipmentInstance)
        [shipmentInstance: shipmentInstance, customsOperation: customsOperation]
    }

    def edit() {
        def shipmentInstance = Shipment.get(params.id)
        if (!shipmentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'shipment.label', default: 'Shipment'), params.id])
            redirect(action: "list")
            return
        }

        [shipmentInstance: shipmentInstance]
    }

    def update() {
        def shipmentInstance = Shipment.get(params.id)
        if (!shipmentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'shipment.label', default: 'Shipment'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (shipmentInstance.version > version) {
                shipmentInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'shipment.label', default: 'Shipment')] as Object[],
                        "Another user has updated this Shipment while you were editing")
                render(view: "edit", model: [shipmentInstance: shipmentInstance])
                return
            }
        }

        shipmentInstance.properties = params

        if (!shipmentInstance.save(flush: true)) {
            render(view: "edit", model: [shipmentInstance: shipmentInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'shipment.label', default: 'Shipment'), shipmentInstance.id])
        redirect(action: "show", id: shipmentInstance.id)
    }

    def delete() {
        def shipmentInstance = Shipment.get(params.id)
        if (!shipmentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'shipment.label', default: 'Shipment'), params.id])
            redirect(action: "list")
            return
        }

        try {
            shipmentInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'shipment.label', default: 'Shipment'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'shipment.label', default: 'Shipment'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def getCities() {
        def country = Country.get(params.id)
        def cities = City.findAllByCountry(country)
        render cities as JSON
    }

    def saveAirCargoItem() {
        if (params.cargoItem.id.contains(",")) {
            params.cargoItem.id.split(",").each {
                params['cargoItem.id'] = it as Long
                def airCargoItem = new AirCargoItem(params)
                airCargoItem.user = principalService.getUser()
                def oldAirCargoItem = AirCargoItem.findByAircraftAndFlightNumAndLoadingDateAndEtaDateAndArrivalDateAndDeliveryOrderDateAndCargoItemAndAirFreight(airCargoItem.aircraft, airCargoItem.flightNum, airCargoItem.loadingDate, airCargoItem.etaDate, airCargoItem.arrivalDate, airCargoItem.deliveryOrderDate, airCargoItem.cargoItem, airCargoItem.airFreight)
                if (oldAirCargoItem) {
                    render "error"
                } else {
                    airCargoItem.save()

                }
            }
            render 0
        } else {
            def airCargoItem
            if (params.id) {
                airCargoItem = airCargoItem.get(params.id)
                airCargoItem.properties = params
            } else
                airCargoItem = new AirCargoItem(params)
            airCargoItem.user = principalService.getUser()
            def oldAirCargoItem = AirCargoItem.findByAircraftAndFlightNumAndLoadingDateAndEtaDateAndArrivalDateAndDeliveryOrderDateAndCargoItemAndAirFreight(airCargoItem.aircraft, airCargoItem.flightNum, airCargoItem.loadingDate, airCargoItem.etaDate, airCargoItem.arrivalDate, airCargoItem.deliveryOrderDate, airCargoItem.cargoItem, airCargoItem.airFreight)
            if (oldAirCargoItem) {
                render "error"
            } else {
                airCargoItem.save()
                render 0
            }
        }
    }


    def importExcel(){

    }

    def saveOceanCargoItem() {
        if (params.cargoItem.id.contains(",")) {
            params.cargoItem.id.split(",").each {
                params['cargoItem.id'] = it as Long
                def oceanCargoItem = new OceanCargoItem(params)
                oceanCargoItem.user = principalService.getUser()
                def oldOceanCargoItem = OceanCargoItem.findByLoadingDateAndEtaDateAndArrivalDateAndDeliveryOrderDateAndCargoItemAndOceanFreight(oceanCargoItem.loadingDate, oceanCargoItem.etaDate, oceanCargoItem.arrivalDate, oceanCargoItem.deliveryOrderDate, oceanCargoItem.cargoItem, oceanCargoItem.oceanFreight)
                if (oldOceanCargoItem) {
                    render "error"
                } else {
                    oceanCargoItem.save()
                }
            }
            render 0
        } else {
            def oceanCargoItem
            if (params.id) {
                oceanCargoItem = OceanCargoItem.get(params.id)
                oceanCargoItem.properties = params
            } else
                oceanCargoItem = new OceanCargoItem(params)
            oceanCargoItem.user = principalService.getUser()
            def oldOceanCargoItem = OceanCargoItem.findByLoadingDateAndEtaDateAndArrivalDateAndDeliveryOrderDateAndCargoItemAndOceanFreight(oceanCargoItem.loadingDate, oceanCargoItem.etaDate, oceanCargoItem.arrivalDate, oceanCargoItem.deliveryOrderDate, oceanCargoItem.cargoItem, oceanCargoItem.oceanFreight)
            if (oldOceanCargoItem) {
                render "error"
            } else {
                oceanCargoItem.save()
                render 0
            }
        }
    }

    def saveRailCargoItem() {
        if (params.cargoItem.id.contains(",")) {
            params.cargoItem.id.split(",").each {
                params['cargoItem.id']= it as Long
                def railCargoItem = new RailCargoItem(params)
                railCargoItem.user = principalService.getUser()
                def oldRailCargoItem = RailCargoItem.findByWagonTypeAndWagonStatusAndWagonNumAndLoadingDateAndEtaDateAndArrivalDateAndDeliveryOrderDateAndCargoItemAndRailFreight(railCargoItem.wagonType, railCargoItem.wagonStatus, railCargoItem.wagonNum, railCargoItem.loadingDate, railCargoItem.etaDate, railCargoItem.arrivalDate, railCargoItem.deliveryOrderDate, railCargoItem.cargoItem, railCargoItem.railFreight)
                if (oldRailCargoItem) {
                    render "error"
                } else {
                    railCargoItem.save()
                }
                render 0

            }
        } else {
            def railCargoItem
            if (params.id) {
                railCargoItem = RailCargoItem.get(params.id)
                railCargoItem.properties = params
            } else
                railCargoItem = new RailCargoItem(params)
            railCargoItem.user = principalService.getUser()
            def oldRailCargoItem = RailCargoItem.findByWagonTypeAndWagonStatusAndWagonNumAndLoadingDateAndEtaDateAndArrivalDateAndDeliveryOrderDateAndCargoItemAndRailFreight(railCargoItem.wagonType, railCargoItem.wagonStatus, railCargoItem.wagonNum, railCargoItem.loadingDate, railCargoItem.etaDate, railCargoItem.arrivalDate, railCargoItem.deliveryOrderDate, railCargoItem.cargoItem, railCargoItem.railFreight)
            if (oldRailCargoItem) {
                render "error"
            } else {
                railCargoItem.save()
                render 0
            }
        }
    }

    def saveRoadCargoItem() {
        if (params.cargoItem.id.contains(",")) {
            params.cargoItem.id.split(",").each {
                params['cargoItem.id']= it as Long
                def roadCargoItem = new RoadCargoItem(params)

                roadCargoItem.user = principalService.getUser()
                def oldRoadCargoItem = RoadCargoItem.findByTruckAndPlaqueAndContainerTypeAndContainerNumAndFtlAndLtlAndDriverAndLoadingDateAndEtaDateAndArrivalDateAndDeliveryOrderDateAndCargoItemAndRoadFreight(roadCargoItem.truck,roadCargoItem.plaque,roadCargoItem.containerType,roadCargoItem.containerNum,roadCargoItem.ftl,roadCargoItem.ltl,roadCargoItem.driver,roadCargoItem.loadingDate,roadCargoItem.etaDate,roadCargoItem.arrivalDate,roadCargoItem.deliveryOrderDate,roadCargoItem.cargoItem,roadCargoItem.roadFreight)
                if (oldRoadCargoItem) {
                    render "error"
                } else {
                    roadCargoItem.save()
                    render 0
                }
            }
        } else {
            def roadCargoItem
            if (params.id) {
                roadCargoItem = RoadCargoItem.get(params.id)
                roadCargoItem.properties = params
            } else
                roadCargoItem = new RoadCargoItem(params)
            roadCargoItem.user = principalService.getUser()
            def oldRoadCargoItem = RoadCargoItem.findByTruckAndDriverAndcontainerNumAndLoadingDateAndEtaDateAndArrivalDateAndDeliveryOrderDateAndCargoItemAndRoadFreight(roadCargoItem.truck, roadCargoItem.driver, roadCargoItem.containerNum, roadCargoItem.loadingDate, roadCargoItem.etaDate, roadCargoItem.arrivalDate, roadCargoItem.deliveryOrderDate, roadCargoItem.cargoItem, roadCargoItem.roadFreight)
            if (oldRoadCargoItem) {
                render "error"
            } else {
                roadCargoItem.save()
                render 0
            }
        }


    }

    def selectAll(){

    }


}
