package cargo

class CostEstimation {

//    static searchable = true
    Date rateDate = new Date()
    Country originCnt
    City originCty
    Country destinationCnt
    City destinationCty
    String truck
    String containerType
    Boolean ftl
    Boolean ltl
    Double weight
    Double overWeight
    String route
    Integer day
    Integer hour
    Double rate
    String currency
    String remark
    String observation
    Boolean deprecated



    static constraints = {

        rateDate(nullable: false)
        originCnt(nullable: false)
        originCty(nullable: false)
        destinationCnt(nullable: false)
        destinationCty(nullable: false)
        truck(nullable: true,inList: ["Flat","Tilt","RF","Special"])
        containerType(nullable: true, inList:["20'","40'","RF","other"])
        ftl(nullable: true)
        ltl(nullable: true)
        weight(nullable : false)
        overWeight(nullable: true)
        route(nullable : false)
        day(nullable: true)
        hour(nullable: true)
        remark(nullable: true, maxSize : 5000)
        observation(nullable: true, maxSize : 5000)
        rate(nullable : false)
        currency(nullable: false,inList:["USD","CAD","EUR","Rial","Lira","AED"])
        deprecated(nullable: true)



    }
}
