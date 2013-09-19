package cargo

import org.springframework.dao.DataIntegrityViolationException
import rapidgrails.CompositeHelper

class SeaCostEstimationController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [seaCostEstimationInstanceList: SeaCostEstimation.list(params), seaCostEstimationInstanceTotal: SeaCostEstimation.count()]
    }

    def search() {
        render(view: "search")
    }

    def getResults() {

        render(view: "result",params: params.search)
    }


    def create() {
        [seaCostEstimationInstance: new SeaCostEstimation(params)]
    }

    def saveCost() {

        def seaCostEstimation = new SeaCostEstimation(params)
        seaCostEstimation.deprecated = false
        def oldSeaCostEstimation = SeaCostEstimation.findByPortOfLoadingAndDeprecated( seaCostEstimation.portOfLoading,false)
        if (oldSeaCostEstimation) {

            oldSeaCostEstimation.deprecated = true
            oldSeaCostEstimation.save()


        }
        if (seaCostEstimation.hasProperty("composites")) {
            def composites = seaCostEstimation.composites
            composites.each {composit ->
                params.findAll {it.key.startsWith(composit) && it.value instanceof Map}
                .each {
                    def methodName = composit[0].toUpperCase() + composit.substring(1);
                    def compositParams = it.value
                    cargo.ContainerSeaBulkEstimation compositInstance
                    if (compositParams.id) {
                        compositInstance = seaCostEstimation."${composit}".find {(compositParams.id as Long) == it.id}
                        compositInstance.properties=compositParams
                    }
                    else {
                        compositInstance = new cargo.ContainerSeaBulkEstimation(compositParams)

//                        seaCostEstimation."addTo${methodName}"(compositInstance)
                    }
//                    bindData(compositInstance, compositParams)
                }
            }
        }

        new CompositeHelper().bindComposites(seaCostEstimation, params)
        seaCostEstimation.save()
        render 0;
    }


    def save() {
        def seaCostEstimationInstance = new SeaCostEstimation(params)
        if (!seaCostEstimationInstance.save(flush: true)) {
            render(view: "create", model: [seaCostEstimationInstance: seaCostEstimationInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'seaCostEstimation.label', default: 'SeaCostEstimation'), seaCostEstimationInstance.id])
        redirect(action: "show", id: seaCostEstimationInstance.id)
    }

    def show() {
        def seaCostEstimationInstance = SeaCostEstimation.get(params.id)
        if (!seaCostEstimationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'seaCostEstimation.label', default: 'SeaCostEstimation'), params.id])
            redirect(action: "list")
            return
        }

        [seaCostEstimationInstance: seaCostEstimationInstance]
    }

    def edit() {
        def seaCostEstimationInstance = SeaCostEstimation.get(params.id)
        if (!seaCostEstimationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'seaCostEstimation.label', default: 'SeaCostEstimation'), params.id])
            redirect(action: "list")
            return
        }

        [seaCostEstimationInstance: seaCostEstimationInstance]
    }

    def update() {
        def seaCostEstimationInstance = SeaCostEstimation.get(params.id)
        if (!seaCostEstimationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'seaCostEstimation.label', default: 'SeaCostEstimation'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (seaCostEstimationInstance.version > version) {
                seaCostEstimationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'seaCostEstimation.label', default: 'SeaCostEstimation')] as Object[],
                        "Another user has updated this SeaCostEstimation while you were editing")
                render(view: "edit", model: [seaCostEstimationInstance: seaCostEstimationInstance])
                return
            }
        }

        seaCostEstimationInstance.properties = params

        if (!seaCostEstimationInstance.save(flush: true)) {
            render(view: "edit", model: [seaCostEstimationInstance: seaCostEstimationInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'seaCostEstimation.label', default: 'SeaCostEstimation'), seaCostEstimationInstance.id])
        redirect(action: "show", id: seaCostEstimationInstance.id)
    }

    def delete() {
        def seaCostEstimationInstance = SeaCostEstimation.get(params.id)
        if (!seaCostEstimationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'seaCostEstimation.label', default: 'SeaCostEstimation'), params.id])
            redirect(action: "list")
            return
        }

        try {
            seaCostEstimationInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'seaCostEstimation.label', default: 'SeaCostEstimation'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'seaCostEstimation.label', default: 'SeaCostEstimation'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
