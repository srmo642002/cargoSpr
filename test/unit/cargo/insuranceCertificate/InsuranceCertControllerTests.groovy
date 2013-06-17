package cargo.insuranceCertificate



import org.junit.*
import grails.test.mixin.*

@TestFor(InsuranceCertController)
@Mock(InsuranceCert)
class InsuranceCertControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/insuranceCert/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.insuranceCertInstanceList.size() == 0
        assert model.insuranceCertInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.insuranceCertInstance != null
    }

    void testSave() {
        controller.save()

        assert model.insuranceCertInstance != null
        assert view == '/insuranceCert/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/insuranceCert/show/1'
        assert controller.flash.message != null
        assert InsuranceCert.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/insuranceCert/list'


        populateValidParams(params)
        def insuranceCert = new InsuranceCert(params)

        assert insuranceCert.save() != null

        params.id = insuranceCert.id

        def model = controller.show()

        assert model.insuranceCertInstance == insuranceCert
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/insuranceCert/list'


        populateValidParams(params)
        def insuranceCert = new InsuranceCert(params)

        assert insuranceCert.save() != null

        params.id = insuranceCert.id

        def model = controller.edit()

        assert model.insuranceCertInstance == insuranceCert
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/insuranceCert/list'

        response.reset()


        populateValidParams(params)
        def insuranceCert = new InsuranceCert(params)

        assert insuranceCert.save() != null

        // test invalid parameters in update
        params.id = insuranceCert.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/insuranceCert/edit"
        assert model.insuranceCertInstance != null

        insuranceCert.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/insuranceCert/show/$insuranceCert.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        insuranceCert.clearErrors()

        populateValidParams(params)
        params.id = insuranceCert.id
        params.version = -1
        controller.update()

        assert view == "/insuranceCert/edit"
        assert model.insuranceCertInstance != null
        assert model.insuranceCertInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/insuranceCert/list'

        response.reset()

        populateValidParams(params)
        def insuranceCert = new InsuranceCert(params)

        assert insuranceCert.save() != null
        assert InsuranceCert.count() == 1

        params.id = insuranceCert.id

        controller.delete()

        assert InsuranceCert.count() == 0
        assert InsuranceCert.get(insuranceCert.id) == null
        assert response.redirectedUrl == '/insuranceCert/list'
    }
}
