package cargo.freight



import org.junit.*
import grails.test.mixin.*

@TestFor(FreightController)
@Mock(Freight)
class FreightControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/freight/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.freightInstanceList.size() == 0
        assert model.freightInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.freightInstance != null
    }

    void testSave() {
        controller.save()

        assert model.freightInstance != null
        assert view == '/freight/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/freight/show/1'
        assert controller.flash.message != null
        assert Freight.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/freight/list'


        populateValidParams(params)
        def freight = new Freight(params)

        assert freight.save() != null

        params.id = freight.id

        def model = controller.show()

        assert model.freightInstance == freight
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/freight/list'


        populateValidParams(params)
        def freight = new Freight(params)

        assert freight.save() != null

        params.id = freight.id

        def model = controller.edit()

        assert model.freightInstance == freight
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/freight/list'

        response.reset()


        populateValidParams(params)
        def freight = new Freight(params)

        assert freight.save() != null

        // test invalid parameters in update
        params.id = freight.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/freight/edit"
        assert model.freightInstance != null

        freight.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/freight/show/$freight.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        freight.clearErrors()

        populateValidParams(params)
        params.id = freight.id
        params.version = -1
        controller.update()

        assert view == "/freight/edit"
        assert model.freightInstance != null
        assert model.freightInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/freight/list'

        response.reset()

        populateValidParams(params)
        def freight = new Freight(params)

        assert freight.save() != null
        assert Freight.count() == 1

        params.id = freight.id

        controller.delete()

        assert Freight.count() == 0
        assert Freight.get(freight.id) == null
        assert response.redirectedUrl == '/freight/list'
    }
}
