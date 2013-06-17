package cargo.cargoItem

import cargo.User
import cargo.freight.RailFreight

class RailCargoItem {

    static searchable = true

    CargoItem cargoItem
    RailFreight railFreight

    String wagonType
    Double wagonNum
    String wagonStatus

    Date loadingDate
    Date etaDate // Estimated Time Arrival
    Date arrivalDate
    Date deliveryOrderDate

    User user

    static constraints = {

        wagonType(inList: ["Iranian", "Russian"])
        wagonNum(nullable: false)
        wagonStatus(inList: ["Flat", "Covered"])

        loadingDate(nullable: false)
        etaDate(nullable: false)
        arrivalDate(nullable: false)
        deliveryOrderDate(nullable: false)


    }
}
