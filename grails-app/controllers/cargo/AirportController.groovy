package cargo

import org.springframework.dao.DataIntegrityViolationException

class AirportController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [airportInstanceList: Airport.list(params), airportInstanceTotal: Airport.count()]
    }

    def create() {
        [airportInstance: new Airport(params)]
    }

    def save() {
        def airportInstance = new Airport(params)
        if (!airportInstance.save(flush: true)) {
            render(view: "create", model: [airportInstance: airportInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'airport.label', default: 'Airport'), airportInstance.id])
        redirect(action: "show", id: airportInstance.id)
    }

    def show() {
        def airportInstance = Airport.get(params.id)
        if (!airportInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'airport.label', default: 'Airport'), params.id])
            redirect(action: "list")
            return
        }

        [airportInstance: airportInstance]
    }

    def edit() {
        def airportInstance = Airport.get(params.id)
        if (!airportInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'airport.label', default: 'Airport'), params.id])
            redirect(action: "list")
            return
        }

        [airportInstance: airportInstance]
    }

    def update() {
        def airportInstance = Airport.get(params.id)
        if (!airportInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'airport.label', default: 'Airport'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (airportInstance.version > version) {
                airportInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'airport.label', default: 'Airport')] as Object[],
                        "Another user has updated this Airport while you were editing")
                render(view: "edit", model: [airportInstance: airportInstance])
                return
            }
        }

        airportInstance.properties = params

        if (!airportInstance.save(flush: true)) {
            render(view: "edit", model: [airportInstance: airportInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'airport.label', default: 'Airport'), airportInstance.id])
        redirect(action: "show", id: airportInstance.id)
    }

    def delete() {
        def airportInstance = Airport.get(params.id)
        if (!airportInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'airport.label', default: 'Airport'), params.id])
            redirect(action: "list")
            return
        }

        try {
            airportInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'airport.label', default: 'Airport'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'airport.label', default: 'Airport'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
