package cargo.cargoItem

import cargo.Role
import grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException

@Secured("Admin,Head Shipment Creator,Shipment Creator")
class OceanCargoItemController {
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
        [oceanCargoItemInstance: new OceanCargoItem(params)]
    }

    def save() {
        def oceanCargoItemInstance = new OceanCargoItem(params)
        if (!oceanCargoItemInstance.save(flush: true)) {
            render(view: "create", model: [oceanCargoItemInstance: oceanCargoItemInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'oceanCargoItem.label', default: 'OceanCargoItem'), oceanCargoItemInstance.id])
        redirect(action: "show", id: oceanCargoItemInstance.id)
    }

    def show() {
        def oceanCargoItemInstance = OceanCargoItem.get(params.id)
        if (!oceanCargoItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'oceanCargoItem.label', default: 'OceanCargoItem'), params.id])
            redirect(action: "list")
            return
        }

        [oceanCargoItemInstance: oceanCargoItemInstance]
    }

    def edit() {
        def oceanCargoItemInstance = OceanCargoItem.get(params.id)
        if (!oceanCargoItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'oceanCargoItem.label', default: 'OceanCargoItem'), params.id])
            redirect(action: "list")
            return
        }

        [oceanCargoItemInstance: oceanCargoItemInstance]
    }

    def update() {
        def oceanCargoItemInstance = OceanCargoItem.get(params.id)
        if (!oceanCargoItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'oceanCargoItem.label', default: 'OceanCargoItem'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (oceanCargoItemInstance.version > version) {
                oceanCargoItemInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'oceanCargoItem.label', default: 'OceanCargoItem')] as Object[],
                        "Another user has updated this OceanCargoItem while you were editing")
                render(view: "edit", model: [oceanCargoItemInstance: oceanCargoItemInstance])
                return
            }
        }

        oceanCargoItemInstance.properties = params

        if (!oceanCargoItemInstance.save(flush: true)) {
            render(view: "edit", model: [oceanCargoItemInstance: oceanCargoItemInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'oceanCargoItem.label', default: 'OceanCargoItem'), oceanCargoItemInstance.id])
        redirect(action: "show", id: oceanCargoItemInstance.id)
    }

    def delete() {
        def oceanCargoItemInstance = OceanCargoItem.get(params.id)
        if (!oceanCargoItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'oceanCargoItem.label', default: 'OceanCargoItem'), params.id])
            redirect(action: "list")
            return
        }

        try {
            oceanCargoItemInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'oceanCargoItem.label', default: 'OceanCargoItem'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'oceanCargoItem.label', default: 'OceanCargoItem'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
