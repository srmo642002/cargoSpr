package cargo.cargoItem

import cargo.Driver
import cargo.Truck
import cargo.User
import cargo.freight.RoadFreight

class RoadCargoItem {

//    static searchable = true

    CargoItem cargoItem
    RoadFreight roadFreight


    String plateNo
    String truck
    String containerType
    Integer containerNum
    Boolean ftl
    Boolean ltl
    String border
    String driver

    Date loadingDate
    Date etaDate // Estimated Time Arrival
    Date borderPass
    Date arrivalDate
    Date deliveryDate

    User user


    static constraints = {

        truck(nullable: true,inList: ["Flat","Tilt","RF","Special"])
        plateNo(nullable: false)
        containerType(nullable: true, inList:["20'","40'","RF","other"])
        containerNum(nullable: true)
        ftl(nullable: true)
        ltl(nullable: true)
        border(nullable: true)
        driver(nullable: true)

        loadingDate(nullable: false)
        etaDate(nullable: false)
        borderPass(nullable: true)
        arrivalDate(nullable: true)
        deliveryDate(nullable: true)



    }


}
