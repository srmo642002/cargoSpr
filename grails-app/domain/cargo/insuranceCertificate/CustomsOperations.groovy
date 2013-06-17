package cargo.insuranceCertificate

import cargo.City
import cargo.Shipment

class CustomsOperations {

    String transitType
    Integer permitsNum
    Date customsDate
    String transitMode
    Integer kutazhNum
    Integer rowNum
    City origin
    City destination
    Boolean oneSheetInsurance
    Boolean multiSheetInsurance

    Shipment shipment




    static constraints = {

        transitType(nullable: false, inList:["Internal Transit","External Transit"])
        permitsNum(nullable: false)
        customsDate()
        shipment(nullable: false)
        transitMode(nullable: false, inList: ["Road","Rail","Air","Marine"])
        kutazhNum(nullable: false)
        rowNum(nullable: false)
        origin(nullable: false)
        destination(nullable: false)
        oneSheetInsurance()
        multiSheetInsurance()

    }
}
