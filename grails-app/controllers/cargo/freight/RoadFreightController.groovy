package cargo.freight

import cargo.Role
import org.springframework.dao.DataIntegrityViolationException

class RoadFreightController {

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
        [roadFreightInstance: new RoadFreight(params)]
    }

    def saveRoadFreight() {
        def roadFreight
        if (params.id) {
            roadFreight = RoadFreight.get(params.id)
            roadFreight.properties = params
        } else {
            roadFreight = new RoadFreight(params)
            roadFreight.user = principalService.getUser()
        }
        roadFreight.save()
        render 0;
    }

    def save() {
        def roadFreightInstance = new RoadFreight(params)
        if (!roadFreightInstance.save(flush: true)) {
            render(view: "create", model: [roadFreightInstance: roadFreightInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'roadFreight.label', default: 'RoadFreight'), roadFreightInstance.id])
        redirect(action: "show", id: roadFreightInstance.id)
    }

    def show() {
        def roadFreightInstance = RoadFreight.get(params.id)
        if (!roadFreightInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'roadFreight.label', default: 'RoadFreight'), params.id])
            redirect(action: "list")
            return
        }

        [roadFreightInstance: roadFreightInstance]
    }

    def edit() {
        def roadFreightInstance = RoadFreight.get(params.id)
        if (!roadFreightInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'roadFreight.label', default: 'RoadFreight'), params.id])
            redirect(action: "list")
            return
        }

        [roadFreightInstance: roadFreightInstance]
    }

    def update() {
        def roadFreightInstance = RoadFreight.get(params.id)
        if (!roadFreightInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'roadFreight.label', default: 'RoadFreight'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (roadFreightInstance.version > version) {
                roadFreightInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'roadFreight.label', default: 'RoadFreight')] as Object[],
                        "Another user has updated this RoadFreight while you were editing")
                render(view: "edit", model: [roadFreightInstance: roadFreightInstance])
                return
            }
        }

        roadFreightInstance.properties = params

        if (!roadFreightInstance.save(flush: true)) {
            render(view: "edit", model: [roadFreightInstance: roadFreightInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'roadFreight.label', default: 'RoadFreight'), roadFreightInstance.id])
        redirect(action: "show", id: roadFreightInstance.id)
    }

    def delete() {
        def roadFreightInstance = RoadFreight.get(params.id)
        if (!roadFreightInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'roadFreight.label', default: 'RoadFreight'), params.id])
            redirect(action: "list")
            return
        }

        try {
            roadFreightInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'roadFreight.label', default: 'RoadFreight'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'roadFreight.label', default: 'RoadFreight'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
