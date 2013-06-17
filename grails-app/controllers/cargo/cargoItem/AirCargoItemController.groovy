package cargo.cargoItem

import cargo.Role
import grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException

@Secured("Admin,Head Shipment Creator,Shipment Creator")
class AirCargoItemController {

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
        [airCargoItemInstance: new AirCargoItem(params)]
    }

    def save() {
        def airCargoItemInstance = new AirCargoItem(params)
        if (!airCargoItemInstance.save(flush: true)) {
            render(view: "create", model: [airCargoItemInstance: airCargoItemInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'airCargoItem.label', default: 'AirCargoItem'), airCargoItemInstance.id])
        redirect(action: "show", id: airCargoItemInstance.id)
    }

    def show() {
        def airCargoItemInstance = AirCargoItem.get(params.id)
        if (!airCargoItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'airCargoItem.label', default: 'AirCargoItem'), params.id])
            redirect(action: "list")
            return
        }

        [airCargoItemInstance: airCargoItemInstance]
    }

    def edit() {
        def airCargoItemInstance = AirCargoItem.get(params.id)
        if (!airCargoItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'airCargoItem.label', default: 'AirCargoItem'), params.id])
            redirect(action: "list")
            return
        }

        [airCargoItemInstance: airCargoItemInstance]
    }

    def update() {
        def airCargoItemInstance = AirCargoItem.get(params.id)
        if (!airCargoItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'airCargoItem.label', default: 'AirCargoItem'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (airCargoItemInstance.version > version) {
                airCargoItemInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'airCargoItem.label', default: 'AirCargoItem')] as Object[],
                        "Another user has updated this AirCargoItem while you were editing")
                render(view: "edit", model: [airCargoItemInstance: airCargoItemInstance])
                return
            }
        }

        airCargoItemInstance.properties = params

        if (!airCargoItemInstance.save(flush: true)) {
            render(view: "edit", model: [airCargoItemInstance: airCargoItemInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'airCargoItem.label', default: 'AirCargoItem'), airCargoItemInstance.id])
        redirect(action: "show", id: airCargoItemInstance.id)
    }

    def delete() {
        def airCargoItemInstance = AirCargoItem.get(params.id)
        if (!airCargoItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'airCargoItem.label', default: 'AirCargoItem'), params.id])
            redirect(action: "list")
            return
        }

        try {
            airCargoItemInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'airCargoItem.label', default: 'AirCargoItem'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'airCargoItem.label', default: 'AirCargoItem'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
