package cargo.insuranceCertificate

import cargo.City
import cargo.LocalAgent
import cargo.Shipment


class OneSheetInsuranceCert {

    Integer insuranceNum
    Date issueDate
    LocalAgent agent
    City transitFrom
    City transitTo
    Double totalCost

    Shipment shipment

    static constraints = {

        agent(nullable: false)

        shipment(nullable: false)
        insuranceNum(nullable: false)
        issueDate(nullable: false,persian:true)
        transitFrom(nullable: false)
        transitTo(nullable: false)
        totalCost(nullable: false)
    }
}
