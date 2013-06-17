package cargo.insuranceCertificate



import org.junit.*
import grails.test.mixin.*

@TestFor(OneSheetInsuranceCertController)
@Mock(OneSheetInsuranceCert)
class OneSheetInsuranceCertControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/oneSheetInsuranceCert/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.oneSheetInsuranceCertInstanceList.size() == 0
        assert model.oneSheetInsuranceCertInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.oneSheetInsuranceCertInstance != null
    }

    void testSave() {
        controller.save()

        assert model.oneSheetInsuranceCertInstance != null
        assert view == '/oneSheetInsuranceCert/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/oneSheetInsuranceCert/show/1'
        assert controller.flash.message != null
        assert OneSheetInsuranceCert.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/oneSheetInsuranceCert/list'


        populateValidParams(params)
        def oneSheetInsuranceCert = new OneSheetInsuranceCert(params)

        assert oneSheetInsuranceCert.save() != null

        params.id = oneSheetInsuranceCert.id

        def model = controller.show()

        assert model.oneSheetInsuranceCertInstance == oneSheetInsuranceCert
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/oneSheetInsuranceCert/list'


        populateValidParams(params)
        def oneSheetInsuranceCert = new OneSheetInsuranceCert(params)

        assert oneSheetInsuranceCert.save() != null

        params.id = oneSheetInsuranceCert.id

        def model = controller.edit()

        assert model.oneSheetInsuranceCertInstance == oneSheetInsuranceCert
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/oneSheetInsuranceCert/list'

        response.reset()


        populateValidParams(params)
        def oneSheetInsuranceCert = new OneSheetInsuranceCert(params)

        assert oneSheetInsuranceCert.save() != null

        // test invalid parameters in update
        params.id = oneSheetInsuranceCert.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/oneSheetInsuranceCert/edit"
        assert model.oneSheetInsuranceCertInstance != null

        oneSheetInsuranceCert.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/oneSheetInsuranceCert/show/$oneSheetInsuranceCert.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        oneSheetInsuranceCert.clearErrors()

        populateValidParams(params)
        params.id = oneSheetInsuranceCert.id
        params.version = -1
        controller.update()

        assert view == "/oneSheetInsuranceCert/edit"
        assert model.oneSheetInsuranceCertInstance != null
        assert model.oneSheetInsuranceCertInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/oneSheetInsuranceCert/list'

        response.reset()

        populateValidParams(params)
        def oneSheetInsuranceCert = new OneSheetInsuranceCert(params)

        assert oneSheetInsuranceCert.save() != null
        assert OneSheetInsuranceCert.count() == 1

        params.id = oneSheetInsuranceCert.id

        controller.delete()

        assert OneSheetInsuranceCert.count() == 0
        assert OneSheetInsuranceCert.get(oneSheetInsuranceCert.id) == null
        assert response.redirectedUrl == '/oneSheetInsuranceCert/list'
    }
}
