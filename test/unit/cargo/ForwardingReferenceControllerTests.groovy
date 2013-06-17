package cargo



import org.junit.*
import grails.test.mixin.*

@TestFor(ForwardingReferenceController)
@Mock(ForwardingReference)
class ForwardingReferenceControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/forwardingReference/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.forwardingReferenceInstanceList.size() == 0
        assert model.forwardingReferenceInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.forwardingReferenceInstance != null
    }

    void testSave() {
        controller.save()

        assert model.forwardingReferenceInstance != null
        assert view == '/forwardingReference/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/forwardingReference/show/1'
        assert controller.flash.message != null
        assert ForwardingReference.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/forwardingReference/list'


        populateValidParams(params)
        def forwardingReference = new ForwardingReference(params)

        assert forwardingReference.save() != null

        params.id = forwardingReference.id

        def model = controller.show()

        assert model.forwardingReferenceInstance == forwardingReference
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/forwardingReference/list'


        populateValidParams(params)
        def forwardingReference = new ForwardingReference(params)

        assert forwardingReference.save() != null

        params.id = forwardingReference.id

        def model = controller.edit()

        assert model.forwardingReferenceInstance == forwardingReference
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/forwardingReference/list'

        response.reset()


        populateValidParams(params)
        def forwardingReference = new ForwardingReference(params)

        assert forwardingReference.save() != null

        // test invalid parameters in update
        params.id = forwardingReference.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/forwardingReference/edit"
        assert model.forwardingReferenceInstance != null

        forwardingReference.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/forwardingReference/show/$forwardingReference.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        forwardingReference.clearErrors()

        populateValidParams(params)
        params.id = forwardingReference.id
        params.version = -1
        controller.update()

        assert view == "/forwardingReference/edit"
        assert model.forwardingReferenceInstance != null
        assert model.forwardingReferenceInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/forwardingReference/list'

        response.reset()

        populateValidParams(params)
        def forwardingReference = new ForwardingReference(params)

        assert forwardingReference.save() != null
        assert ForwardingReference.count() == 1

        params.id = forwardingReference.id

        controller.delete()

        assert ForwardingReference.count() == 0
        assert ForwardingReference.get(forwardingReference.id) == null
        assert response.redirectedUrl == '/forwardingReference/list'
    }
}
