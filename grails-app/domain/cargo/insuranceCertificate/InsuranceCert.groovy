package cargo.insuranceCertificate




class InsuranceCert {

    String insuranceCo
    Date purchaseDate
    Date expireDate
    String code

    Integer serialNumFrom
    Integer serialNumTo
    Integer couponNumFrom
    Integer couponNumTo
    Integer totalCount
    Integer remainedCount

    String status


    static hasMany = [assignedInsuranceCert: AssignedInsuranceCert,usedInsuranceCert: UsedInsuranceCert]


    static constraints = {

        insuranceCo(nullable: false)
        purchaseDate(nullable: false,persian:true)
        expireDate(nullable: false,persian:true)
        code(nullable: false)

        couponNumFrom(nullable: false)
        couponNumTo(nullable: false)
        serialNumFrom(nullable: false)
        serialNumTo(nullable: false)
        totalCount(nullable: false)
        remainedCount(nullable: true)

    }

    String toString(){"$code"}
}
