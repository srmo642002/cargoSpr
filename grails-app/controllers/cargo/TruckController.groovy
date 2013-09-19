package cargo

import grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException

@Secured("Admin,Create BasicInfo")
class TruckController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
    }

    def create() {
        [truckInstance: new Truck(params)]
    }

    def save() {
        def truckInstance = new Truck(params)
        if (!truckInstance.save(flush: true)) {
            render(view: "create", model: [truckInstance: truckInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'truck.label', default: 'Truck'), truckInstance.id])
        redirect(action: "show", id: truckInstance.id)
    }

    def show() {
        def truckInstance = Truck.get(params.id)
        if (!truckInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'truck.label', default: 'Truck'), params.id])
            redirect(action: "list")
            return
        }

        [truckInstance: truckInstance]
    }

    def edit() {
        def truckInstance = Truck.get(params.id)
        if (!truckInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'truck.label', default: 'Truck'), params.id])
            redirect(action: "list")
            return
        }

        [truckInstance: truckInstance]
    }

    def update() {
        def truckInstance = Truck.get(params.id)
        if (!truckInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'truck.label', default: 'Truck'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (truckInstance.version > version) {
                truckInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'truck.label', default: 'Truck')] as Object[],
                        "Another user has updated this Truck while you were editing")
                render(view: "edit", model: [truckInstance: truckInstance])
                return
            }
        }

        truckInstance.properties = params

        if (!truckInstance.save(flush: true)) {
            render(view: "edit", model: [truckInstance: truckInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'truck.label', default: 'Truck'), truckInstance.id])
        redirect(action: "show", id: truckInstance.id)
    }

    def delete() {
        def truckInstance = Truck.get(params.id)
        if (!truckInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'truck.label', default: 'Truck'), params.id])
            redirect(action: "list")
            return
        }

        try {
            truckInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'truck.label', default: 'Truck'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'truck.label', default: 'Truck'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
