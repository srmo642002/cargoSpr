package cargo.cargoItem



import org.junit.*
import grails.test.mixin.*

@TestFor(OceanCargoItemController)
@Mock(OceanCargoItem)
class OceanCargoItemControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/oceanCargoItem/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.oceanCargoItemInstanceList.size() == 0
        assert model.oceanCargoItemInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.oceanCargoItemInstance != null
    }

    void testSave() {
        controller.save()

        assert model.oceanCargoItemInstance != null
        assert view == '/oceanCargoItem/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/oceanCargoItem/show/1'
        assert controller.flash.message != null
        assert OceanCargoItem.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/oceanCargoItem/list'


        populateValidParams(params)
        def oceanCargoItem = new OceanCargoItem(params)

        assert oceanCargoItem.save() != null

        params.id = oceanCargoItem.id

        def model = controller.show()

        assert model.oceanCargoItemInstance == oceanCargoItem
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/oceanCargoItem/list'


        populateValidParams(params)
        def oceanCargoItem = new OceanCargoItem(params)

        assert oceanCargoItem.save() != null

        params.id = oceanCargoItem.id

        def model = controller.edit()

        assert model.oceanCargoItemInstance == oceanCargoItem
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/oceanCargoItem/list'

        response.reset()


        populateValidParams(params)
        def oceanCargoItem = new OceanCargoItem(params)

        assert oceanCargoItem.save() != null

        // test invalid parameters in update
        params.id = oceanCargoItem.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/oceanCargoItem/edit"
        assert model.oceanCargoItemInstance != null

        oceanCargoItem.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/oceanCargoItem/show/$oceanCargoItem.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        oceanCargoItem.clearErrors()

        populateValidParams(params)
        params.id = oceanCargoItem.id
        params.version = -1
        controller.update()

        assert view == "/oceanCargoItem/edit"
        assert model.oceanCargoItemInstance != null
        assert model.oceanCargoItemInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/oceanCargoItem/list'

        response.reset()

        populateValidParams(params)
        def oceanCargoItem = new OceanCargoItem(params)

        assert oceanCargoItem.save() != null
        assert OceanCargoItem.count() == 1

        params.id = oceanCargoItem.id

        controller.delete()

        assert OceanCargoItem.count() == 0
        assert OceanCargoItem.get(oceanCargoItem.id) == null
        assert response.redirectedUrl == '/oceanCargoItem/list'
    }
}
