package cargo.insuranceCertificate

import org.springframework.dao.DataIntegrityViolationException

class InsuranceController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [insuranceInstanceList: Insurance.list(params), insuranceInstanceTotal: Insurance.count()]
    }

    def create() {
        [insuranceInstance: new Insurance(params)]
    }

    def save() {
        def insuranceInstance = new Insurance(params)
        if (!insuranceInstance.save(flush: true)) {
            render(view: "create", model: [insuranceInstance: insuranceInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'insurance.label', default: 'Insurance'), insuranceInstance.id])
        redirect(action: "show", id: insuranceInstance.id)
    }

    def show() {
        def insuranceInstance = Insurance.get(params.id)
        if (!insuranceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'insurance.label', default: 'Insurance'), params.id])
            redirect(action: "list")
            return
        }

        [insuranceInstance: insuranceInstance]
    }

    def edit() {
        def insuranceInstance = Insurance.get(params.id)
        if (!insuranceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'insurance.label', default: 'Insurance'), params.id])
            redirect(action: "list")
            return
        }

        [insuranceInstance: insuranceInstance]
    }

    def update() {
        def insuranceInstance = Insurance.get(params.id)
        if (!insuranceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'insurance.label', default: 'Insurance'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (insuranceInstance.version > version) {
                insuranceInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'insurance.label', default: 'Insurance')] as Object[],
                        "Another user has updated this Insurance while you were editing")
                render(view: "edit", model: [insuranceInstance: insuranceInstance])
                return
            }
        }

        insuranceInstance.properties = params

        if (!insuranceInstance.save(flush: true)) {
            render(view: "edit", model: [insuranceInstance: insuranceInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'insurance.label', default: 'Insurance'), insuranceInstance.id])
        redirect(action: "show", id: insuranceInstance.id)
    }

    def delete() {
        def insuranceInstance = Insurance.get(params.id)
        if (!insuranceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'insurance.label', default: 'Insurance'), params.id])
            redirect(action: "list")
            return
        }

        try {
            insuranceInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'insurance.label', default: 'Insurance'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'insurance.label', default: 'Insurance'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
