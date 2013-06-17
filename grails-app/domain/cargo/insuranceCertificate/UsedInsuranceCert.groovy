package cargo.insuranceCertificate

import cargo.City
import cargo.LocalAgent
import cargo.Shipment

class UsedInsuranceCert  {

    Shipment shipment

    City transitFrom
    City transitTo
    Double totalCost
    Date usedDate
    Integer totalCount
    Integer serialNumFrom
    Integer serialNumTo

    AssignedInsuranceCert assignedInsuranceCert



    static constraints = {

        assignedInsuranceCert(nullable: false)
        usedDate(nullable: false)
        shipment(nullable: false)
        transitFrom(nullable: false)
        transitTo(nullable: false)
        serialNumFrom(nullable: false)
        serialNumTo(nullable: false)
        totalCount(nullable: false)
        totalCost(nullable: false)
    }
}
