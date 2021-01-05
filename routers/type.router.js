const express = require('express')
const typeRouter = express.Router();
const { getAllTypes, getPokemonByType } = require("../controllers/type.controller")

typeRouter.route('/').get(getAllTypes)

typeRouter.route('/:pokemon_type_id').get(getPokemonByType)
//localhost:9090/api/type/2

module.exports = typeRouter;