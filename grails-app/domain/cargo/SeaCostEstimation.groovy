package cargo

class SeaCostEstimation {

//    static searchable = true
    Date rateDate = new Date()
    City portOfLoading
    City portOfDischarge

    Boolean container
    Boolean bulk
    Double weight  //kg should be added beside weight in grid & form
    Double measurment   //CBM should be added beside weight in grid & form
    Double freightTon
    String route
    Float totalRate
    String currency
    Integer day
    String remark
    String additionals
    Boolean deprecated
    static hasMany = [containers:ContainerSeaBulkEstimation]
    static composites=["containers"]


    static constraints = {
        rateDate(nullable: false)
        portOfLoading(nullable: false)
        portOfDischarge(nullable: false)
        container(nullable: true)
        containers()
        bulk(nullable: true)
        weight(nullable: true)
        measurment(nullable: true)
        freightTon(nullable: true)
        day(nullable: true)
        route(nullable: false)
        remark(nullable: true, maxSize : 5000)
        additionals(nullable: true)
        totalRate(nullable: false)
        currency(nullable: false,inList:["USD","CAD","EUR","Rial","Lira","AED"])
        deprecated(nullable: true)






    }
}
