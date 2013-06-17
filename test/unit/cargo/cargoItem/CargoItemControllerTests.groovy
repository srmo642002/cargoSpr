package cargo.cargoItem



import org.junit.*
import grails.test.mixin.*

@TestFor(CargoItemController)
@Mock(CargoItem)
class CargoItemControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/cargoItem/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.cargoItemInstanceList.size() == 0
        assert model.cargoItemInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.cargoItemInstance != null
    }

    void testSave() {
        controller.save()

        assert model.cargoItemInstance != null
        assert view == '/cargoItem/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/cargoItem/show/1'
        assert controller.flash.message != null
        assert CargoItem.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/cargoItem/list'


        populateValidParams(params)
        def cargoItem = new CargoItem(params)

        assert cargoItem.save() != null

        params.id = cargoItem.id

        def model = controller.show()

        assert model.cargoItemInstance == cargoItem
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/cargoItem/list'


        populateValidParams(params)
        def cargoItem = new CargoItem(params)

        assert cargoItem.save() != null

        params.id = cargoItem.id

        def model = controller.edit()

        assert model.cargoItemInstance == cargoItem
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/cargoItem/list'

        response.reset()


        populateValidParams(params)
        def cargoItem = new CargoItem(params)

        assert cargoItem.save() != null

        // test invalid parameters in update
        params.id = cargoItem.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/cargoItem/edit"
        assert model.cargoItemInstance != null

        cargoItem.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/cargoItem/show/$cargoItem.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        cargoItem.clearErrors()

        populateValidParams(params)
        params.id = cargoItem.id
        params.version = -1
        controller.update()

        assert view == "/cargoItem/edit"
        assert model.cargoItemInstance != null
        assert model.cargoItemInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/cargoItem/list'

        response.reset()

        populateValidParams(params)
        def cargoItem = new CargoItem(params)

        assert cargoItem.save() != null
        assert CargoItem.count() == 1

        params.id = cargoItem.id

        controller.delete()

        assert CargoItem.count() == 0
        assert CargoItem.get(cargoItem.id) == null
        assert response.redirectedUrl == '/cargoItem/list'
    }
}
