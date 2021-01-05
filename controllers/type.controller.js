const { selectAllTypes, selectPokemonByType } = require('../models/type.models')

exports.getAllTypes = (req, res, next) => {
    selectAllTypes()
    .then((type) => {
        res.status(200).send({ type })
    })
}

exports.getPokemonByType = (req, res, next) => {
    const { pokemon_type_id } = req.params;
    selectPokemonByType(pokemon_type_id)
    .then((pokemonType) => {
        res.send({ pokemonType })
    })
}