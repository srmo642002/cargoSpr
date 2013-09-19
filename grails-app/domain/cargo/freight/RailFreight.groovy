package cargo.freight

import cargo.Shipment
import cargo.User
import cargo.cargoItem.RailCargoItem

class RailFreight extends Freight {

//    static searchable = true
    String railWayCo
    Double sMGSNO
    Double stationCode

    Double totalCollect
    Double totalPrepaid

    User user



    static constraints = {

        railWayCo(nullable: false)
        sMGSNO(nullable: false)
        stationCode(nullable: false)
        totalCollect(nullable: true)
        totalPrepaid(nullable: true)

    }
}
