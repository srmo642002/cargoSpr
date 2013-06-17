package cargo

import cargo.cargoItem.AirCargoItem

class AirWaybill extends CostEstimation {


    String otherCharges // todo: Could be composite relation
    String insurancePremium // todo: Same as above

    Double prepaidWeightCharge // todo: Check if using embedded properties is a better way
    Double collectWeightCharge
    Double prepaidValuationCharges
    Double collectValuationCharges
    Double prepaidTax
    Double collectTax
    Double prepaidTotalOtherChargesDueAgent
    Double collectTotalOtherChargesDueAgent
    Double prepaidTotalOtherChargesDueCarrier
    Double collectTotalOtherChargesDueCarrier

    Double totalPrepaid
    Double totalCollect

    Double currencyConversionRates
    Double ccChargesInDestCurrency
    Double chargesAtDestination
    Double totalCollectCharges

    String signatureOfShipperOrHisAgent
    String signatureOfIssuingCarrierOrItsAgent

    Date executionDate
    Date executionPlace

    static hasMany = [cargoItems: AirCargoItem]

    static constraints = {
    }
}
