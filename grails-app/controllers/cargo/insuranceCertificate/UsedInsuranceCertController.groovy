package cargo.insuranceCertificate

import grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException

@Secured("Admin,Head Shipment Creator,Shipment Creator,Agent")
class UsedInsuranceCertController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [usedInsuranceCertInstanceList: UsedInsuranceCert.list(params), usedInsuranceCertInstanceTotal: UsedInsuranceCert.count()]
    }

    def create() {
        [usedInsuranceCertInstance: new UsedInsuranceCert(params)]
    }

    def saveUsed(){

        def usedInsuranceCert

        usedInsuranceCert = new UsedInsuranceCert(params)
        if (usedInsuranceCert.serialNumFrom==usedInsuranceCert.assignedInsuranceCert.serialNumFrom && usedInsuranceCert.serialNumTo<=usedInsuranceCert.assignedInsuranceCert.serialNumTo){
        if (usedInsuranceCert.save()) {
            def assignedInsuranceCert = usedInsuranceCert.assignedInsuranceCert
            assignedInsuranceCert.serialNumFrom = (usedInsuranceCert.serialNumTo + 1)
            assignedInsuranceCert.totalCount = (assignedInsuranceCert.totalCount - usedInsuranceCert.totalCount )
            assignedInsuranceCert.save()
        }
        }
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
