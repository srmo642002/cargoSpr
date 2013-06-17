package cargo.cargoItem

import cargo.Role
import cargo.Shipment
import grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException

@Secured("Admin,Head Shipment Creator,Shipment Creator")
class CargoItemController {
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

    def getMenuList(){
        def user = principalService.getUser()
        def userid = user.id
        def adminRole = Role.findByAuthority("Admin")
        def view = "menuList"
        if (user.authorities.contains(adminRole))
            view = "adminMenuList"
            render(view: view, model: [userid: userid,user: user])


    }

    def create() {
        [cargoItemInstance: new CargoItem(params)]
    }

    def saveCargoItem() {
        def cargoItem
        if (params.id) {
            cargoItem = CargoItem.get(params.id)
            cargoItem.properties = params
        } else {
            cargoItem = new CargoItem(params)
            cargoItem.user = principalService.getUser()
        }
        cargoItem.save()
        render 0;
    }

    def save() {
        def cargoItemInstance = new CargoItem(params)
        if (!cargoItemInstance.save(flush: true)) {
            render(view: "create", model: [cargoItemInstance: cargoItemInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'cargoItem.label', default: 'CargoItem'), cargoItemInstance.id])
        redirect(action: "show", id: cargoItemInstance.id)
    }

    def show() {
        def cargoItemInstance = CargoItem.get(params.id)
        if (!cargoItemInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'cargoItem.label', default: 'CargoItem'), params.id])
            redirect(action: "list")
            return
        }

        [cargoItemInstance: cargoItemInstance]
    }

    def edit() {
        def cargoItemInstance = CargoItem.get(params.id)
        if (!cargoItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cargoItem.label', default: 'CargoItem'), params.id])
            redirect(action: "list")
            return
        }

        [cargoItemInstance: cargoItemInstance]
    }

    def update() {
        def cargoItemInstance = CargoItem.get(params.id)
        if (!cargoItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cargoItem.label', default: 'CargoItem'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (cargoItemInstance.version > version) {
                cargoItemInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'cargoItem.label', default: 'CargoItem')] as Object[],
                          "Another user has updated this CargoItem while you were editing")
                render(view: "edit", model: [cargoItemInstance: cargoItemInstance])
                return
            }
        }

        cargoItemInstance.properties = params

        if (!cargoItemInstance.save(flush: true)) {
            render(view: "edit", model: [cargoItemInstance: cargoItemInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'cargoItem.label', default: 'CargoItem'), cargoItemInstance.id])
        redirect(action: "show", id: cargoItemInstance.id)
    }

    def delete() {
        def cargoItemInstance = CargoItem.get(params.id)
        if (!cargoItemInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'cargoItem.label', default: 'CargoItem'), params.id])
            redirect(action: "list")
            return
        }

        try {
            cargoItemInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'cargoItem.label', default: 'CargoItem'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'cargoItem.label', default: 'CargoItem'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
