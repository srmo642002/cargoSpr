package cargo

import grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException

@Secured("Admin,Create BasicInfo")
class ForwardingReferenceController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
    }

    def create() {
        [forwardingReferenceInstance: new ForwardingReference(params)]
    }

    def save() {
        def forwardingReferenceInstance = new ForwardingReference(params)
        if (!forwardingReferenceInstance.save(flush: true)) {
            render(view: "create", model: [forwardingReferenceInstance: forwardingReferenceInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'forwardingReference.label', default: 'ForwardingReference'), forwardingReferenceInstance.id])
        redirect(action: "show", id: forwardingReferenceInstance.id)
    }

    def show() {
        def forwardingReferenceInstance = ForwardingReference.get(params.id)
        if (!forwardingReferenceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'forwardingReference.label', default: 'ForwardingReference'), params.id])
            redirect(action: "list")
            return
        }

        [forwardingReferenceInstance: forwardingReferenceInstance]
    }

    def edit() {
        def forwardingReferenceInstance = ForwardingReference.get(params.id)
        if (!forwardingReferenceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'forwardingReference.label', default: 'ForwardingReference'), params.id])
            redirect(action: "list")
            return
        }

        [forwardingReferenceInstance: forwardingReferenceInstance]
    }

    def update() {
        def forwardingReferenceInstance = ForwardingReference.get(params.id)
        if (!forwardingReferenceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'forwardingReference.label', default: 'ForwardingReference'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (forwardingReferenceInstance.version > version) {
                forwardingReferenceInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'forwardingReference.label', default: 'ForwardingReference')] as Object[],
                        "Another user has updated this ForwardingReference while you were editing")
                render(view: "edit", model: [forwardingReferenceInstance: forwardingReferenceInstance])
                return
            }
        }

        forwardingReferenceInstance.properties = params

        if (!forwardingReferenceInstance.save(flush: true)) {
            render(view: "edit", model: [forwardingReferenceInstance: forwardingReferenceInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'forwardingReference.label', default: 'ForwardingReference'), forwardingReferenceInstance.id])
        redirect(action: "show", id: forwardingReferenceInstance.id)
    }

    def delete() {
        def forwardingReferenceInstance = ForwardingReference.get(params.id)
        if (!forwardingReferenceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'forwardingReference.label', default: 'ForwardingReference'), params.id])
            redirect(action: "list")
            return
        }

        try {
            forwardingReferenceInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'forwardingReference.label', default: 'ForwardingReference'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'forwardingReference.label', default: 'ForwardingReference'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
