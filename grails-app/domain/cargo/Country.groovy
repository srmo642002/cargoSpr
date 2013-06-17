package cargo

class Country {
    String title
    String persianTitle
    String abbreviation

    static hasMany = [ cities: City ]

    static constraints = {
        title(blank: false, maxSize: 50)
        persianTitle(blank: false, maxSize: 50)
        abbreviation(blank: false)
    }

    @Override
    String toString() {
        title
    }
}
