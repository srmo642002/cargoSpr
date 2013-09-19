package cargo

class Driver {
    String name
    String family
    String fatherName
    String idNumber
    Date birthDate
    String placeOfBirth
    String mobile
    String homeTel
    String address
    String passportNumber
    Date passportDateOfIssue
    Date passportValidity
    String exitPermissionNumber
    Date exitPermissionDateOfIssue
    Date exitPermissionValidity

    String toString(){"$family"}



    static constraints = {
        name(blank: false)
        family(blank: false)
        fatherName(blank: false)
        idNumber(blank: false)
        birthDate(nullable: false)
        placeOfBirth(blank: false)
        mobile(blank: false)
        homeTel(blank: false)
        address(blank: false, maxSize: 1024)
        passportNumber()
        passportDateOfIssue()
        passportValidity()
        exitPermissionNumber()
        exitPermissionDateOfIssue()
        exitPermissionValidity()
    }
}
