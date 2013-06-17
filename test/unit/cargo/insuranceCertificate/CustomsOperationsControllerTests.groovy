package cargo.insuranceCertificate



import org.junit.*
import grails.test.mixin.*

@TestFor(CustomsOperationsController)
@Mock(CustomsOperations)
class CustomsOperationsControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/customsOperations/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.customsOperationsInstanceList.size() == 0
        assert model.customsOperationsInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.customsOperationsInstance != null
    }

    void testSave() {
        controller.save()

        assert model.customsOperationsInstance != null
        assert view == '/customsOperations/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/customsOperations/show/1'
        assert controller.flash.message != null
        assert CustomsOperations.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/customsOperations/list'


        populateValidParams(params)
        def customsOperations = new CustomsOperations(params)

        assert customsOperations.save() != null

        params.id = customsOperations.id

        def model = controller.show()

        assert model.customsOperationsInstance == customsOperations
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/customsOperations/list'


        populateValidParams(params)
        def customsOperations = new CustomsOperations(params)

        assert customsOperations.save() != null

        params.id = customsOperations.id

        def model = controller.edit()

        assert model.customsOperationsInstance == customsOperations
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/customsOperations/list'

        response.reset()


        populateValidParams(params)
        def customsOperations = new CustomsOperations(params)

        assert customsOperations.save() != null

        // test invalid parameters in update
        params.id = customsOperations.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/customsOperations/edit"
        assert model.customsOperationsInstance != null

        customsOperations.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/customsOperations/show/$customsOperations.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        customsOperations.clearErrors()

        populateValidParams(params)
        params.id = customsOperations.id
        params.version = -1
        controller.update()

        assert view == "/customsOperations/edit"
        assert model.customsOperationsInstance != null
        assert model.customsOperationsInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/customsOperations/list'

        response.reset()

        populateValidParams(params)
        def customsOperations = new CustomsOperations(params)

        assert customsOperations.save() != null
        assert CustomsOperations.count() == 1

        params.id = customsOperations.id

        controller.delete()

        assert CustomsOperations.count() == 0
        assert CustomsOperations.get(customsOperations.id) == null
        assert response.redirectedUrl == '/customsOperations/list'
    }
}
