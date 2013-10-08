package cargo

import cargo.freight.Freight
import cargo.cargoItem.CargoItem

class Shipment {

//    static searchable = true
    String referenceCode
    String dateIndex
    String client
    String blWb
    String description
    Country originCnt
    City originCty
    Country destinationCnt
    City destinationCty

    String freightCharge
    Double charge
    String currency

    ForwardingReference shipper
    ForwardingReference consignee
    ForwardingReference notifyParty
    ForwardingReference agent

    User user

    static hasMany = [frieghts: Freight, cargoItems: CargoItem]

    static constraints = {


        referenceCode(blank: false)
        dateIndex (nullable: false)
        client(blank: false)
        blWb(nullable: true)

        description(maxSize: 1024)
        originCnt(nullable: false)
        originCty(nullable: false)
        destinationCnt(nullable: false)
        destinationCty(nullable: false)

        freightCharge(blank: true, inList: ["Prepaid","Collect"])
        charge(nullable: true)
        currency(nullable: true, inList: ["USD","CAD","EUR","Rial","Lira","AED"])
        shipper(nullable: true)
        consignee(nullable: true)
        notifyParty(nullable: true)
        agent(nullable: true)
    }

    String toString(){"$client,$referenceCode"}


    static mapping = {
        table 'shipment'
        version false
        id generator: 'hilo',
                params: [table: 'hi_value',
                        column: 'next_value',
                        max_lo: 100]
    }
}


