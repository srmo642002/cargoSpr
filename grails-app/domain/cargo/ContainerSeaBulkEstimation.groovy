package cargo

class ContainerSeaBulkEstimation {
    Integer noOfContainer
    String type
    String size
    static belongsTo = [SeaCostEstimation]
    Boolean deleted
    Integer indx
    Float rate
    String ownership
    Float total

    static transients = ['deleted']

    static constraints = {

        noOfContainer(nullable: true)
        type(nullable: true, inList:["DC","OT'","FR","RF"])
        size(nullable: true, inList:["20'","40'"])
        ownership(nullable: true,inList: ["SOC","COC"])
        rate(nullable: false)
        total(nullable: true)


    }

    String toString(){"$noOfContainer,$type,$size,$ownership,$rate"}
}
