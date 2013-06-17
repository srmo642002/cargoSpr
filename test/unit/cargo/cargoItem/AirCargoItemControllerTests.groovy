package cargo.cargoItem



import org.junit.*
import grails.test.mixin.*

@TestFor(AirCargoItemController)
@Mock(AirCargoItem)
class AirCargoItemControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/airCargoItem/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.airCargoItemInstanceList.size() == 0
        assert model.airCargoItemInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.airCargoItemInstance != null
    }

    void testSave() {
        controller.save()

        assert model.airCargoItemInstance != null
        assert view == '/airCargoItem/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/airCargoItem/show/1'
        assert controller.flash.message != null
        assert AirCargoItem.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/airCargoItem/list'


        populateValidParams(params)
        def airCargoItem = new AirCargoItem(params)

        assert airCargoItem.save() != null

        params.id = airCargoItem.id

        def model = controller.show()

        assert model.airCargoItemInstance == airCargoItem
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/airCargoItem/list'


        populateValidParams(params)
        def airCargoItem = new AirCargoItem(params)

        assert airCargoItem.save() != null

        params.id = airCargoItem.id

        def model = controller.edit()

        assert model.airCargoItemInstance == airCargoItem
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/airCargoItem/list'

        response.reset()


        populateValidParams(params)
        def airCargoItem = new AirCargoItem(params)

        assert airCargoItem.save() != null

        // test invalid parameters in update
        params.id = airCargoItem.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/airCargoItem/edit"
        assert model.airCargoItemInstance != null

        airCargoItem.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/airCargoItem/show/$airCargoItem.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        airCargoItem.clearErrors()

        populateValidParams(params)
        params.id = airCargoItem.id
        params.version = -1
        controller.update()

        assert view == "/airCargoItem/edit"
        assert model.airCargoItemInstance != null
        assert model.airCargoItemInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/airCargoItem/list'

        response.reset()

        populateValidParams(params)
        def airCargoItem = new AirCargoItem(params)

        assert airCargoItem.save() != null
        assert AirCargoItem.count() == 1

        params.id = airCargoItem.id

        controller.delete()

        assert AirCargoItem.count() == 0
        assert AirCargoItem.get(airCargoItem.id) == null
        assert response.redirectedUrl == '/airCargoItem/list'
    }
}
