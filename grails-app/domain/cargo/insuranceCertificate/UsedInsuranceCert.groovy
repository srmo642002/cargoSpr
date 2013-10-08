package cargo.insuranceCertificate

import cargo.City
import cargo.LocalAgent
import cargo.Shipment

class UsedInsuranceCert  {

    Shipment shipment

    City transitFrom
    City transitTo

    Date usedDate
    Double totalCost
    Integer total

    InsuranceCert insuranceCert
    AssignedInsuranceCert assignedInsuranceCert
    CustomsOperations customsOperations



    static hasMany = [coupons:CouponContainer]
    static composites=["coupons"]





    static constraints = {

        assignedInsuranceCert(nullable: false)
        insuranceCert(nullable: false)
        usedDate(nullable: false,persian:true)
        shipment(nullable: false)

        transitFrom(nullable: false)
        transitTo(nullable: false)
        coupons()
        total(nullable: true)
        totalCost(nullable: true)


    }
}
