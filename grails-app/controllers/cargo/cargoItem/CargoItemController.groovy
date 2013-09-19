package cargo.cargoItem

import cargo.Role
import cargo.Shipment
import grails.plugins.springsecurity.Secured
import org.apache.poi.ss.usermodel.Workbook
import org.apache.poi.ss.usermodel.WorkbookFactory
import org.grails.plugins.excelimport.ExpectedPropertyType

import org.springframework.dao.DataIntegrityViolationException
import pl.touk.excel.export.WebXlsxExporter
import rapidgrails.Field

@Secured("Admin,Create Shipment,Edit Shipment")
class CargoItemController {
    def principalService
    def excelImportService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
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

    def getMenuList() {
        def user = principalService.getUser()
        def userid = user.id
        def groupid = user.groups?.id
        def adminRole = Role.findByAuthority("Admin")
        def view = "menuList"
        if (user.authorities.contains(adminRole))
            view = "adminMenuList"
        render(view: view, model: [userid: userid, user: user, groupid: groupid])


    }

    def create() {
        [cargoItemInstance: new CargoItem(params)]
    }

    def saveCargoItem() {
        def cargoItem
        if (params.id) {
            cargoItem = CargoItem.get(params.id)
            cargoItem.properties = params
        } else {
            cargoItem = new CargoItem(params)
            cargoItem.user = principalService.getUser()
        }
        cargoItem.validate()
        cargoItem.save()
        render 0;
    }

    def save() {
        def cargoItemInstance = new CargoItem(params)
        if (!cargoItemInstance.save(flush: true)) {
            render(view: "create", model: [cargoItemInstance: cargoItemInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'cargoItem.label', default: 'CargoItem'), cargoItemInstance.id])
        redirect(action: "show", id: cargoItemInstance.id)
    }

    def upload() {

        def file = request.getFile('file')
        Workbook sb

        def fileIs = new ByteArrayInputStream(file.bytes)
        sb = WorkbookFactory.create(fileIs)
        Map CONFIG_COLUMN_MAP = [

                sheet: 'Sheet1',
                startRow: 1,

                columnMap: [

                        'A': 'item',
                        'B': 'typeOfPackage',
                        'C': 'commodity',
                        'D': 'unitOfMeasure',
                        'E': 'grade',
                        'F': 'rateOrCharge',
                        'G': 'noOfPackage',
                        'H': 'grossWeight',
                        'I': 'totalWeight',
                        'J': 'chargeableWeight',
                        'K': 'width',
                        'L': 'length',
                        'M': 'height',
                        'N': 'volume',
                        'O': 'chargeableRate',
                        'P': 'totalVolume'
                ]
        ]

        Map propertyConfigurationMap = [:]

        CONFIG_COLUMN_MAP.columnMap.each { key, value ->

            propertyConfigurationMap[value] = [expectedType: ExpectedPropertyType.StringType, defaultValue: null]

        }
        def res = excelImportService.columns(sb, CONFIG_COLUMN_MAP, null, propertyConfigurationMap)
        println(res)
        def shipment = Shipment.get(params.shipmentId)
        def user = principalService.user
        res.each { field ->

            try {
                def cargoItem = new CargoItem()
                cargoItem.properties = field
                cargoItem.user = user
                cargoItem.shipment = shipment
                cargoItem.volume = (cargoItem?.width ?: 0) * (cargoItem?.height ?: 0) * (cargoItem?.length ?: 0)
                cargoItem.totalWeight = (cargoItem?.noOfPackage ?: 0) * (cargoItem?.grossWeight ?: 0)
                cargoItem.chargeableWeight = (cargoItem?.totalWeight ?: 0) * (cargoItem?.rateOrCharge ?: 0)
                cargoItem.totalVolume = (cargoItem?.noOfPackage ?: 0) * (cargoItem?.volume ?: 0)
                cargoItem.chargeableRate = (cargoItem?.totalVolume ?: 0) * (cargoItem?.rateOrCharge ?: 0)
                cargoItem.save()

            } catch (x) {
                x.printStackTrace()
                println x.message
            }
        }

        redirect(action: "show", controller: "shipment", id: params.shipmentId)
    }

    def xls() {

        def reportTitle = "CargoItem"
        def subTitle = "Details"

        def props= ["item",
                "typeOfPackage",
                "commodity",
                "unitOfMeasure",
                "grade",
                "rateOrCharge",
                "noOfPackage",
                "grossWeight",
                "totalWeight",
                "chargeableWeight",
                "width",
                "length",
                "height",
                "volume",
                "chargeableRate",
                "totalVolume"]


        def headers= []
        headers=props.collect{
            message(code: "cargoItem.${it}.label")
        }

        def reportList = CargoItem.findAllByShipment(Shipment.get(params.id))

//        response.contentType = 'application/vnd.ms-excel'
//        response.setHeader("Content-disposition", "attachment; filename=report.xls")
        new WebXlsxExporter().with {
            setResponseHeaders(response)
            fillHeader(headers)
            add(reportList,props)
            save(response.outputStream)
        }
    }

    def show() {
        def cargoItemInstance = CargoItem.get(params.id)
        if (!cargoItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cargoItem.label', default: 'CargoItem'), params.id])
            redirect(action: "list")
            return
        }

        [cargoItemInstance: cargoItemInstance]
    }

    def edit() {
        def cargoItemInstance = CargoItem.get(params.id)
        if (!cargoItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cargoItem.label', default: 'CargoItem'), params.id])
            redirect(action: "list")
            return
        }

        [cargoItemInstance: cargoItemInstance]
    }

    def update() {
        def cargoItemInstance = CargoItem.get(params.id)
        if (!cargoItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cargoItem.label', default: 'CargoItem'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (cargoItemInstance.version > version) {
                cargoItemInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'cargoItem.label', default: 'CargoItem')] as Object[],
                        "Another user has updated this CargoItem while you were editing")
                render(view: "edit", model: [cargoItemInstance: cargoItemInstance])
                return
            }
        }

        cargoItemInstance.properties = params

        if (!cargoItemInstance.save(flush: true)) {
            render(view: "edit", model: [cargoItemInstance: cargoItemInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'cargoItem.label', default: 'CargoItem'), cargoItemInstance.id])
        redirect(action: "show", id: cargoItemInstance.id)
    }

    def delete() {
        def cargoItemInstance = CargoItem.get(params.id)
        if (!cargoItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cargoItem.label', default: 'CargoItem'), params.id])
            redirect(action: "list")
            return
        }

        try {
            cargoItemInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'cargoItem.label', default: 'CargoItem'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'cargoItem.label', default: 'CargoItem'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
