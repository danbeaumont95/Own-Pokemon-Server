const client = require('../db/connection')

exports.selectAllTypes = () => {
    return client.query('SELECT * FROM pokemon_type;')
    .then((result) => {
        return result.rows;
    })
}

exports.selectPokemonByType = (pokemon_type_id) => {
    return client.query(`SELECT * FROM pokemon WHERE pokemon.pokemon_type_id = $1;`, [pokemon_type_id])
    .then((pokemonType) => {
        
        console.log(pokemonType.rows)
        return pokemonType.rows;
    })
}

exports.selectPokemonByLevel = (pokemon_level) => {
    return client.query(`SELECT * FROM pokemon WHERE pokemon.pokemon_level >= $1;`, [pokemon_level])
    .then((pokemonLevel) => {
        
        return pokemonLevel.rows;
    })
}