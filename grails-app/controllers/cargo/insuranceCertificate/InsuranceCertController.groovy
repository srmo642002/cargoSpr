package cargo.insuranceCertificate

import grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException

@Secured("Admin,Secretary")
class InsuranceCertController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {

    }

    def create() {
        [insuranceCertInstance: new InsuranceCert(params)]
    }

    def save() {
        def insuranceCertInstance = new InsuranceCert(params)
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
