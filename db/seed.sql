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
    pokemon_level INT
);

INSERT INTO pokemon_type
(pokemon_type_name, pokemon_type_strong_against, pokemon_type_weak_against)
VALUES
('Fire', 'Grass', 'Water'),
('Water', 'Fire', 'Grass'),
('Grass', 'Water', 'Fire');

INSERT INTO pokemon
(pokemon_name, pokemon_type_id, pokemon_level)
VALUES
('Charmander', 1, 30),
('Charmeleon', 1, 60),
('Charizard', 1, 95),
('Rapidash', 1, 80),
('Arcanine', 1, 75),
('Flareon', 1, 50),
('Groudon', 1, 99),
('Squirtle', 2, 30),
('Wartortle', 2, 60),
('Blastoise', 2, 95),
('Golduck', 2, 20),
('Poliwhirl', 2, 40),
('Mudkip', 2, 1),
('Kyorgre', 2, 99),
('Bulbasaur', 3, 30),
('Ivysaur', 3, 60),
('Venusaur', 3, 95),
('Victreebell', 3, 20),
('Exeggcute', 3, 45),
('Oddish', 3, 15),
('Leafeon', 3, 10);