package cargo.cargoItem

import cargo.Shipment
import cargo.User

class CargoItem {

//    static searchable = true
    String item
    String typeOfPackage
    String commodity
    String unitOfMeasure
    String grade
    Double rateOrCharge
    Integer noOfPackage = 0I
    Double grossWeight = 0D
    Double totalWeight = 0D
    Double chargeableWeight = 0D
    Double width = 0D
    Double length = 0D
    Double height = 0D
    Double volume = 0D
    Double chargeableRate = 0D
    Double totalVolume = 0D

    Shipment shipment
    User user

    static constraints = {

        item(nullable: false)
        commodity(nullable: false)
        typeOfPackage(nullable: false)
        noOfPackage(nullable: false)
        unitOfMeasure(nullable: false,inList: ["kg","ton"])
        grade(nullable: true)
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

    String toString(){"$item"}

}

