/*Queries that provide answers to the questions from all projects.*/

 //Name ends in "mon"
 SELECT * FROM animals WHERE name LIKE '%mon%';
 
 //Born between 2016 and 2019.
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';

//Neutered and have less than 3 escape attempts
SELECT name FROM animals WHERE neutered = 'T' AND escape_attempts < 3;


//date of birth of all animals named either "Agumon" or "Pikachu".
SELECT date_of_birth FROM animals WHERE name='Agumon' OR name='Pikachu';


//name and escape attempts of animals that weigh more than 10.5kg
SELECT name, escape_attempts from animals WHERE weight_kg > 10.5;

//all animals that are neutered.
SELECT * FROM animals WHERE neutered = 'T';

//all animals not named Gabumon
SELECT * FROM animals WHERE name != 'Gabumon';


//animals with a weight between 10.4kg and 17.3kg
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;