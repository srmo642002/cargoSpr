package cargo



import org.junit.*
import grails.test.mixin.*

@TestFor(CostEstimationController)
@Mock(CostEstimation)
class CostEstimationControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/costEstimation/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.costEstimationInstanceList.size() == 0
        assert model.costEstimationInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.costEstimationInstance != null
    }

    void testSave() {
        controller.save()

        assert model.costEstimationInstance != null
        assert view == '/costEstimation/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/costEstimation/show/1'
        assert controller.flash.message != null
        assert CostEstimation.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/costEstimation/list'


        populateValidParams(params)
        def costEstimation = new CostEstimation(params)

        assert costEstimation.save() != null

        params.id = costEstimation.id

        def model = controller.show()

        assert model.costEstimationInstance == costEstimation
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/costEstimation/list'


        populateValidParams(params)
        def costEstimation = new CostEstimation(params)

        assert costEstimation.save() != null

        params.id = costEstimation.id

        def model = controller.edit()

        assert model.costEstimationInstance == costEstimation
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/costEstimation/list'

        response.reset()


        populateValidParams(params)
        def costEstimation = new CostEstimation(params)

        assert costEstimation.save() != null

        // test invalid parameters in update
        params.id = costEstimation.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/costEstimation/edit"
        assert model.costEstimationInstance != null

        costEstimation.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/costEstimation/show/$costEstimation.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        costEstimation.clearErrors()

        populateValidParams(params)
        params.id = costEstimation.id
        params.version = -1
        controller.update()

        assert view == "/costEstimation/edit"
        assert model.costEstimationInstance != null
        assert model.costEstimationInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/costEstimation/list'

        response.reset()

        populateValidParams(params)
        def costEstimation = new CostEstimation(params)

        assert costEstimation.save() != null
        assert CostEstimation.count() == 1

        params.id = costEstimation.id

        controller.delete()

        assert CostEstimation.count() == 0
        assert CostEstimation.get(costEstimation.id) == null
        assert response.redirectedUrl == '/costEstimation/list'
    }
}
