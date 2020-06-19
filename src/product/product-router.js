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
.post(jsonBodyParser, (req, res, next) => {
    const { active, image, product, brand, category, cost_large_dog, cost_medium_dog, cost_small_dog, purchase_text, description_text, canada_link, us_link } = req.body;

    const newProduct = { 
        active: false, 
        image, 
        product, 
        brand, 
        category, 
        cost_large_dog, 
        cost_medium_dog, 
        cost_small_dog, 
        purchase_text, 
        description_text, 
        canada_link, 
        us_link 
    } 

    ProductService.insertProduct(
        req.app.get('db'),
        newProduct
    )
        .then(product => {
            res
                .status(201)
                .location(path.posix.join(req.originalUrl))
                .json(product)
        })
        .catch(next) 
})


module.exports = productRouter;