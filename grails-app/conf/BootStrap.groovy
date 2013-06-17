import cargo.Country
import cargo.City
import cargo.Driver

import cargo.UserGroup
import cargo.Role
import cargo.Truck
import cargo.User
import cargo.UserGroup
import cargo.UserRole
import grails.util.GrailsUtil
import cargo.Airport
import cargo.ForwardingReference
import cargo.Shipment
import jodd.util.StringUtil

class BootStrap {

    def saveIt = {
        if (!it.save()) {
            it.errors.allErrors.each {error ->
                println "${error}"
            }
        }
    }

    def init = { servletContext ->

        def role1 = Role.findByAuthority("Admin")?:new Role(authority: "Admin").save()

        def role2 = Role.findByAuthority("Create User")?:new Role(authority: "Create User").save()

        def role3 = Role.findByAuthority("Assign Roles")?:new Role(authority: "Assign Roles").save()

        def role4 = Role.findByAuthority("Create Shipment")?:new Role(authority: "Create Shipment").save()

        def role5 = Role.findByAuthority("Edit Shipment")?:new Role(authority: "Edit Shipment").save()

        def role6 = Role.findByAuthority("Create Cargo")?:new Role(authority: "Create Cargo").save()

        def role7 = Role.findByAuthority("Edit Cargo")?:new Role(authority: "Edit Cargo").save()

        def role8 = Role.findByAuthority("Delete Cargo")?:new Role(authority: "Delete Cargo").save()

        def user1 = User.findByUsername("admin")?:new User(username: "admin",password: "123",email: "admin@msn.com",mobile: "0912333333",level: "head",department: "Management",enabled: true).save()

        if(!user1.authorities.contains(role1)){UserRole.create(user1,role1,true)}

        def tr = UserGroup.findByGroups("TR")?:new UserGroup(groups: "TR").save()

        def fw = UserGroup.findByGroups("FW")?:new UserGroup(groups: "FW").save()

        def mt = UserGroup.findByGroups("MT")?:new UserGroup(groups: "MT").save()

        def mng = UserGroup.findByGroups("MNG")?:new UserGroup(groups: "MNG").save()

        def bI = UserGroup.findByGroups("BasicInfo")?:new UserGroup(groups: "BasicInfo").save()


        if (GrailsUtil.environment == "development") {

            def iran = Country.findByAbbreviation("IRR")?:new Country(title: "Iran", persianTitle: "Iran", abbreviation: "IRR").save()

            def china = Country.findByAbbreviation("CHN")?:new Country(title: "China", persianTitle: "China", abbreviation: "CHN").save()

            def germany = Country.findByAbbreviation("GRM")?:new Country(title: "Germany", persianTitle: "Alman", abbreviation: "GRM").save()

            def tehran = City.findByAbbreviation("TEH")?:new City(title: "Tehran", persianTitle: "Tehran", abbreviation: "TEH", port: false, country: iran).save()

            def tabriz = City.findByAbbreviation("TAB")?:new City(title: "Tabriz", persianTitle: "Tabriz", abbreviation: "TAB", port: false, country: iran).save()

            def shanghai = City.findByAbbreviation("SHA")?:new City(title: "Shanghai", persianTitle: "Shanghai", abbreviation: "SHA", port: true, country: china).save()

            def mehrabad = Airport.findByAbbreviation("MEH")?:new Airport(title: "Mehrabad", abbreviation: "MEH", city: tehran).save()

            def shanghaiAirport = Airport.findByAbbreviation("MEH")?:new Airport(title: "Shanghai", abbreviation: "SHA", city: shanghai).save()

            def forwardingRef = ForwardingReference.findByTitle("Test Forwarding Ref")?:new ForwardingReference(address: "1", asACarrier: true, asAConsignee: true, asAnAgent: true, asANotifyParty: true, asAShipper: true, contactPerson: "Ali", fax: "123", telephone: "345", title: "Test Forwarding Ref", webSite: "www.test.com").save()

            def shipment = Shipment.findByTitle("Test Shipment")?:new Shipment(title: "Test Shipment", description: "Test").save()

            def driver1 = Driver.findByIdNumber("23445")?:new Driver(name: "driver1", family: "family1", fatherName: "dfff", idNumber: "23445", birthDate: "1920/03/23", placeOfBirth: "dffgg", mobile: "65454323", homeTel: "776655", address: "hjggyugyug",passportNumber: "775443",passportDateOfIssure: "2012/04/30",passportValidity:"2013/09/23", exitPermissionNumber: "223312", exitPermissionDateOfIssue: "2012/12/12",exitPermissionValidity: "2013/01/24").save()

            def driver2 = Driver.findByIdNumber("222245")?:new Driver(name: "driver2", family: "family2", fatherName: "dffsdsf", idNumber: "222245", birthDate: "1920/02/26", placeOfBirth: "wwfgg", mobile: "91254323", homeTel: "226655", address: "hjggyugyug",passportNumber: "745643",passportDateOfIssure: "2012/11/30",passportValidity:"2013/09/23", exitPermissionNumber: "22344442", exitPermissionDateOfIssue: "2012/12/21",exitPermissionValidity: "2013/08/24").save()

            def truck1 = Truck.findByRegistrationNo("33BB3")?:new Truck(registrationNo: "33BB3", typeOfVehicle:"kjbjby",chassisNo:"99MJ7700",trademark:"ASD",trailerNumber:"99B5544",otherParticulars:"khgjjj",carrier:forwardingRef).save()

            def truck2 = Truck.findByRegistrationNo("2A22")?:new Truck(registrationNo: "2A22", typeOfVehicle:"kjdddy",chassisNo:"997GGG7333",trademark:"HJK",trailerNumber:"99K22244",otherParticulars:"ksewdwjj",carrier:forwardingRef).save()


        }
    }
    def destroy = {
    }
}
