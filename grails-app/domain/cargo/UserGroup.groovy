package cargo

class UserGroup {

    String groups


    static constraints = {

        groups(blank: false,inList: ["MNG","DE","TR","FW","MT","FNC"])
    }

    String toString(){"$groups"}
}
