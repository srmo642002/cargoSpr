package cargo.cargoItem

import cargo.User
import cargo.freight.AirFreight

class AirCargoItem {

//    static searchable = true

    CargoItem cargoItem
    AirFreight airFreight

    String aircraft
    String flightNum

    Date loadingDate
    Date etaDate // Estimated Time Arrival
    Date arrivalDate
    Date deliveryDate

    User user


    static constraints = {

        aircraft(nullable: false)
        flightNum(nullable: false)

        loadingDate(nullable: false)
        etaDate(nullable: false)
        arrivalDate(nullable: false)
        deliveryDate(nullable: false)


    }


}
