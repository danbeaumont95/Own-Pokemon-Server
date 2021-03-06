const { selectAllTypes, selectPokemonByType, selectPokemonByLevel, selectPokemonByBase, selectDans } = require('../models/type.models')

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

exports.getPokemonByLevel = (req, res, next) => {
    const { pokemon_level } = req.params;
    selectPokemonByLevel(pokemon_level)
    .then((pokemonLevel) => {
        res.send({ pokemonLevel })
    })
}

exports.getPokemonByBase = (req, res, next) => {
    const { pokemon_base } = req.params;
    selectPokemonByBase(pokemon_base)
    .then((base) => {
        res.send({ base })
    })
}

exports.getDansPokemon = (req, res, next) => {
    const { pokemon_owned } = req.params;
    selectDans(pokemon_owned)
    .then((dan) => {
        res.send({ dan })
    })
}
