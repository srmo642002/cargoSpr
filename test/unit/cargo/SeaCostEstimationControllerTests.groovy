package cargo



import org.junit.*
import grails.test.mixin.*

@TestFor(SeaCostEstimationController)
@Mock(SeaCostEstimation)
class SeaCostEstimationControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/seaCostEstimation/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.seaCostEstimationInstanceList.size() == 0
        assert model.seaCostEstimationInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.seaCostEstimationInstance != null
    }

    void testSave() {
        controller.save()

        assert model.seaCostEstimationInstance != null
        assert view == '/seaCostEstimation/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/seaCostEstimation/show/1'
        assert controller.flash.message != null
        assert SeaCostEstimation.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/seaCostEstimation/list'


        populateValidParams(params)
        def seaCostEstimation = new SeaCostEstimation(params)

        assert seaCostEstimation.save() != null

        params.id = seaCostEstimation.id

        def model = controller.show()

        assert model.seaCostEstimationInstance == seaCostEstimation
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/seaCostEstimation/list'


        populateValidParams(params)
        def seaCostEstimation = new SeaCostEstimation(params)

        assert seaCostEstimation.save() != null

        params.id = seaCostEstimation.id

        def model = controller.edit()

        assert model.seaCostEstimationInstance == seaCostEstimation
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/seaCostEstimation/list'

        response.reset()


        populateValidParams(params)
        def seaCostEstimation = new SeaCostEstimation(params)

        assert seaCostEstimation.save() != null

        // test invalid parameters in update
        params.id = seaCostEstimation.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/seaCostEstimation/edit"
        assert model.seaCostEstimationInstance != null

        seaCostEstimation.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/seaCostEstimation/show/$seaCostEstimation.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        seaCostEstimation.clearErrors()

        populateValidParams(params)
        params.id = seaCostEstimation.id
        params.version = -1
        controller.update()

        assert view == "/seaCostEstimation/edit"
        assert model.seaCostEstimationInstance != null
        assert model.seaCostEstimationInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/seaCostEstimation/list'

        response.reset()

        populateValidParams(params)
        def seaCostEstimation = new SeaCostEstimation(params)

        assert seaCostEstimation.save() != null
        assert SeaCostEstimation.count() == 1

        params.id = seaCostEstimation.id

        controller.delete()

        assert SeaCostEstimation.count() == 0
        assert SeaCostEstimation.get(seaCostEstimation.id) == null
        assert response.redirectedUrl == '/seaCostEstimation/list'
    }
}
