package cargo.cargoItem

import cargo.Shipment
import cargo.User

class CargoItem {

    static searchable = true
    String serialNumber
    String kindOfPackage
    String commodity
    String unitOfMeasure
    Double rateOrCharge
    Integer noOfPackage = 0I
    Double grossWeight = 0D
    Double totalWeight
    Double chargeableWeight
    Double width = 0D
    Double length = 0D
    Double height = 0D
    Double volume
    Double chargeableRate
    Double totalVolume

    Shipment shipment
    User user

    static constraints = {

        serialNumber(nullable: false)
        kindOfPackage(nullable: false)
        commodity(nullable: false)
        unitOfMeasure(nullable: false)
        noOfPackage(nullable: false)
        grossWeight(nullable: false)
        totalWeight(nullable: false)
        rateOrCharge(nullable: false)
        chargeableWeight(nullable: false)
        width(nullable: true)
        length(nullable: true)
        height(nullable: true)
        volume(nullable: true)
        totalVolume(nullable: true)
        chargeableRate(nullable: true)
        shipment(nullable: false)

    }

    String toString(){"$serialNumber"}

}

