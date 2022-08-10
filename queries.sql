/*Queries that provide answers to the questions from all projects.*/

 //Name ends in "mon"
 SELECT * FROM animals WHERE name LIKE '%mon%';
 
 //Born between 2016 and 2019.
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';

//Neutered and have less than 3 escape attempts
SELECT name FROM animals WHERE neutered = TRUE AND escape_attempts < 3;


//date of birth of all animals named either "Agumon" or "Pikachu".
SELECT date_of_birth FROM animals WHERE name='Agumon' OR name='Pikachu';


//name and escape attempts of animals that weigh more than 10.5kg
SELECT name, escape_attempts from animals WHERE weight_kg > 10.5;

//all animals that are neutered.
SELECT * FROM animals WHERE neutered = TRUE;

//all animals not named Gabumon
SELECT * FROM animals WHERE name != 'Gabumon';


//animals with a weight between 10.4kg and 17.3kg
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;


//How many animals are there?
SELECT COUNT(name) FROM animals;

//How many animals have never tried to escape?
SELECT COUNT(escape_attempts) FROM animals
WHERE escape_attempts = 0;

//What is the average weight of animals?
SELECT AVG(weight_kg) FROM animals;


//Who escapes the most, neutered or not neutered animals?
SELECT MAX(escape_attempts) as max_escapes FROM animals WHERE neutered = 'true';
SELECT MAX(escape_attempts) as max_escapes FROM animals WHERE neutered = 'false';



What is the minimum and maximum weight of each type of animal?
SELECT MAX(weight_kg) as max_Weigth FROM animals WHERE species = 'pokemon';
SELECT MIN(weight_kg) as min_Weigth FROM animals WHERE species = 'pokemon';

SELECT MAX(weight_kg) as max_Weigth FROM animals WHERe species = 'digimon';
SELECT MIN(weight_kg) as min_Weigth FROM animals WHERe species = 'digimon';

//What is the average number of escape attempts per animal type of those born between 1990 and 2000?
SELECT AVG(escape_attempts) FROM animals WHERE species = 'pokemon' AND date_of_birth BETWEEN '1990-01-01' AND '2000-01-01';