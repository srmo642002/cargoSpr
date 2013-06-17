package cargo.insuranceCertificate



import org.junit.*
import grails.test.mixin.*

@TestFor(AssignedInsuranceCertController)
@Mock(AssignedInsuranceCert)
class AssignedInsuranceCertControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/assignedInsuranceCert/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.assignedInsuranceCertInstanceList.size() == 0
        assert model.assignedInsuranceCertInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.assignedInsuranceCertInstance != null
    }

    void testSave() {
        controller.save()

        assert model.assignedInsuranceCertInstance != null
        assert view == '/assignedInsuranceCert/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/assignedInsuranceCert/show/1'
        assert controller.flash.message != null
        assert AssignedInsuranceCert.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/assignedInsuranceCert/list'


        populateValidParams(params)
        def assignedInsuranceCert = new AssignedInsuranceCert(params)

        assert assignedInsuranceCert.save() != null

        params.id = assignedInsuranceCert.id

        def model = controller.show()

        assert model.assignedInsuranceCertInstance == assignedInsuranceCert
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/assignedInsuranceCert/list'


        populateValidParams(params)
        def assignedInsuranceCert = new AssignedInsuranceCert(params)

        assert assignedInsuranceCert.save() != null

        params.id = assignedInsuranceCert.id

        def model = controller.edit()

        assert model.assignedInsuranceCertInstance == assignedInsuranceCert
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/assignedInsuranceCert/list'

        response.reset()


        populateValidParams(params)
        def assignedInsuranceCert = new AssignedInsuranceCert(params)

        assert assignedInsuranceCert.save() != null

        // test invalid parameters in update
        params.id = assignedInsuranceCert.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/assignedInsuranceCert/edit"
        assert model.assignedInsuranceCertInstance != null

        assignedInsuranceCert.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/assignedInsuranceCert/show/$assignedInsuranceCert.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        assignedInsuranceCert.clearErrors()

        populateValidParams(params)
        params.id = assignedInsuranceCert.id
        params.version = -1
        controller.update()

        assert view == "/assignedInsuranceCert/edit"
        assert model.assignedInsuranceCertInstance != null
        assert model.assignedInsuranceCertInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/assignedInsuranceCert/list'

        response.reset()

        populateValidParams(params)
        def assignedInsuranceCert = new AssignedInsuranceCert(params)

        assert assignedInsuranceCert.save() != null
        assert AssignedInsuranceCert.count() == 1

        params.id = assignedInsuranceCert.id

        controller.delete()

        assert AssignedInsuranceCert.count() == 0
        assert AssignedInsuranceCert.get(assignedInsuranceCert.id) == null
        assert response.redirectedUrl == '/assignedInsuranceCert/list'
    }
}
