const path = require('path')
const express = require('express')
const FoodService = require('./food-service')

const foodRouter = express.Router()
const jsonBodyParser = express.json()

foodRouter
.route('/')
.get((req, res, next) => {
  
    
    FoodService.getAllFood(
        req.app.get('db')
    )
    .then(food => {
        res.json(food)
    })
    .catch(next)
})

module.exports = foodRouter;