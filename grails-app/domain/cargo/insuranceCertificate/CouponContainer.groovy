package cargo.insuranceCertificate

class CouponContainer {

    Integer serialNumFrom
    Integer serialNumTo
    Integer couponNumFrom
    Integer couponNumTo
    Integer totalCount

    static belongsTo = [UsedInsuranceCert]
    Boolean deleted
    Integer indx

    static transients = ['deleted']

    static constraints = {

        couponNumFrom(nullable: false)
        couponNumTo(nullable: false)
        serialNumFrom(nullable: false)
        serialNumTo(nullable: false)
        totalCount(nullable: true)

    }

    String toString(){"$couponNumFrom-$couponNumTo"}
}
