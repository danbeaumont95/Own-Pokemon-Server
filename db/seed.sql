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
    pokemon_type_id INT REFERENCES pokemon_type(pokemon_type_id)
);

INSERT INTO pokemon_type
(pokemon_type_name, pokemon_type_strong_against, pokemon_type_weak_against)
VALUES
('Fire', 'Grass', 'Water'),
('Water', 'Fire', 'Grass'),
('Grass', 'Water', 'Fire');

INSERT INTO pokemon
(pokemon_name, pokemon_type_id)
VALUES
('Charmander', 1),
('Charmeleon', 1),
('Charizard', 1),
('Rapidash', 1),
('Arcanine', 1),
('Flareon', 1),
('Groudon', 1),
('Squirtle', 2),
('Wartortle', 2),
('Blastoise', 2),
('Golduck', 2),
('Poliwhirl', 2),
('Mudkip', 2),
('Kyorgre', 2),
('Bulbasaur', 3),
('Ivysaur', 3),
('Venusaur', 3),
('Victreebell', 3),
('Exeggcute', 3),
('Oddish', 3),
('Leafeon', 2);