package cargo

class CostEstimation {

    static searchable = true
    Date rateDate = new Date()
    Country desCountry
    City desCity
    String containerType
    Double weight
    Double overWeight
    String route
    Integer day
    Integer week
    Integer month
    Integer hour
    Double rate
    String remark
    String observation
    Boolean deprecated



    static constraints = {

        rateDate(nullable: false)
        desCountry(nullable : false)
        desCity(nullable: false)
        containerType(inList:["20'","40'","RF","other"])
        rate(nullable : false)
        remark(maxSize : 5000)
        deprecated(nullable: true)
        deprecated(nullable: false)
        weight(nullable : false)
        overWeight()
        route(nullable : false)
        day(nullable: true)
        week(nullable: true)
        month(nullable: true)
        hour(nullable: true)
        observation(maxSize : 5000)



    }
}
