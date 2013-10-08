package cargo.insuranceCertificate

import grails.converters.deep.JSON
import grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException
import rapidgrails.CompositeHelper

@Secured("Admin,Create Shipment,Edit Shipment,Set MultiSheetInsur,Set OneSheetInsur,Set CustomsOperation")
class UsedInsuranceCertController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def cal=Calendar.instance
        cal.add(Calendar.DATE,20)
        def exps=InsuranceCert.findAllByExpireDateBetween(new Date(),cal.time)
        [exps:exps]   }

    def create() {
        [usedInsuranceCertInstance: new UsedInsuranceCert(params)]
    }

    def saveUsed(){

        def usedInsuranceCert

        if (! params.id)
            usedInsuranceCert = new UsedInsuranceCert()
        else{
            usedInsuranceCert=UsedInsuranceCert.get(params.id)
        }

        def newparams=[:]
        newparams.putAll(params)
        if (usedInsuranceCert.hasProperty("composites")) {
            def composites = usedInsuranceCert.composites
            composites.each {composit ->
                params.findAll {it.key.startsWith(composit) && it.value instanceof Map}
                .each {
                    def methodName = composit[0].toUpperCase() + composit.substring(1);
                    def compositParams = it.value
                    def compositInstance
                    if (compositParams.id) {
                        compositInstance = usedInsuranceCert.coupons.find {(compositParams.id as Long) == it.id}
                        compositInstance.properties=compositParams
                    }
                    else {
                        compositInstance = new cargo.insuranceCertificate.CouponContainer(compositParams)
                        usedInsuranceCert."addTo${methodName}"(compositInstance)
                    }

//                    bindData(compositInstance, compositParams)
                }
                params.findAll {it.key.startsWith(composit) }.each{

                    newparams.remove(it.key)
                }
            }
        }

        usedInsuranceCert.properties=newparams
        def assignedInsuranceCert = usedInsuranceCert.assignedInsuranceCert
        new CompositeHelper().bindComposites(usedInsuranceCert, params)
//        if (usedInsuranceCert.coupons.couponNumFrom==usedInsuranceCert.assignedInsuranceCert.couponNumFrom && usedInsuranceCert.coupons.couponNumTo<=usedInsuranceCert.assignedInsuranceCert.couponNumTo){
        if (usedInsuranceCert.save()) {
            assignedInsuranceCert.remainedCount = (assignedInsuranceCert.remainedCount - usedInsuranceCert.total )
            assignedInsuranceCert.save()
        }
//        }
        render(0)

    }


    def save() {
        def usedInsuranceCertInstance = new UsedInsuranceCert(params)
        if (!usedInsuranceCertInstance.save(flush: true)) {
            render(view: "create", model: [usedInsuranceCertInstance: usedInsuranceCertInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'usedInsuranceCert.label', default: 'UsedInsuranceCert'), usedInsuranceCertInstance.id])
        redirect(action: "show", id: usedInsuranceCertInstance.id)
    }

    def reportRes() {
        def couponFrom = params.couponNumFrom
        def couponTo = params.couponNumTo
        def usedInsuranceCert = UsedInsuranceCert.getTypeParameters()
        def reportRes = []
        println usedInsuranceCert
        render(view: "result", params: params, model: [reportRes: reportRes])
        for (def i = couponFrom; i <= couponTo; i++) {
            def assignedInsuranceCert = AssignedInsuranceCert.findByCouponNumFromLessThanEqualsAndCouponNumToGreaterThanEquals(i, i)
            def selUsedInsurance = UsedInsuranceCert.createCriteria().get {
                coupons {
                    le('couponNumFrom', i)
                    ge('couponNumTo', i)
                }
                //eq("insuranceCert", insuranceCert)
            }

            def customsOperation
            selUsedInsurance?.customsOperations?.each {
                if (it.shipment == selUsedInsurance.shipment)
                    customsOperation = it
            }

            def insuranceCert
            reportRes << [CouponNO: i,
                    purchaseDate: rg.formatJalaliDate(date: insuranceCert?.purchaseDate),
                    expireDate: rg.formatJalaliDate(date: insuranceCert?.expireDate),
                    sendingDate: rg.formatJalaliDate(date: assignedInsuranceCert?.sendingDate),
                    agent: assignedInsuranceCert?.agent,
                    shipment: selUsedInsurance?.shipment,
                    transitFrom: customsOperation?.origin,
                    transitTo: customsOperation?.destination,
                    permitsNum: customsOperation?.permitsNum,
                    commodity: customsOperation?.commodity,
                    weight: customsOperation?.weight,
                    tariff: customsOperation?.tariff,
                    rowNum: customsOperation?.rowNum,
                    kutazhNum: customsOperation?.kutazhNum,
                    receiptDate: rg.formatJalaliDate(date: customsOperation?.receiptDate),
                    receiptNum: customsOperation?.receiptNum]
        }
    }

    def show() {
        def usedInsuranceCertInstance = UsedInsuranceCert.get(params.id)
        if (!usedInsuranceCertInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'usedInsuranceCert.label', default: 'UsedInsuranceCert'), params.id])
            redirect(action: "list")
            return
        }

        [usedInsuranceCertInstance: usedInsuranceCertInstance]
    }

    def edit() {
        def usedInsuranceCertInstance = UsedInsuranceCert.get(params.id)
        if (!usedInsuranceCertInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'usedInsuranceCert.label', default: 'UsedInsuranceCert'), params.id])
            redirect(action: "list")
            return
        }

        [usedInsuranceCertInstance: usedInsuranceCertInstance]
    }

    def update() {
        def usedInsuranceCertInstance = UsedInsuranceCert.get(params.id)
        if (!usedInsuranceCertInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'usedInsuranceCert.label', default: 'UsedInsuranceCert'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (usedInsuranceCertInstance.version > version) {
                usedInsuranceCertInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'usedInsuranceCert.label', default: 'UsedInsuranceCert')] as Object[],
                        "Another user has updated this UsedInsuranceCert while you were editing")
                render(view: "edit", model: [usedInsuranceCertInstance: usedInsuranceCertInstance])
                return
            }
        }

        usedInsuranceCertInstance.properties = params

        if (!usedInsuranceCertInstance.save(flush: true)) {
            render(view: "edit", model: [usedInsuranceCertInstance: usedInsuranceCertInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'usedInsuranceCert.label', default: 'UsedInsuranceCert'), usedInsuranceCertInstance.id])
        redirect(action: "show", id: usedInsuranceCertInstance.id)
    }

    def delete() {
        def usedInsuranceCertInstance = UsedInsuranceCert.get(params.id)
        if (!usedInsuranceCertInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'usedInsuranceCert.label', default: 'UsedInsuranceCert'), params.id])
            redirect(action: "list")
            return
        }

        try {
            usedInsuranceCertInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'usedInsuranceCert.label', default: 'UsedInsuranceCert'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'usedInsuranceCert.label', default: 'UsedInsuranceCert'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
