package cargo.cargoItem

import cargo.Role
import grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException

@Secured("Admin,Head Shipment Creator,Shipment Creator")
class RailCargoItemController {

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
        [railCargoItemInstance: new RailCargoItem(params)]
    }

    def save() {
        def railCargoItemInstance = new RailCargoItem(params)
        if (!railCargoItemInstance.save(flush: true)) {
            render(view: "create", model: [railCargoItemInstance: railCargoItemInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'railCargoItem.label', default: 'RailCargoItem'), railCargoItemInstance.id])
        redirect(action: "show", id: railCargoItemInstance.id)
    }

    def show() {
        def railCargoItemInstance = RailCargoItem.get(params.id)
        if (!railCargoItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'railCargoItem.label', default: 'RailCargoItem'), params.id])
            redirect(action: "list")
            return
        }

        [railCargoItemInstance: railCargoItemInstance]
    }

    def edit() {
        def railCargoItemInstance = RailCargoItem.get(params.id)
        if (!railCargoItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'railCargoItem.label', default: 'RailCargoItem'), params.id])
            redirect(action: "list")
            return
        }

        [railCargoItemInstance: railCargoItemInstance]
    }

    def update() {
        def railCargoItemInstance = RailCargoItem.get(params.id)
        if (!railCargoItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'railCargoItem.label', default: 'RailCargoItem'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (railCargoItemInstance.version > version) {
                railCargoItemInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'railCargoItem.label', default: 'RailCargoItem')] as Object[],
                        "Another user has updated this RailCargoItem while you were editing")
                render(view: "edit", model: [railCargoItemInstance: railCargoItemInstance])
                return
            }
        }

        railCargoItemInstance.properties = params

        if (!railCargoItemInstance.save(flush: true)) {
            render(view: "edit", model: [railCargoItemInstance: railCargoItemInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'railCargoItem.label', default: 'RailCargoItem'), railCargoItemInstance.id])
        redirect(action: "show", id: railCargoItemInstance.id)
    }

    def delete() {
        def railCargoItemInstance = RailCargoItem.get(params.id)
        if (!railCargoItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'railCargoItem.label', default: 'RailCargoItem'), params.id])
            redirect(action: "list")
            return
        }

        try {
            railCargoItemInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'railCargoItem.label', default: 'RailCargoItem'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'railCargoItem.label', default: 'RailCargoItem'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
