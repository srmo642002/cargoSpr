package cargo.freight

import cargo.Truck

class RoadFreight extends Freight {

//    static searchable = true
    String cMR
    Double totalCollect
    Double totalPrepaid


    static constraints = {


        cMR(nullable: false)
        totalCollect(nullable: true)
        totalPrepaid(nullable: true)
    }
}
