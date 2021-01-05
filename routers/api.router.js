const express = require("express")
const apiRouter = express.Router()
const typeRouter = require("./type.router")

apiRouter.use('/type', typeRouter)
// /api/type To return all types

module.exports = apiRouter;