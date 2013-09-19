package cargo.insuranceCertificate

import cargo.LocalAgent


class AssignedInsuranceCert    {

    LocalAgent agent
    Date sendingDate
    String status
    Integer serialNumFrom
    Integer serialNumTo
    Integer couponNumFrom
    Integer couponNumTo
    Integer totalCount
    Integer remainedCount

    InsuranceCert insuranceCert

    static belongsTo = [insuranceCert:InsuranceCert ]
    static hasMany = [usedInsuranceCert: UsedInsuranceCert]

    static mapping = {insuranceCert column: 'code'}

    static constraints = {

        agent(nullable: false)
        sendingDate(nullable: false)
        insuranceCert(nullable: false)
        couponNumFrom(nullable: false)
        couponNumTo(nullable: false)
        serialNumFrom(nullable: false)
        serialNumTo(nullable: false)
        totalCount(nullable: false)
        status(nullable: false,inList: ["Active","Returned","Invalidated"])
        remainedCount(nullable: true)
    }

    String toString(){"$agent"}


}
