package cargo.cargoItem

import cargo.Driver
import cargo.Truck
import cargo.User
import cargo.freight.RoadFreight

class RoadCargoItem {

//    static searchable = true

    CargoItem cargoItem
    RoadFreight roadFreight


    String plaque
    String truck
    String containerType
    Integer containerNum
    Boolean ftl
    Boolean ltl
    String driver

    Date loadingDate
    Date etaDate // Estimated Time Arrival
    Date arrivalDate
    Date deliveryOrderDate

    User user


    static constraints = {

        truck(nullable: true,inList: ["Flat","Tilt","RF","Special"])
        plaque(nullable: false)
        containerType(nullable: true, inList:["20'","40'","RF","other"])
        containerNum(nullable: true)
        ftl(nullable: true)
        ltl(nullable: true)
        driver(nullable: true)

        loadingDate(nullable: false)
        etaDate(nullable: false)
        arrivalDate(nullable: false)
        deliveryOrderDate(nullable: false)



    }


}
