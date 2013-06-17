package cargo.insuranceCertificate




class InsuranceCert {

    String insuranceCo
    Date purchaseDate
    Integer totalCount
    Integer serialNumFrom
    Integer serialNumTo



    static constraints = {

        insuranceCo(nullable: false)
        purchaseDate(nullable: false)
        serialNumFrom(nullable: false)
        serialNumTo(nullable: false)
        totalCount(nullable: false)
    }

    String toString(){"$insuranceCo"}
}
