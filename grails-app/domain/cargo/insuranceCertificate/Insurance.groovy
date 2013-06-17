package cargo.insuranceCertificate

class Insurance {

    Integer totalCount
    Integer serialNumFrom
    Integer serialNumTo

    static constraints = {

        totalCount(nullable: false)
        serialNumFrom(nullable: false,)
        serialNumTo(nullable: false)
    }

    static mapping = {
        tablePerHierarchy false
    }
}
