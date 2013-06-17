package cargo.freight

import cargo.Truck

class RoadFreight extends Freight {

    static searchable = true
    String CMR
    Double totalCollect
    Double totalPrepaid


    static constraints = {


        CMR(nullable: false)
        totalCollect(nullable: true)
        totalPrepaid(nullable: true)
    }
}
