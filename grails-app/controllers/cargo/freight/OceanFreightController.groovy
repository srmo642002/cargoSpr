package cargo.freight

import cargo.Role
import org.springframework.dao.DataIntegrityViolationException

class OceanFreightController {
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
        [oceanFreightInstance: new OceanFreight(params)]
    }

    def saveOceanFreight() {
        def oceanFreight
        if (params.id) {
            oceanFreight = OceanFreight.get(params.id)
            oceanFreight.properties = params
        } else {
            oceanFreight = new OceanFreight(params)
            oceanFreight.user = principalService.getUser()
        }
        oceanFreight.save()
        render 0;
    }


    def save() {
        def oceanFreightInstance = new OceanFreight(params)
        if (!oceanFreightInstance.save(flush: true)) {
            render(view: "create", model: [oceanFreightInstance: oceanFreightInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'oceanFreight.label', default: 'OceanFreight'), oceanFreightInstance.id])
        redirect(action: "show", id: oceanFreightInstance.id)
    }

    def show() {
        def oceanFreightInstance = OceanFreight.get(params.id)
        if (!oceanFreightInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'oceanFreight.label', default: 'OceanFreight'), params.id])
            redirect(action: "list")
            return
        }

        [oceanFreightInstance: oceanFreightInstance]
    }

    def edit() {
        def oceanFreightInstance = OceanFreight.get(params.id)
        if (!oceanFreightInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'oceanFreight.label', default: 'OceanFreight'), params.id])
            redirect(action: "list")
            return
        }

        [oceanFreightInstance: oceanFreightInstance]
    }

    def update() {
        def oceanFreightInstance = OceanFreight.get(params.id)
        if (!oceanFreightInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'oceanFreight.label', default: 'OceanFreight'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (oceanFreightInstance.version > version) {
                oceanFreightInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'oceanFreight.label', default: 'OceanFreight')] as Object[],
                        "Another user has updated this OceanFreight while you were editing")
                render(view: "edit", model: [oceanFreightInstance: oceanFreightInstance])
                return
            }
        }

        oceanFreightInstance.properties = params

        if (!oceanFreightInstance.save(flush: true)) {
            render(view: "edit", model: [oceanFreightInstance: oceanFreightInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'oceanFreight.label', default: 'OceanFreight'), oceanFreightInstance.id])
        redirect(action: "show", id: oceanFreightInstance.id)
    }

    def delete() {
        def oceanFreightInstance = OceanFreight.get(params.id)
        if (!oceanFreightInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'oceanFreight.label', default: 'OceanFreight'), params.id])
            redirect(action: "list")
            return
        }

        try {
            oceanFreightInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'oceanFreight.label', default: 'OceanFreight'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'oceanFreight.label', default: 'OceanFreight'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
