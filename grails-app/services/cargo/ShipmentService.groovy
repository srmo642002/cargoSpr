package cargo

class ShipmentService {

    def principalService
    def generateReferenceCode(Shipment shipment){

        def autoGen = 0
        if (principalService.user?.groups?.groups== "TR"){
            autoGen = 5000
        }
        else if (principalService.user?.groups?.groups== "FW"){
            autoGen = 2000
        }
        else if (principalService.user?.groups?.groups== "MT"){
            autoGen = 3000
        }
        autoGen+=  (Shipment.count()+1)%1000
        return "${shipment.dateIndex} ${principalService.user?.groups}-${autoGen}"



    }

}
