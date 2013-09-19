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

    Double weight
    Double tariff
    String commodity

    Boolean receipt
    Date receiptDate
    Integer receiptNum

    Boolean oneSheetInsurance
    Boolean multiSheetInsurance

    Shipment shipment
    InsuranceCert insuranceCert


    static constraints = {

        transitType(nullable: false, inList:["Internal Transit","External Transit"])
        customsDate()
        shipment(nullable: false)
        transitMode(nullable: false, inList: ["Road","Rail","Air","Marine"])

        permitsNum(nullable: false)
        kutazhNum(nullable: false)
        rowNum(nullable: false)

        origin(nullable: false)
        destination(nullable: false)

        weight(nullable: false)
        tariff(nullable: false)
        commodity(nullable: false)

        oneSheetInsurance()
        multiSheetInsurance()
        insuranceCert(nullable: true)

        receipt(nullable: true)
        receiptDate(nullable: true)
        receiptNum(nullable: true)


    }
}
