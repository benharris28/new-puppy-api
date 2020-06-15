const REGEX_UPPER_LOWER_NUMBER_SPECIAL = /(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&])[\S]+/

const ProductService = {
    getAllProducts(db, active) {
        return db
            .from('products')
            .select('*')
            .where('active', active)
         
    }
}

module.exports = ProductService