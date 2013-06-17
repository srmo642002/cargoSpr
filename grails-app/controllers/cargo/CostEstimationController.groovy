package cargo

import grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException

@Secured("Admin,Agent")
class CostEstimationController {

//    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [costEstimationInstanceList: CostEstimation.list(params), costEstimationInstanceTotal: CostEstimation.count()]
    }

    def search() {
        render(view: "search")
    }

    def getResults() {

        render(view: "result",params: params.search)
    }



    def create() {
        [costEstimationInstance: new CostEstimation(params)]
    }

    def saveCost() {

        def costEstimation = new CostEstimation(params)
        costEstimation.deprecated = false
        def oldCostEstimation = CostEstimation.findByDesCityAndDeprecated( costEstimation.desCity,false)
        if (oldCostEstimation) {

                oldCostEstimation.deprecated = true
                oldCostEstimation.save()


        }
        costEstimation.save()
        render 0;
    }




    def save() {
        def costEstimationInstance = new CostEstimation(params)
        if (!costEstimationInstance.save(flush: true)) {
            render(view: "create", model: [costEstimationInstance: costEstimationInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'costEstimation.label', default: 'CostEstimation'), costEstimationInstance.id])
        redirect(action: "show", id: costEstimationInstance.id)
    }

    def show() {
        def costEstimationInstance = CostEstimation.get(params.id)
        if (!costEstimationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'costEstimation.label', default: 'CostEstimation'), params.id])
            redirect(action: "list")
            return
        }

        [costEstimationInstance: costEstimationInstance]
    }

    def edit() {
        def costEstimationInstance = CostEstimation.get(params.id)
        if (!costEstimationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'costEstimation.label', default: 'CostEstimation'), params.id])
            redirect(action: "list")
            return
        }

        [costEstimationInstance: costEstimationInstance]
    }

    def update() {
        def costEstimationInstance = CostEstimation.get(params.id)
        if (!costEstimationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'costEstimation.label', default: 'CostEstimation'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (costEstimationInstance.version > version) {
                costEstimationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'costEstimation.label', default: 'CostEstimation')] as Object[],
                        "Another user has updated this CostEstimation while you were editing")
                render(view: "edit", model: [costEstimationInstance: costEstimationInstance])
                return
            }
        }

        costEstimationInstance.properties = params

        if (!costEstimationInstance.save(flush: true)) {
            render(view: "edit", model: [costEstimationInstance: costEstimationInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'costEstimation.label', default: 'CostEstimation'), costEstimationInstance.id])
        redirect(action: "show", id: costEstimationInstance.id)
    }

    def delete() {
        def costEstimationInstance = CostEstimation.get(params.id)
        if (!costEstimationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'costEstimation.label', default: 'CostEstimation'), params.id])
            redirect(action: "list")
            return
        }

        try {
            costEstimationInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'costEstimation.label', default: 'CostEstimation'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'costEstimation.label', default: 'CostEstimation'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

}
