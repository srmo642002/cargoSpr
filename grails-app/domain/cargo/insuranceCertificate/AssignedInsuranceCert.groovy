package cargo.insuranceCertificate

import cargo.LocalAgent


class AssignedInsuranceCert    {

    LocalAgent agent
    Date sendingDate
    Integer totalCount
    Integer serialNumFrom
    Integer serialNumTo

    InsuranceCert insuranceCert



    static constraints = {

        agent(nullable: false)
        sendingDate(nullable: false)
        serialNumFrom(nullable: false)
        serialNumTo(nullable: false)
        totalCount(nullable: false)
    }

    String toString(){"$agent"}


}
