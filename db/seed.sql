DROP DATABASE IF EXISTS pokemon_database;
CREATE DATABASE pokemon_database;

\c pokemon_database;

CREATE TABLE pokemon_type
(
    pokemon_type_id SERIAL PRIMARY KEY,
    pokemon_type_name VARCHAR(20),
    pokemon_type_strong_against VARCHAR(20),
    pokemon_type_weak_against VARCHAR(20)
);

CREATE TABLE pokemon(
    pokemon_id SERIAL PRIMARY KEY,
    pokemon_name VARCHAR(30),
    pokemon_type_id INT REFERENCES pokemon_type(pokemon_type_id),
    pokemon_level INT,
    pokemon_base VARCHAR(30),
    pokemon_owned BOOLEAN
);

INSERT INTO pokemon_type
(pokemon_type_name, pokemon_type_strong_against, pokemon_type_weak_against)
VALUES
('Fire', 'Grass', 'Water'),
('Water', 'Fire', 'Grass'),
('Grass', 'Water', 'Fire');

INSERT INTO pokemon
(pokemon_name, pokemon_type_id, pokemon_level, pokemon_base, pokemon_owned)
VALUES
('Charmander', 1, 30, 'Base', True),
('Charmeleon', 1, 60, 'Mid', True),
('Charizard', 1, 95, 'High', True),
('Rapidash', 1, 80, 'Mid', False),
('Arcanine', 1, 75, 'High', False),
('Flareon', 1, 50, 'Mid', False),
('Groudon', 1, 99, 'Legendary', True),
('Squirtle', 2, 30, 'Base', True),
('Wartortle', 2, 60, 'Mid', False),
('Blastoise', 2, 95, 'High', True),
('Golduck', 2, 20, 'Base', False),
('Poliwhirl', 2, 40, 'Mid', False),
('Mudkip', 2, 1, 'Base', False),
('Kyorgre', 2, 99, 'Legendary', True),
('Bulbasaur', 3, 30, 'Base', False),
('Ivysaur', 3, 60, 'Mid', False),
('Venusaur', 3, 95, 'High', True),
('Victreebell', 3, 20, 'Base', False),
('Exeggcute', 3, 45, 'Mid', False),
('Oddish', 3, 15, 'Base', False),
('Leafeon', 3, 10, 'Base', False);