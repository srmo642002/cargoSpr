package cargo




class LocalAgent {
    City city
    String agent
    String telephone
    String fax
    String address




    static constraints = {
        city(nullable: false)
        agent(blank: false)
        telephone(blank: false)
        fax(blank: false)
        address(blank: false, maxSize: 1024)
    }

    String toString(){"$agent"}
}