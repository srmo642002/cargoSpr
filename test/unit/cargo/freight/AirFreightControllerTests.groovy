package cargo.freight



import org.junit.*
import grails.test.mixin.*

@TestFor(AirFreightController)
@Mock(AirFreight)
class AirFreightControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/airFreight/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.airFreightInstanceList.size() == 0
        assert model.airFreightInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.airFreightInstance != null
    }

    void testSave() {
        controller.save()

        assert model.airFreightInstance != null
        assert view == '/airFreight/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/airFreight/show/1'
        assert controller.flash.message != null
        assert AirFreight.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/airFreight/list'


        populateValidParams(params)
        def airFreight = new AirFreight(params)

        assert airFreight.save() != null

        params.id = airFreight.id

        def model = controller.show()

        assert model.airFreightInstance == airFreight
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/airFreight/list'


        populateValidParams(params)
        def airFreight = new AirFreight(params)

        assert airFreight.save() != null

        params.id = airFreight.id

        def model = controller.edit()

        assert model.airFreightInstance == airFreight
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/airFreight/list'

        response.reset()


        populateValidParams(params)
        def airFreight = new AirFreight(params)

        assert airFreight.save() != null

        // test invalid parameters in update
        params.id = airFreight.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/airFreight/edit"
        assert model.airFreightInstance != null

        airFreight.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/airFreight/show/$airFreight.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        airFreight.clearErrors()

        populateValidParams(params)
        params.id = airFreight.id
        params.version = -1
        controller.update()

        assert view == "/airFreight/edit"
        assert model.airFreightInstance != null
        assert model.airFreightInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/airFreight/list'

        response.reset()

        populateValidParams(params)
        def airFreight = new AirFreight(params)

        assert airFreight.save() != null
        assert AirFreight.count() == 1

        params.id = airFreight.id

        controller.delete()

        assert AirFreight.count() == 0
        assert AirFreight.get(airFreight.id) == null
        assert response.redirectedUrl == '/airFreight/list'
    }
}
