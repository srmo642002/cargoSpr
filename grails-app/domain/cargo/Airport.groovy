package cargo

class Airport {

    String title
    String abbreviation //IATA CODE
    City city



    String toString(){"$title"}

    static constraints = {
        city(nullable: false)
        title(blank: false)
        abbreviation(blank: false)
    }
}
