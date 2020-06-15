const REGEX_UPPER_LOWER_NUMBER_SPECIAL = /(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&])[\S]+/

const UsersService = {
    getById(db, id) {
        return db
            .from('users')
            .select('*')
            .where('id', id)
            .first()
    }
}

module.exports = UsersService