package cargo.freight

import cargo.Role
import org.springframework.dao.DataIntegrityViolationException

class RailFreightController {

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
        [railFreightInstance: new RailFreight(params)]
    }

    def saveRailFreight() {
        def railFreight
        if (params.id) {
            railFreight = RailFreight.get(params.id)
            railFreight.properties = params
        } else {
            railFreight = new RailFreight(params)
            railFreight.user = principalService.getUser()
        }
        railFreight.save()
        render 0;
    }

    def save() {
        def railFreightInstance = new RailFreight(params)
        if (!railFreightInstance.save(flush: true)) {
            render(view: "create", model: [railFreightInstance: railFreightInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'railFreight.label', default: 'RailFreight'), railFreightInstance.id])
        redirect(action: "show", id: railFreightInstance.id)
    }

    def show() {
        def railFreightInstance = RailFreight.get(params.id)
        if (!railFreightInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'railFreight.label', default: 'RailFreight'), params.id])
            redirect(action: "list")
            return
        }

        [railFreightInstance: railFreightInstance]
    }

    def edit() {
        def railFreightInstance = RailFreight.get(params.id)
        if (!railFreightInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'railFreight.label', default: 'RailFreight'), params.id])
            redirect(action: "list")
            return
        }

        [railFreightInstance: railFreightInstance]
    }

    def update() {
        def railFreightInstance = RailFreight.get(params.id)
        if (!railFreightInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'railFreight.label', default: 'RailFreight'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (railFreightInstance.version > version) {
                railFreightInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'railFreight.label', default: 'RailFreight')] as Object[],
                        "Another user has updated this RailFreight while you were editing")
                render(view: "edit", model: [railFreightInstance: railFreightInstance])
                return
            }
        }

        railFreightInstance.properties = params

        if (!railFreightInstance.save(flush: true)) {
            render(view: "edit", model: [railFreightInstance: railFreightInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'railFreight.label', default: 'RailFreight'), railFreightInstance.id])
        redirect(action: "show", id: railFreightInstance.id)
    }

    def delete() {
        def railFreightInstance = RailFreight.get(params.id)
        if (!railFreightInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'railFreight.label', default: 'RailFreight'), params.id])
            redirect(action: "list")
            return
        }

        try {
            railFreightInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'railFreight.label', default: 'RailFreight'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'railFreight.label', default: 'RailFreight'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
