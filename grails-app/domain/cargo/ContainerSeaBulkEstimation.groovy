package cargo

class ContainerSeaBulkEstimation {
    Integer noOfContainer
    String type
    String size
    static belongsTo = [SeaCostEstimation]
    Boolean deleted
    Integer indx

    static transients = ['deleted']

    static constraints = {
        noOfContainer(nullable: true)
        type(nullable: true, inList:["DC","OT'","FR","RF"])
        size(nullable: true, inList:["20'","40'"])

    }

    String toString(){"$noOfContainer,$type,$size"}
}
