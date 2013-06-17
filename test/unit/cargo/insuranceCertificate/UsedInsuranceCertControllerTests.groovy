package cargo.insuranceCertificate



import org.junit.*
import grails.test.mixin.*

@TestFor(UsedInsuranceCertController)
@Mock(UsedInsuranceCert)
class UsedInsuranceCertControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/usedInsuranceCert/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.usedInsuranceCertInstanceList.size() == 0
        assert model.usedInsuranceCertInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.usedInsuranceCertInstance != null
    }

    void testSave() {
        controller.save()

        assert model.usedInsuranceCertInstance != null
        assert view == '/usedInsuranceCert/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/usedInsuranceCert/show/1'
        assert controller.flash.message != null
        assert UsedInsuranceCert.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/usedInsuranceCert/list'


        populateValidParams(params)
        def usedInsuranceCert = new UsedInsuranceCert(params)

        assert usedInsuranceCert.save() != null

        params.id = usedInsuranceCert.id

        def model = controller.show()

        assert model.usedInsuranceCertInstance == usedInsuranceCert
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/usedInsuranceCert/list'


        populateValidParams(params)
        def usedInsuranceCert = new UsedInsuranceCert(params)

        assert usedInsuranceCert.save() != null

        params.id = usedInsuranceCert.id

        def model = controller.edit()

        assert model.usedInsuranceCertInstance == usedInsuranceCert
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/usedInsuranceCert/list'

        response.reset()


        populateValidParams(params)
        def usedInsuranceCert = new UsedInsuranceCert(params)

        assert usedInsuranceCert.save() != null

        // test invalid parameters in update
        params.id = usedInsuranceCert.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/usedInsuranceCert/edit"
        assert model.usedInsuranceCertInstance != null

        usedInsuranceCert.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/usedInsuranceCert/show/$usedInsuranceCert.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        usedInsuranceCert.clearErrors()

        populateValidParams(params)
        params.id = usedInsuranceCert.id
        params.version = -1
        controller.update()

        assert view == "/usedInsuranceCert/edit"
        assert model.usedInsuranceCertInstance != null
        assert model.usedInsuranceCertInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/usedInsuranceCert/list'

        response.reset()

        populateValidParams(params)
        def usedInsuranceCert = new UsedInsuranceCert(params)

        assert usedInsuranceCert.save() != null
        assert UsedInsuranceCert.count() == 1

        params.id = usedInsuranceCert.id

        controller.delete()

        assert UsedInsuranceCert.count() == 0
        assert UsedInsuranceCert.get(usedInsuranceCert.id) == null
        assert response.redirectedUrl == '/usedInsuranceCert/list'
    }
}
