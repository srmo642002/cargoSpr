package cargo

import grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException

@Secured("Admin,Create BasicInfo")
class DriverController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
    }

    def create() {
        [driverInstance: new Driver(params)]
    }

    def save() {
        def driverInstance = new Driver(params)
        if (!driverInstance.save(flush: true)) {
            render(view: "create", model: [driverInstance: driverInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'driver.label', default: 'Driver'), driverInstance.id])
        redirect(action: "show", id: driverInstance.id)
    }

    def show() {
        def driverInstance = Driver.get(params.id)
        if (!driverInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'driver.label', default: 'Driver'), params.id])
            redirect(action: "list")
            return
        }

        [driverInstance: driverInstance]
    }

    def edit() {
        def driverInstance = Driver.get(params.id)
        if (!driverInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'driver.label', default: 'Driver'), params.id])
            redirect(action: "list")
            return
        }

        [driverInstance: driverInstance]
    }

    def update() {
        def driverInstance = Driver.get(params.id)
        if (!driverInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'driver.label', default: 'Driver'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (driverInstance.version > version) {
                driverInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'driver.label', default: 'Driver')] as Object[],
                        "Another user has updated this Driver while you were editing")
                render(view: "edit", model: [driverInstance: driverInstance])
                return
            }
        }

        driverInstance.properties = params

        if (!driverInstance.save(flush: true)) {
            render(view: "edit", model: [driverInstance: driverInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'driver.label', default: 'Driver'), driverInstance.id])
        redirect(action: "show", id: driverInstance.id)
    }

    def delete() {
        def driverInstance = Driver.get(params.id)
        if (!driverInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'driver.label', default: 'Driver'), params.id])
            redirect(action: "list")
            return
        }

        try {
            driverInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'driver.label', default: 'Driver'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'driver.label', default: 'Driver'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
