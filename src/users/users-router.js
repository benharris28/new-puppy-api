const path = require('path')
const express = require('express')
const UsersService = require('./users-service')

const usersRouter = express.Router()
const jsonBodyParser = express.json()

usersRouter
.route('/')
.get(jsonBodyParser, (req, res, next) => {
    const { id } = req.body;
    
    UsersService.getById(
        req.app.get('db'),
        id
    )
    .then(user => {
        res.json(user)
    })
    .catch(next)
})

module.exports = usersRouter;