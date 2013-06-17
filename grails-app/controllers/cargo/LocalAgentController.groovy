package cargo

import grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException

@Secured("Admin,BasicInfo Operator")
class LocalAgentController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [localAgentInstanceList: LocalAgent.list(params), localAgentInstanceTotal: LocalAgent.count()]
    }

    def create() {
        [localAgentInstance: new LocalAgent(params)]
    }

    def save() {
        def localAgentInstance = new LocalAgent(params)
        if (!localAgentInstance.save(flush: true)) {
            render(view: "create", model: [localAgentInstance: localAgentInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'localAgent.label', default: 'LocalAgent'), localAgentInstance.id])
        redirect(action: "show", id: localAgentInstance.id)
    }

    def show() {
        def localAgentInstance = LocalAgent.get(params.id)
        if (!localAgentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'localAgent.label', default: 'LocalAgent'), params.id])
            redirect(action: "list")
            return
        }

        [localAgentInstance: localAgentInstance]
    }

    def edit() {
        def localAgentInstance = LocalAgent.get(params.id)
        if (!localAgentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'localAgent.label', default: 'LocalAgent'), params.id])
            redirect(action: "list")
            return
        }

        [localAgentInstance: localAgentInstance]
    }

    def update() {
        def localAgentInstance = LocalAgent.get(params.id)
        if (!localAgentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'localAgent.label', default: 'LocalAgent'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (localAgentInstance.version > version) {
                localAgentInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'localAgent.label', default: 'LocalAgent')] as Object[],
                        "Another user has updated this LocalAgent while you were editing")
                render(view: "edit", model: [localAgentInstance: localAgentInstance])
                return
            }
        }

        localAgentInstance.properties = params

        if (!localAgentInstance.save(flush: true)) {
            render(view: "edit", model: [localAgentInstance: localAgentInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'localAgent.label', default: 'LocalAgent'), localAgentInstance.id])
        redirect(action: "show", id: localAgentInstance.id)
    }

    def delete() {
        def localAgentInstance = LocalAgent.get(params.id)
        if (!localAgentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'localAgent.label', default: 'LocalAgent'), params.id])
            redirect(action: "list")
            return
        }

        try {
            localAgentInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'localAgent.label', default: 'LocalAgent'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'localAgent.label', default: 'LocalAgent'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
