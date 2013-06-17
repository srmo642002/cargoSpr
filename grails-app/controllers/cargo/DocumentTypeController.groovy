package cargo

import grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException


@Secured("Admin,Head Shipment Creator,Shipment Creator")
class DocumentTypeController {

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
        render(view: view, model: [userid: userid,user:user])


    }

    def create() {
        [documentTypeInstance: new DocumentType(params)]
    }

    def saveDocumentType() {
        def documentType
        if (params.id) {
            documentType = DocumentType.get(params.id)
            documentType.properties = params
        } else {
            documentType = new DocumentType(params)
            documentType.user = principalService.getUser()
        }
        documentType.save()
        render 0;
    }

    def save() {
        def documentTypeInstance = new DocumentType(params)
        if (!documentTypeInstance.save(flush: true)) {
            render(view: "create", model: [documentTypeInstance: documentTypeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'documentType.label', default: 'DocumentType'), documentTypeInstance.id])
        redirect(action: "show", id: documentTypeInstance.id)
    }

    def getDocument(){

            def content = DocumentType.get(params.id)
            response.setContentLength(content?.bytes?.length);
            response.setHeader("Content-Transfer-Encoding", "binary");
            response.setHeader("Content-disposition", "attachment;filename=${content?.fileName}")
            response.setContentType("application/force-download");
            response.outputStream << content?.bytes
            response.outputStream.flush()

    }


    def show() {
        def documentTypeInstance = DocumentType.get(params.id)
        if (!documentTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'documentType.label', default: 'DocumentType'), params.id])
            redirect(action: "list")
            return
        }

        [documentTypeInstance: documentTypeInstance]
    }

    def edit() {
        def documentTypeInstance = DocumentType.get(params.id)
        if (!documentTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'documentType.label', default: 'DocumentType'), params.id])
            redirect(action: "list")
            return
        }

        [documentTypeInstance: documentTypeInstance]
    }

    def update() {
        def documentTypeInstance = DocumentType.get(params.id)
        if (!documentTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'documentType.label', default: 'DocumentType'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (documentTypeInstance.version > version) {
                documentTypeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'documentType.label', default: 'DocumentType')] as Object[],
                        "Another user has updated this DocumentType while you were editing")
                render(view: "edit", model: [documentTypeInstance: documentTypeInstance])
                return
            }
        }

        documentTypeInstance.properties = params

        if (!documentTypeInstance.save(flush: true)) {
            render(view: "edit", model: [documentTypeInstance: documentTypeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'documentType.label', default: 'DocumentType'), documentTypeInstance.id])
        redirect(action: "show", id: documentTypeInstance.id)
    }

    def delete() {
        def documentTypeInstance = DocumentType.get(params.id)
        if (!documentTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'documentType.label', default: 'DocumentType'), params.id])
            redirect(action: "list")
            return
        }

        try {
            documentTypeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'documentType.label', default: 'DocumentType'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'documentType.label', default: 'DocumentType'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

}
