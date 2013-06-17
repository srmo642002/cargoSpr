package cargo

import org.apache.commons.collections.list.LazyList
import org.apache.commons.collections.FactoryUtils

class City {
    Country country
    String title
    String persianTitle
    Boolean port
    String abbreviation

    static hasMany = [airports: Airport]

    static constraints = {
        country(nullable: false)
        title(blank: false, maxSize: 50)
        persianTitle(blank: false, maxSize: 50)
        port(nullable: false)
        abbreviation(blank: false)
    }

    @Override
    String toString() {
        title
    }
}
