package cargo



import org.junit.*
import grails.test.mixin.*

@TestFor(TruckController)
@Mock(Truck)
class TruckControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/truck/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.truckInstanceList.size() == 0
        assert model.truckInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.truckInstance != null
    }

    void testSave() {
        controller.save()

        assert model.truckInstance != null
        assert view == '/truck/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/truck/show/1'
        assert controller.flash.message != null
        assert Truck.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/truck/list'


        populateValidParams(params)
        def truck = new Truck(params)

        assert truck.save() != null

        params.id = truck.id

        def model = controller.show()

        assert model.truckInstance == truck
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/truck/list'


        populateValidParams(params)
        def truck = new Truck(params)

        assert truck.save() != null

        params.id = truck.id

        def model = controller.edit()

        assert model.truckInstance == truck
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/truck/list'

        response.reset()


        populateValidParams(params)
        def truck = new Truck(params)

        assert truck.save() != null

        // test invalid parameters in update
        params.id = truck.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/truck/edit"
        assert model.truckInstance != null

        truck.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/truck/show/$truck.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        truck.clearErrors()

        populateValidParams(params)
        params.id = truck.id
        params.version = -1
        controller.update()

        assert view == "/truck/edit"
        assert model.truckInstance != null
        assert model.truckInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/truck/list'

        response.reset()

        populateValidParams(params)
        def truck = new Truck(params)

        assert truck.save() != null
        assert Truck.count() == 1

        params.id = truck.id

        controller.delete()

        assert Truck.count() == 0
        assert Truck.get(truck.id) == null
        assert response.redirectedUrl == '/truck/list'
    }
}
