const path = require('path')
const express = require('express')
const MapService = require('./map-service')

const mapRouter = express.Router()
const jsonBodyParser = express.json()

mapRouter
.route('/')
.get((req, res, next) => {
  
    const { lat, lng } = req.query
    console.log(lat)
    
    MapService.getMarkers(
        req.app.get('db'),
        lat,
        lng
    )
    .then(markers => {
        res.json(markers)
    })
    .catch(next)
})

module.exports = mapRouter;