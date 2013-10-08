package cargo.cargoItem

import cargo.Shipment
import cargo.User

class CargoItem {

//    static searchable = true
    String item
    Boolean nonContainerized
    Boolean containerized
    String containerNo
    String size
    String type
    String commodity
    String typeOfPackage
    Integer noOfPackage = 0I
    String grade
    Double grossWeight = 0D
    Double totalWeight = 0D
    Double volume = 0D
    Boolean dg
    Float incoClass
    Integer unNo
//    Double chargeableWeight = 0D
//    Double width = 0D
//    Double length = 0D
//    Double height = 0D
//    Double chargeableRate = 0D
//    Double totalVolume = 0D

    Shipment shipment
    User user

    static constraints = {

        item(nullable: false)
        nonContainerized()
        containerized()
        containerNo(nullable: true)
        size(nullable: true,inList: ["20'","40'","45'"])
        type(nullable: true,inList: ["GP","OT","FR","RF"])
        commodity(nullable: false,maxSize: 1000)
        typeOfPackage(nullable: false)
        noOfPackage(nullable: false)
        grade(nullable: true)
        grossWeight(nullable: false)
        totalWeight(nullable: false)
        volume(nullable: true)
        dg()
        incoClass(nullable: true)
        unNo(nullable: true)
//        rateOrCharge(nullable: false)
//        chargeableWeight(nullable: false)
//        width(nullable: true)
//        length(nullable: true)
//        height(nullable: true)
//        totalVolume(nullable: true)
//        chargeableRate(nullable: true)
        shipment(nullable: false)

    }

    String toString(){"$item"}

}

