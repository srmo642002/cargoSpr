package cargo

import org.apache.commons.lang.builder.HashCodeBuilder

class UserRole implements Serializable {

    User user
    Role role

    Boolean createUser
    Boolean assignRoles
    Boolean createShipment
    Boolean editShipment
    Boolean createCargo
    Boolean editCargo
    Boolean deleteCargo



    boolean equals(other) {
        if (!(other instanceof UserRole)) {
            return false
        }

        other.user?.id == user?.id &&
                other.role?.id == role?.id
    }

    int hashCode() {
        def builder = new HashCodeBuilder()
        if (user) builder.append(user.id)
        if (role) builder.append(role.id)
        builder.toHashCode()
    }

    static UserRole get(long userId, long roleId) {
        find 'from UserRole where user.id=:userId and role.id=:roleId',
                [userId: userId, roleId: roleId]
    }

    static UserRole create(User user, Role role, boolean flush = false) {
        new UserRole(user: user, role: role).save(flush: flush, insert: true)
    }

    static boolean remove(User user, Role role, boolean flush = false) {
        UserRole instance = UserRole.findByUserAndRole(user, role)
        if (!instance) {
            return false
        }

        instance.delete(flush: flush)
        true
    }

    static void removeAll(User user) {
        executeUpdate 'DELETE FROM UserRole WHERE user=:user', [user: user]
    }

    static void removeAll(Role role) {
        executeUpdate 'DELETE FROM UserRole WHERE role=:role', [role: role]
    }

    static mapping = {
        id composite: ['role', 'user']
        version false
    }

    static constraints = {

        user(nullable: false)

        createUser(nullable: true)
        assignRoles(nullable: true)
        createShipment(nullable: true)
        editShipment(nullable: true)
        createCargo(nullable: true)
        editCargo(nullable: true)
        deleteCargo(nullable: true)

        role(nullable: true)







    }

}



