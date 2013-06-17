package cargo.freight



import org.junit.*
import grails.test.mixin.*

@TestFor(RoadFreightController)
@Mock(RoadFreight)
class RoadFreightControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/roadFreight/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.roadFreightInstanceList.size() == 0
        assert model.roadFreightInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.roadFreightInstance != null
    }

    void testSave() {
        controller.save()

        assert model.roadFreightInstance != null
        assert view == '/roadFreight/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/roadFreight/show/1'
        assert controller.flash.message != null
        assert RoadFreight.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/roadFreight/list'


        populateValidParams(params)
        def roadFreight = new RoadFreight(params)

        assert roadFreight.save() != null

        params.id = roadFreight.id

        def model = controller.show()

        assert model.roadFreightInstance == roadFreight
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/roadFreight/list'


        populateValidParams(params)
        def roadFreight = new RoadFreight(params)

        assert roadFreight.save() != null

        params.id = roadFreight.id

        def model = controller.edit()

        assert model.roadFreightInstance == roadFreight
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/roadFreight/list'

        response.reset()


        populateValidParams(params)
        def roadFreight = new RoadFreight(params)

        assert roadFreight.save() != null

        // test invalid parameters in update
        params.id = roadFreight.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/roadFreight/edit"
        assert model.roadFreightInstance != null

        roadFreight.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/roadFreight/show/$roadFreight.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        roadFreight.clearErrors()

        populateValidParams(params)
        params.id = roadFreight.id
        params.version = -1
        controller.update()

        assert view == "/roadFreight/edit"
        assert model.roadFreightInstance != null
        assert model.roadFreightInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/roadFreight/list'

        response.reset()

        populateValidParams(params)
        def roadFreight = new RoadFreight(params)

        assert roadFreight.save() != null
        assert RoadFreight.count() == 1

        params.id = roadFreight.id

        controller.delete()

        assert RoadFreight.count() == 0
        assert RoadFreight.get(roadFreight.id) == null
        assert response.redirectedUrl == '/roadFreight/list'
    }
}
