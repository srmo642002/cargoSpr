package cargo.insuranceCertificate

import cargo.InsuranceService
import fi.joensuu.joyds1.calendar.JalaliCalendar
import grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException

@Secured("Admin,Set PurchasedInsurSheet,Set AssignedInsurSheet")
class InsuranceCertController {

    static allowedMethods = [update: "POST", delete: "POST"]
    def insuranceService

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def cal = Calendar.instance
        cal.add(Calendar.DATE, 20)
        def exps = InsuranceCert.findAllByExpireDateBetween(new Date(), cal.time)
        [exps: exps]
    }

    def report() {
        render(view: "report")
    }

    def reportRes() {
        def insuranceCert = InsuranceCert.findByCode(params.search)
        def reportRes = []
        println insuranceCert
        render(view: "result", params: params.search, model: [reportRes: reportRes])
        for (def i = insuranceCert.couponNumFrom; i <= insuranceCert.couponNumTo; i++) {
            def assignedInsuranceCert = AssignedInsuranceCert.findByInsuranceCertAndCouponNumFromLessThanEqualsAndCouponNumToGreaterThanEquals(insuranceCert, i, i)
            def selUsedInsurance = UsedInsuranceCert.createCriteria().get {
                coupons {
                    le('couponNumFrom', i)
                    ge('couponNumTo', i)
                }
                eq("insuranceCert", insuranceCert)
            }

            def customsOperation
            selUsedInsurance?.customsOperations?.each {
                if (it.shipment == selUsedInsurance.shipment)
                    customsOperation = it
            }

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


    def create() {
        [insuranceCertInstance: new InsuranceCert(params)]
    }

    def save() {
        def insuranceCertInstance = new InsuranceCert(params)
        insuranceCertInstance.code = insuranceService.generateCode(insuranceCertInstance)
        insuranceCertInstance.remainedCount = insuranceCertInstance.totalCount
        JalaliCalendar cal = new JalaliCalendar()
        def eCal = Calendar.instance
        eCal.time = insuranceCertInstance?.purchaseDate
        cal.set(eCal)
        def newMonth = cal.month + 6
        if (newMonth > 12) {
            cal.year = cal.year + 1
            newMonth = newMonth % 12
        }
        cal.set(cal.year, newMonth, cal.day)
        insuranceCertInstance.expireDate = cal.toJavaUtilGregorianCalendar().time
        if (!insuranceCertInstance.save(flush: true)) {
            render(view: "create", model: [insuranceCertInstance: insuranceCertInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'insuranceCert.label', default: 'InsuranceCert'), insuranceCertInstance.id])
        redirect(action: "show", id: insuranceCertInstance.id)
    }

    def show() {
        def insuranceCertInstance = InsuranceCert.get(params.id)
        if (!insuranceCertInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'insuranceCert.label', default: 'InsuranceCert'), params.id])
            redirect(action: "list")
            return
        }

        [insuranceCertInstance: insuranceCertInstance]
    }

    def edit() {
        def insuranceCertInstance = InsuranceCert.get(params.id)
        if (!insuranceCertInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'insuranceCert.label', default: 'InsuranceCert'), params.id])
            redirect(action: "list")
            return
        }

        [insuranceCertInstance: insuranceCertInstance]
    }

    def update() {
        def insuranceCertInstance = InsuranceCert.get(params.id)
        if (!insuranceCertInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'insuranceCert.label', default: 'InsuranceCert'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (insuranceCertInstance.version > version) {
                insuranceCertInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'insuranceCert.label', default: 'InsuranceCert')] as Object[],
                        "Another user has updated this InsuranceCert while you were editing")
                render(view: "edit", model: [insuranceCertInstance: insuranceCertInstance])
                return
            }
        }

        insuranceCertInstance.properties = params

        if (!insuranceCertInstance.save(flush: true)) {
            render(view: "edit", model: [insuranceCertInstance: insuranceCertInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'insuranceCert.label', default: 'InsuranceCert'), insuranceCertInstance.id])
        redirect(action: "show", id: insuranceCertInstance.id)
    }

    def delete() {
        def insuranceCertInstance = InsuranceCert.get(params.id)
        if (!insuranceCertInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'insuranceCert.label', default: 'InsuranceCert'), params.id])
            redirect(action: "list")
            return
        }

        try {
            insuranceCertInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'insuranceCert.label', default: 'InsuranceCert'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'insuranceCert.label', default: 'InsuranceCert'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
