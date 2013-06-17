package cargo.insuranceCertificate

import grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException

@Secured("Admin,Head Shipment Creator,Shipment Creator,Agent")
class CustomsOperationsController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [customsOperationsInstanceList: CustomsOperations.list(params), customsOperationsInstanceTotal: CustomsOperations.count()]
    }

    def create() {
        [customsOperationsInstance: new CustomsOperations(params)]
    }

    def save() {
        def customsOperationsInstance = new CustomsOperations(params)
        if (!customsOperationsInstance.save(flush: true)) {
            render(view: "create", model: [customsOperationsInstance: customsOperationsInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'customsOperations.label', default: 'CustomsOperations'), customsOperationsInstance.id])
        redirect(action: "show", id: customsOperationsInstance.id)
    }

    def show() {
        def customsOperationsInstance = CustomsOperations.get(params.id)
        if (!customsOperationsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'customsOperations.label', default: 'CustomsOperations'), params.id])
            redirect(action: "list")
            return
        }

        [customsOperationsInstance: customsOperationsInstance]
    }

    def edit() {
        def customsOperationsInstance = CustomsOperations.get(params.id)
        if (!customsOperationsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'customsOperations.label', default: 'CustomsOperations'), params.id])
            redirect(action: "list")
            return
        }

        [customsOperationsInstance: customsOperationsInstance]
    }

    def update() {
        def customsOperationsInstance = CustomsOperations.get(params.id)
        if (!customsOperationsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'customsOperations.label', default: 'CustomsOperations'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (customsOperationsInstance.version > version) {
                customsOperationsInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'customsOperations.label', default: 'CustomsOperations')] as Object[],
                        "Another user has updated this CustomsOperations while you were editing")
                render(view: "edit", model: [customsOperationsInstance: customsOperationsInstance])
                return
            }
        }

        customsOperationsInstance.properties = params

        if (!customsOperationsInstance.save(flush: true)) {
            render(view: "edit", model: [customsOperationsInstance: customsOperationsInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'customsOperations.label', default: 'CustomsOperations'), customsOperationsInstance.id])
        redirect(action: "show", id: customsOperationsInstance.id)
    }

    def delete() {
        def customsOperationsInstance = CustomsOperations.get(params.id)
        if (!customsOperationsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'customsOperations.label', default: 'CustomsOperations'), params.id])
            redirect(action: "list")
            return
        }

        try {
            customsOperationsInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'customsOperations.label', default: 'CustomsOperations'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'customsOperations.label', default: 'CustomsOperations'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
