package cargo



import org.junit.*
import grails.test.mixin.*

@TestFor(LocalAgentController)
@Mock(LocalAgent)
class LocalAgentControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/localAgent/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.localAgentInstanceList.size() == 0
        assert model.localAgentInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.localAgentInstance != null
    }

    void testSave() {
        controller.save()

        assert model.localAgentInstance != null
        assert view == '/localAgent/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/localAgent/show/1'
        assert controller.flash.message != null
        assert LocalAgent.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/localAgent/list'


        populateValidParams(params)
        def localAgent = new LocalAgent(params)

        assert localAgent.save() != null

        params.id = localAgent.id

        def model = controller.show()

        assert model.localAgentInstance == localAgent
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/localAgent/list'


        populateValidParams(params)
        def localAgent = new LocalAgent(params)

        assert localAgent.save() != null

        params.id = localAgent.id

        def model = controller.edit()

        assert model.localAgentInstance == localAgent
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/localAgent/list'

        response.reset()


        populateValidParams(params)
        def localAgent = new LocalAgent(params)

        assert localAgent.save() != null

        // test invalid parameters in update
        params.id = localAgent.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/localAgent/edit"
        assert model.localAgentInstance != null

        localAgent.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/localAgent/show/$localAgent.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        localAgent.clearErrors()

        populateValidParams(params)
        params.id = localAgent.id
        params.version = -1
        controller.update()

        assert view == "/localAgent/edit"
        assert model.localAgentInstance != null
        assert model.localAgentInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/localAgent/list'

        response.reset()

        populateValidParams(params)
        def localAgent = new LocalAgent(params)

        assert localAgent.save() != null
        assert LocalAgent.count() == 1

        params.id = localAgent.id

        controller.delete()

        assert LocalAgent.count() == 0
        assert LocalAgent.get(localAgent.id) == null
        assert response.redirectedUrl == '/localAgent/list'
    }
}
