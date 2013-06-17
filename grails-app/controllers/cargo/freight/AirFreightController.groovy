package cargo.freight

import cargo.Role
import org.springframework.dao.DataIntegrityViolationException

class AirFreightController {

    def principalService
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def user = principalService.getUser()
        def userid = user.id
        def adminRole = Role.findByAuthority("Admin")
        def view = "list"
        if (user.authorities.contains(adminRole))
            view = "adminList"
        render(view: view, model: [userid: userid])
    }

    def create() {
        [airFreightInstance: new AirFreight(params)]
    }

    def saveAirFreight() {
        def airFreight
        if (params.id) {
            airFreight = AirFreight.get(params.id)
            airFreight.properties = params
        } else {
            airFreight = new AirFreight(params)
            airFreight.user = principalService.getUser()
        }
        airFreight.save()
        render 0;
    }


    def save() {
        def airFreightInstance = new AirFreight(params)
        if (!airFreightInstance.save(flush: true)) {
            render(view: "create", model: [airFreightInstance: airFreightInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'airFreight.label', default: 'AirFreight'), airFreightInstance.id])
        redirect(action: "show", id: airFreightInstance.id)
    }

    def show() {
        def airFreightInstance = AirFreight.get(params.id)
        if (!airFreightInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'airFreight.label', default: 'AirFreight'), params.id])
            redirect(action: "list")
            return
        }

        [airFreightInstance: airFreightInstance]
    }

    def edit() {
        def airFreightInstance = AirFreight.get(params.id)
        if (!airFreightInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'airFreight.label', default: 'AirFreight'), params.id])
            redirect(action: "list")
            return
        }

        [airFreightInstance: airFreightInstance]
    }

    def update() {
        def airFreightInstance = AirFreight.get(params.id)
        if (!airFreightInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'airFreight.label', default: 'AirFreight'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (airFreightInstance.version > version) {
                airFreightInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'airFreight.label', default: 'AirFreight')] as Object[],
                        "Another user has updated this AirFreight while you were editing")
                render(view: "edit", model: [airFreightInstance: airFreightInstance])
                return
            }
        }

        airFreightInstance.properties = params

        if (!airFreightInstance.save(flush: true)) {
            render(view: "edit", model: [airFreightInstance: airFreightInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'airFreight.label', default: 'AirFreight'), airFreightInstance.id])
        redirect(action: "show", id: airFreightInstance.id)
    }

    def delete() {
        def airFreightInstance = AirFreight.get(params.id)
        if (!airFreightInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'airFreight.label', default: 'AirFreight'), params.id])
            redirect(action: "list")
            return
        }

        try {
            airFreightInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'airFreight.label', default: 'AirFreight'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'airFreight.label', default: 'AirFreight'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
