const path = require('path')
const express = require('express')
const ProductService = require('./product-service')

const productRouter = express.Router()
const jsonBodyParser = express.json()

productRouter
.route('/')
.get((req, res, next) => {
    const active = true
    
    ProductService.getAllProducts(
        req.app.get('db'),
        active
    )
    .then(products => {
        res.json(products)
    })
    .catch(next)
})

module.exports = productRouter;