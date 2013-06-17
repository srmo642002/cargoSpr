package cargo.cargoItem



import org.junit.*
import grails.test.mixin.*

@TestFor(RoadCargoItemController)
@Mock(RoadCargoItem)
class RoadCargoItemControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/roadCargoItem/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.roadCargoItemInstanceList.size() == 0
        assert model.roadCargoItemInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.roadCargoItemInstance != null
    }

    void testSave() {
        controller.save()

        assert model.roadCargoItemInstance != null
        assert view == '/roadCargoItem/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/roadCargoItem/show/1'
        assert controller.flash.message != null
        assert RoadCargoItem.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/roadCargoItem/list'


        populateValidParams(params)
        def roadCargoItem = new RoadCargoItem(params)

        assert roadCargoItem.save() != null

        params.id = roadCargoItem.id

        def model = controller.show()

        assert model.roadCargoItemInstance == roadCargoItem
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/roadCargoItem/list'


        populateValidParams(params)
        def roadCargoItem = new RoadCargoItem(params)

        assert roadCargoItem.save() != null

        params.id = roadCargoItem.id

        def model = controller.edit()

        assert model.roadCargoItemInstance == roadCargoItem
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/roadCargoItem/list'

        response.reset()


        populateValidParams(params)
        def roadCargoItem = new RoadCargoItem(params)

        assert roadCargoItem.save() != null

        // test invalid parameters in update
        params.id = roadCargoItem.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/roadCargoItem/edit"
        assert model.roadCargoItemInstance != null

        roadCargoItem.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/roadCargoItem/show/$roadCargoItem.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        roadCargoItem.clearErrors()

        populateValidParams(params)
        params.id = roadCargoItem.id
        params.version = -1
        controller.update()

        assert view == "/roadCargoItem/edit"
        assert model.roadCargoItemInstance != null
        assert model.roadCargoItemInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/roadCargoItem/list'

        response.reset()

        populateValidParams(params)
        def roadCargoItem = new RoadCargoItem(params)

        assert roadCargoItem.save() != null
        assert RoadCargoItem.count() == 1

        params.id = roadCargoItem.id

        controller.delete()

        assert RoadCargoItem.count() == 0
        assert RoadCargoItem.get(roadCargoItem.id) == null
        assert response.redirectedUrl == '/roadCargoItem/list'
    }
}
