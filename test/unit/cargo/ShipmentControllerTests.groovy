package cargo



import org.junit.*
import grails.test.mixin.*

@TestFor(ShipmentController)
@Mock(Shipment)
class ShipmentControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/shipment/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.shipmentInstanceList.size() == 0
        assert model.shipmentInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.shipmentInstance != null
    }

    void testSave() {
        controller.save()

        assert model.shipmentInstance != null
        assert view == '/shipment/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/shipment/show/1'
        assert controller.flash.message != null
        assert Shipment.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/shipment/list'


        populateValidParams(params)
        def shipment = new Shipment(params)

        assert shipment.save() != null

        params.id = shipment.id

        def model = controller.show()

        assert model.shipmentInstance == shipment
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/shipment/list'


        populateValidParams(params)
        def shipment = new Shipment(params)

        assert shipment.save() != null

        params.id = shipment.id

        def model = controller.edit()

        assert model.shipmentInstance == shipment
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/shipment/list'

        response.reset()


        populateValidParams(params)
        def shipment = new Shipment(params)

        assert shipment.save() != null

        // test invalid parameters in update
        params.id = shipment.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/shipment/edit"
        assert model.shipmentInstance != null

        shipment.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/shipment/show/$shipment.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        shipment.clearErrors()

        populateValidParams(params)
        params.id = shipment.id
        params.version = -1
        controller.update()

        assert view == "/shipment/edit"
        assert model.shipmentInstance != null
        assert model.shipmentInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/shipment/list'

        response.reset()

        populateValidParams(params)
        def shipment = new Shipment(params)

        assert shipment.save() != null
        assert Shipment.count() == 1

        params.id = shipment.id

        controller.delete()

        assert Shipment.count() == 0
        assert Shipment.get(shipment.id) == null
        assert response.redirectedUrl == '/shipment/list'
    }
}
