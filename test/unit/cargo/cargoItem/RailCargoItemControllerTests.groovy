package cargo.cargoItem



import org.junit.*
import grails.test.mixin.*

@TestFor(RailCargoItemController)
@Mock(RailCargoItem)
class RailCargoItemControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/railCargoItem/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.railCargoItemInstanceList.size() == 0
        assert model.railCargoItemInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.railCargoItemInstance != null
    }

    void testSave() {
        controller.save()

        assert model.railCargoItemInstance != null
        assert view == '/railCargoItem/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/railCargoItem/show/1'
        assert controller.flash.message != null
        assert RailCargoItem.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/railCargoItem/list'


        populateValidParams(params)
        def railCargoItem = new RailCargoItem(params)

        assert railCargoItem.save() != null

        params.id = railCargoItem.id

        def model = controller.show()

        assert model.railCargoItemInstance == railCargoItem
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/railCargoItem/list'


        populateValidParams(params)
        def railCargoItem = new RailCargoItem(params)

        assert railCargoItem.save() != null

        params.id = railCargoItem.id

        def model = controller.edit()

        assert model.railCargoItemInstance == railCargoItem
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/railCargoItem/list'

        response.reset()


        populateValidParams(params)
        def railCargoItem = new RailCargoItem(params)

        assert railCargoItem.save() != null

        // test invalid parameters in update
        params.id = railCargoItem.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/railCargoItem/edit"
        assert model.railCargoItemInstance != null

        railCargoItem.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/railCargoItem/show/$railCargoItem.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        railCargoItem.clearErrors()

        populateValidParams(params)
        params.id = railCargoItem.id
        params.version = -1
        controller.update()

        assert view == "/railCargoItem/edit"
        assert model.railCargoItemInstance != null
        assert model.railCargoItemInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/railCargoItem/list'

        response.reset()

        populateValidParams(params)
        def railCargoItem = new RailCargoItem(params)

        assert railCargoItem.save() != null
        assert RailCargoItem.count() == 1

        params.id = railCargoItem.id

        controller.delete()

        assert RailCargoItem.count() == 0
        assert RailCargoItem.get(railCargoItem.id) == null
        assert response.redirectedUrl == '/railCargoItem/list'
    }
}
