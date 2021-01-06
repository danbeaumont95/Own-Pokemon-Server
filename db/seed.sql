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
    pokemon_base VARCHAR(30)
);

INSERT INTO pokemon_type
(pokemon_type_name, pokemon_type_strong_against, pokemon_type_weak_against)
VALUES
('Fire', 'Grass', 'Water'),
('Water', 'Fire', 'Grass'),
('Grass', 'Water', 'Fire');

INSERT INTO pokemon
(pokemon_name, pokemon_type_id, pokemon_level, pokemon_base)
VALUES
('Charmander', 1, 30, 'Base'),
('Charmeleon', 1, 60, 'Mid'),
('Charizard', 1, 95, 'High'),
('Rapidash', 1, 80, 'Mid'),
('Arcanine', 1, 75, 'High'),
('Flareon', 1, 50, 'Mid'),
('Groudon', 1, 99, 'Legendary'),
('Squirtle', 2, 30, 'Base'),
('Wartortle', 2, 60, 'Mid'),
('Blastoise', 2, 95, 'High'),
('Golduck', 2, 20, 'Base'),
('Poliwhirl', 2, 40, 'Mid'),
('Mudkip', 2, 1, 'Base'),
('Kyorgre', 2, 99, 'Legendary'),
('Bulbasaur', 3, 30, 'Base'),
('Ivysaur', 3, 60, 'Mid'),
('Venusaur', 3, 95, 'High'),
('Victreebell', 3, 20, 'Base'),
('Exeggcute', 3, 45, 'Mid'),
('Oddish', 3, 15, 'Base'),
('Leafeon', 3, 10, 'Base');