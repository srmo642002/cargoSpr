package cargo

class ForwardingReference {

    String title
    String address
    String telephone
    String fax
    String webSite
    String contactPerson
    Boolean asACarrier
    Boolean asANotifyParty
    Boolean asAShipper
    Boolean asAnAgent
    Boolean asAConsignee

    static constraints = {
        title(blank: false, maxSize: 50)
        address(maxSize: 512)
        telephone(maxSize: 12)
        fax(maxSize: 12)
        webSite(maxSize: 50)
        contactPerson(maxSize: 50)
        asAShipper(nullable: false)
        asAConsignee(nullable: false)
        asANotifyParty(nullable: false)
        asAnAgent(nullable: false)
        asACarrier(nullable: false)




    }

    @Override
    String toString() {
        title
    }
}
