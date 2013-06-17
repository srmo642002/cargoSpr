package cargo.insuranceCertificate

import grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException

@Secured("Admin,Secretary")
class AssignedInsuranceCertController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {

    }

    def create() {
        [assignedInsuranceCertInstance: new AssignedInsuranceCert(params)]
    }

    def saveAssigned(){

        def assignedInsuranceCert

            assignedInsuranceCert = new AssignedInsuranceCert(params)
        if (assignedInsuranceCert.serialNumFrom==assignedInsuranceCert.insuranceCert.serialNumFrom && assignedInsuranceCert.serialNumTo <= assignedInsuranceCert.insuranceCert.serialNumTo){
            if (assignedInsuranceCert.save()) {
            def insuranceCert = assignedInsuranceCert.insuranceCert
            insuranceCert.serialNumFrom = (assignedInsuranceCert.serialNumTo + 1)
            insuranceCert.totalCount = (insuranceCert.totalCount - assignedInsuranceCert.totalCount )
            insuranceCert.save()
        }
        }
            render(0)

    }

    def save() {
        def assignedInsuranceCertInstance = new AssignedInsuranceCert(params)
        if (!assignedInsuranceCertInstance.save(flush: true)) {
            render(view: "create", model: [assignedInsuranceCertInstance: assignedInsuranceCertInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'assignedInsuranceCert.label', default: 'AssignedInsuranceCert'), assignedInsuranceCertInstance.id])
        redirect(action: "show", id: assignedInsuranceCertInstance.id)
    }

    def show() {
        def assignedInsuranceCertInstance = AssignedInsuranceCert.get(params.id)
        if (!assignedInsuranceCertInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'assignedInsuranceCert.label', default: 'AssignedInsuranceCert'), params.id])
            redirect(action: "list")
            return
        }

        [assignedInsuranceCertInstance: assignedInsuranceCertInstance]
    }

    def edit() {
        def assignedInsuranceCertInstance = AssignedInsuranceCert.get(params.id)
        if (!assignedInsuranceCertInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'assignedInsuranceCert.label', default: 'AssignedInsuranceCert'), params.id])
            redirect(action: "list")
            return
        }

        [assignedInsuranceCertInstance: assignedInsuranceCertInstance]
    }

    def update() {
        def assignedInsuranceCertInstance = AssignedInsuranceCert.get(params.id)
        if (!assignedInsuranceCertInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'assignedInsuranceCert.label', default: 'AssignedInsuranceCert'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (assignedInsuranceCertInstance.version > version) {
                assignedInsuranceCertInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'assignedInsuranceCert.label', default: 'AssignedInsuranceCert')] as Object[],
                        "Another user has updated this AssignedInsuranceCert while you were editing")
                render(view: "edit", model: [assignedInsuranceCertInstance: assignedInsuranceCertInstance])
                return
            }
        }

        assignedInsuranceCertInstance.properties = params

        if (!assignedInsuranceCertInstance.save(flush: true)) {
            render(view: "edit", model: [assignedInsuranceCertInstance: assignedInsuranceCertInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'assignedInsuranceCert.label', default: 'AssignedInsuranceCert'), assignedInsuranceCertInstance.id])
        redirect(action: "show", id: assignedInsuranceCertInstance.id)
    }

    def delete() {
        def assignedInsuranceCertInstance = AssignedInsuranceCert.get(params.id)
        if (!assignedInsuranceCertInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'assignedInsuranceCert.label', default: 'AssignedInsuranceCert'), params.id])
            redirect(action: "list")
            return
        }

        try {
            assignedInsuranceCertInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'assignedInsuranceCert.label', default: 'AssignedInsuranceCert'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'assignedInsuranceCert.label', default: 'AssignedInsuranceCert'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
