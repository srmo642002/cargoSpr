package cargo.cargoItem

import cargo.Role
import grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException

@Secured("Admin,Head Shipment Creator,Shipment Creator")
class RoadCargoItemController {

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
        [roadCargoItemInstance: new RoadCargoItem(params)]
    }

    def save() {
        def roadCargoItemInstance = new RoadCargoItem(params)
        if (!roadCargoItemInstance.save(flush: true)) {
            render(view: "create", model: [roadCargoItemInstance: roadCargoItemInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'roadCargoItem.label', default: 'RoadCargoItem'), roadCargoItemInstance.id])
        redirect(action: "show", id: roadCargoItemInstance.id)
    }

    def show() {
        def roadCargoItemInstance = RoadCargoItem.get(params.id)
        if (!roadCargoItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'roadCargoItem.label', default: 'RoadCargoItem'), params.id])
            redirect(action: "list")
            return
        }

        [roadCargoItemInstance: roadCargoItemInstance]
    }

    def edit() {
        def roadCargoItemInstance = RoadCargoItem.get(params.id)
        if (!roadCargoItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'roadCargoItem.label', default: 'RoadCargoItem'), params.id])
            redirect(action: "list")
            return
        }

        [roadCargoItemInstance: roadCargoItemInstance]
    }

    def update() {
        def roadCargoItemInstance = RoadCargoItem.get(params.id)
        if (!roadCargoItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'roadCargoItem.label', default: 'RoadCargoItem'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (roadCargoItemInstance.version > version) {
                roadCargoItemInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'roadCargoItem.label', default: 'RoadCargoItem')] as Object[],
                        "Another user has updated this RoadCargoItem while you were editing")
                render(view: "edit", model: [roadCargoItemInstance: roadCargoItemInstance])
                return
            }
        }

        roadCargoItemInstance.properties = params

        if (!roadCargoItemInstance.save(flush: true)) {
            render(view: "edit", model: [roadCargoItemInstance: roadCargoItemInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'roadCargoItem.label', default: 'RoadCargoItem'), roadCargoItemInstance.id])
        redirect(action: "show", id: roadCargoItemInstance.id)
    }

    def delete() {
        def roadCargoItemInstance = RoadCargoItem.get(params.id)
        if (!roadCargoItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'roadCargoItem.label', default: 'RoadCargoItem'), params.id])
            redirect(action: "list")
            return
        }

        try {
            roadCargoItemInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'roadCargoItem.label', default: 'RoadCargoItem'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'roadCargoItem.label', default: 'RoadCargoItem'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
