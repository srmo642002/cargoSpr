package cargo.insuranceCertificate



import org.junit.*
import grails.test.mixin.*

@TestFor(InsuranceController)
@Mock(Insurance)
class InsuranceControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/insurance/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.insuranceInstanceList.size() == 0
        assert model.insuranceInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.insuranceInstance != null
    }

    void testSave() {
        controller.save()

        assert model.insuranceInstance != null
        assert view == '/insurance/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/insurance/show/1'
        assert controller.flash.message != null
        assert Insurance.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/insurance/list'


        populateValidParams(params)
        def insurance = new Insurance(params)

        assert insurance.save() != null

        params.id = insurance.id

        def model = controller.show()

        assert model.insuranceInstance == insurance
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/insurance/list'


        populateValidParams(params)
        def insurance = new Insurance(params)

        assert insurance.save() != null

        params.id = insurance.id

        def model = controller.edit()

        assert model.insuranceInstance == insurance
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/insurance/list'

        response.reset()


        populateValidParams(params)
        def insurance = new Insurance(params)

        assert insurance.save() != null

        // test invalid parameters in update
        params.id = insurance.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/insurance/edit"
        assert model.insuranceInstance != null

        insurance.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/insurance/show/$insurance.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        insurance.clearErrors()

        populateValidParams(params)
        params.id = insurance.id
        params.version = -1
        controller.update()

        assert view == "/insurance/edit"
        assert model.insuranceInstance != null
        assert model.insuranceInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/insurance/list'

        response.reset()

        populateValidParams(params)
        def insurance = new Insurance(params)

        assert insurance.save() != null
        assert Insurance.count() == 1

        params.id = insurance.id

        controller.delete()

        assert Insurance.count() == 0
        assert Insurance.get(insurance.id) == null
        assert response.redirectedUrl == '/insurance/list'
    }
}
