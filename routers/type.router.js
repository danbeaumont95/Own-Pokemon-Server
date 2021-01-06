const express = require('express')
const typeRouter = express.Router();
const { getAllTypes, getPokemonByType, getPokemonByLevel, getPokemonByBase, getDansPokemon } = require("../controllers/type.controller")

typeRouter.route('/').get(getAllTypes)

typeRouter.route('/:pokemon_type_id').get(getPokemonByType)
//localhost:9090/api/type/2

typeRouter.route('/level/:pokemon_level').get(getPokemonByLevel)

typeRouter.route('/base/:pokemon_base').get(getPokemonByBase)

typeRouter.route('/Dans/:pokemon_owned').get(getDansPokemon)

module.exports = typeRouter;