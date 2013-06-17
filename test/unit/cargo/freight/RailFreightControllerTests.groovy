package cargo.freight



import org.junit.*
import grails.test.mixin.*

@TestFor(RailFreightController)
@Mock(RailFreight)
class RailFreightControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/railFreight/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.railFreightInstanceList.size() == 0
        assert model.railFreightInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.railFreightInstance != null
    }

    void testSave() {
        controller.save()

        assert model.railFreightInstance != null
        assert view == '/railFreight/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/railFreight/show/1'
        assert controller.flash.message != null
        assert RailFreight.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/railFreight/list'


        populateValidParams(params)
        def railFreight = new RailFreight(params)

        assert railFreight.save() != null

        params.id = railFreight.id

        def model = controller.show()

        assert model.railFreightInstance == railFreight
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/railFreight/list'


        populateValidParams(params)
        def railFreight = new RailFreight(params)

        assert railFreight.save() != null

        params.id = railFreight.id

        def model = controller.edit()

        assert model.railFreightInstance == railFreight
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/railFreight/list'

        response.reset()


        populateValidParams(params)
        def railFreight = new RailFreight(params)

        assert railFreight.save() != null

        // test invalid parameters in update
        params.id = railFreight.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/railFreight/edit"
        assert model.railFreightInstance != null

        railFreight.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/railFreight/show/$railFreight.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        railFreight.clearErrors()

        populateValidParams(params)
        params.id = railFreight.id
        params.version = -1
        controller.update()

        assert view == "/railFreight/edit"
        assert model.railFreightInstance != null
        assert model.railFreightInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/railFreight/list'

        response.reset()

        populateValidParams(params)
        def railFreight = new RailFreight(params)

        assert railFreight.save() != null
        assert RailFreight.count() == 1

        params.id = railFreight.id

        controller.delete()

        assert RailFreight.count() == 0
        assert RailFreight.get(railFreight.id) == null
        assert response.redirectedUrl == '/railFreight/list'
    }
}
