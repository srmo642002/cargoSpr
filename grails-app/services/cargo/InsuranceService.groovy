package cargo

import cargo.insuranceCertificate.InsuranceCert
import fi.joensuu.joyds1.calendar.JalaliCalendar
import rapidgrails.JalaliDateFormat

class InsuranceService {

    def generateCode(InsuranceCert insuranceCert){
        JalaliCalendar cal=new JalaliCalendar()
        def eCal=Calendar.instance
        eCal.time=insuranceCert?.purchaseDate
        cal.set(eCal)
        return "${insuranceCert.insuranceCo} ${cal.year}.${cal.month}.${cal.day} "

    }
}
