package cargo.freight



import org.junit.*
import grails.test.mixin.*

@TestFor(OceanFreightController)
@Mock(OceanFreight)
class OceanFreightControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/oceanFreight/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.oceanFreightInstanceList.size() == 0
        assert model.oceanFreightInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.oceanFreightInstance != null
    }

    void testSave() {
        controller.save()

        assert model.oceanFreightInstance != null
        assert view == '/oceanFreight/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/oceanFreight/show/1'
        assert controller.flash.message != null
        assert OceanFreight.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/oceanFreight/list'


        populateValidParams(params)
        def oceanFreight = new OceanFreight(params)

        assert oceanFreight.save() != null

        params.id = oceanFreight.id

        def model = controller.show()

        assert model.oceanFreightInstance == oceanFreight
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/oceanFreight/list'


        populateValidParams(params)
        def oceanFreight = new OceanFreight(params)

        assert oceanFreight.save() != null

        params.id = oceanFreight.id

        def model = controller.edit()

        assert model.oceanFreightInstance == oceanFreight
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/oceanFreight/list'

        response.reset()


        populateValidParams(params)
        def oceanFreight = new OceanFreight(params)

        assert oceanFreight.save() != null

        // test invalid parameters in update
        params.id = oceanFreight.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/oceanFreight/edit"
        assert model.oceanFreightInstance != null

        oceanFreight.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/oceanFreight/show/$oceanFreight.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        oceanFreight.clearErrors()

        populateValidParams(params)
        params.id = oceanFreight.id
        params.version = -1
        controller.update()

        assert view == "/oceanFreight/edit"
        assert model.oceanFreightInstance != null
        assert model.oceanFreightInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/oceanFreight/list'

        response.reset()

        populateValidParams(params)
        def oceanFreight = new OceanFreight(params)

        assert oceanFreight.save() != null
        assert OceanFreight.count() == 1

        params.id = oceanFreight.id

        controller.delete()

        assert OceanFreight.count() == 0
        assert OceanFreight.get(oceanFreight.id) == null
        assert response.redirectedUrl == '/oceanFreight/list'
    }
}
