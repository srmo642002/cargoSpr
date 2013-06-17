package cargo.insuranceCertificate

import grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException

@Secured("Admin,Head Shipment Creator,Shipment Creator,Agent")
class OneSheetInsuranceCertController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [oneSheetInsuranceCertInstanceList: OneSheetInsuranceCert.list(params), oneSheetInsuranceCertInstanceTotal: OneSheetInsuranceCert.count()]
    }

    def create() {
        [oneSheetInsuranceCertInstance: new OneSheetInsuranceCert(params)]
    }

    def save() {
        def oneSheetInsuranceCertInstance = new OneSheetInsuranceCert(params)
        if (!oneSheetInsuranceCertInstance.save(flush: true)) {
            render(view: "create", model: [oneSheetInsuranceCertInstance: oneSheetInsuranceCertInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'oneSheetInsuranceCert.label', default: 'OneSheetInsuranceCert'), oneSheetInsuranceCertInstance.id])
        redirect(action: "show", id: oneSheetInsuranceCertInstance.id)
    }

    def show() {
        def oneSheetInsuranceCertInstance = OneSheetInsuranceCert.get(params.id)
        if (!oneSheetInsuranceCertInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'oneSheetInsuranceCert.label', default: 'OneSheetInsuranceCert'), params.id])
            redirect(action: "list")
            return
        }

        [oneSheetInsuranceCertInstance: oneSheetInsuranceCertInstance]
    }

    def edit() {
        def oneSheetInsuranceCertInstance = OneSheetInsuranceCert.get(params.id)
        if (!oneSheetInsuranceCertInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'oneSheetInsuranceCert.label', default: 'OneSheetInsuranceCert'), params.id])
            redirect(action: "list")
            return
        }

        [oneSheetInsuranceCertInstance: oneSheetInsuranceCertInstance]
    }

    def update() {
        def oneSheetInsuranceCertInstance = OneSheetInsuranceCert.get(params.id)
        if (!oneSheetInsuranceCertInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'oneSheetInsuranceCert.label', default: 'OneSheetInsuranceCert'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (oneSheetInsuranceCertInstance.version > version) {
                oneSheetInsuranceCertInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'oneSheetInsuranceCert.label', default: 'OneSheetInsuranceCert')] as Object[],
                        "Another user has updated this OneSheetInsuranceCert while you were editing")
                render(view: "edit", model: [oneSheetInsuranceCertInstance: oneSheetInsuranceCertInstance])
                return
            }
        }

        oneSheetInsuranceCertInstance.properties = params

        if (!oneSheetInsuranceCertInstance.save(flush: true)) {
            render(view: "edit", model: [oneSheetInsuranceCertInstance: oneSheetInsuranceCertInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'oneSheetInsuranceCert.label', default: 'OneSheetInsuranceCert'), oneSheetInsuranceCertInstance.id])
        redirect(action: "show", id: oneSheetInsuranceCertInstance.id)
    }

    def delete() {
        def oneSheetInsuranceCertInstance = OneSheetInsuranceCert.get(params.id)
        if (!oneSheetInsuranceCertInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'oneSheetInsuranceCert.label', default: 'OneSheetInsuranceCert'), params.id])
            redirect(action: "list")
            return
        }

        try {
            oneSheetInsuranceCertInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'oneSheetInsuranceCert.label', default: 'OneSheetInsuranceCert'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'oneSheetInsuranceCert.label', default: 'OneSheetInsuranceCert'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
