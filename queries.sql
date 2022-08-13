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
 SELECT neutered, MAX(escape_attempts)
 FROM animals
 GROUP BY neutered;



// What is the minimum and maximum weight of each type of animal?

 SELECT 
	species, 
	MAX(weight_kg),
	MIN(weight_kg)
	FROM
	animals
	GROUP BY species;

//What is the average number of escape attempts per animal type of those born between 1990 and 2000?

 SELECT 
	species, 
	AVG(escape_attempts)
	FROM
	animals
	WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31'
	GROUP BY species;

	//What animals belong to Melody Pond?
SELECT animals.name AS animal_name, owners.full_name AS owner
FROM animals
LEFT JOIN owners
 ON owner_id = owners.id
WHERE owners.full_name = 'Melody Pond';

//List of all animals that are pokemon (their type is Pokemon)
SELECT animals.name
FROM animals 
LEFT JOIN species
ON species_id = species.id
WHERE animals.species_id = 1; 


SELECT owners.full_name, animals.name
FROM animals
RIGHT JOIN owners
ON owner_id = owners.id;


//How many animals are there per species?
SELECT species.name,
COUNT(*) FROM animals
RIGHT JOIN species
ON species_id = species.id
GROUP BY species.name;


//List all Digimon owned by Jennifer Orwell.
SELECT species.name, owners.full_name,	
 COUNT(*) FROM species
RIGHT JOIN owners
ON species.id = owners.id
WHERE owners.full_name = 'Jennifer Orwell'
GROUP BY species.name, owners.full_name;


SELECT animals.name, owners.full_name,
COUNT(*) FROM animals
RIGHT JOIN owners
ON owners.full_name = 'Dean Winchester'
WHERE escape_attempts = 0
GROUP BY animals.name, owners.full_name;


//Who owns the most animals
SELECT owners.full_name,
COUNT(*) FROM owners
RIGHT JOIN animals
ON owner_id = owners.id
GROUP BY owners.full_name;


//Who was the last animal seen by William Tatcher?
SELECT animals.name, visits.date_of_visit
FROM animals
INNER JOIN visits
ON animals.id = visits.vet_id
WHERE vet_id = 1
ORDER BY visits.date_of_visit DESC LIMIT 1;


//How many different animals did Stephanie Mendez see?
SELECT species.name,
COUNT(*)
FROM species
INNER JOIN vets
ON species.id = vets.id
GROUP BY species.name;

//List all vets and their specialties, including vets with no specialties

SELECT vets.name, species.name
FROM vets
INNER JOIN species
ON vets.id = species.id;


SELECT animals.name
FROM animals
INNER JOIN visits
ON animals.id = visits.id;




SELECT animals.name  
 FROM animals
INNER JOIN visits
ON animal_id = vet_id 
WHERE vet_id= '3' 
AND visits.date_of_visit BETWEEN '2020-4-1' AND '2020-8-30';


SELECT animals.name,
COUNT(*)
FROM vets
INNER JOIN animals
ON vets.id = vets.id
GROUP BY animals.name;


SELECT animals.name, visits.date_of_visit
FROM animals
INNER JOIN visits
ON animals.id = vet_id
ORDER BY visits.date_of_visit LIMIT 1;

SELECT animals.name, visits.vet_id, visits.date_of_visit
FROM animals 
INNER JOIN visits 
ON animals.id = vet_id
ORDER BY visits.date_of_visit LIMIT 1;


SELECT 
COUNT(*) 
FROM specialty 
INNER JOIN visits
ON specialty_id = specialty.vet_id
WHERE specialty_id != specialty.vet_id;


SELECT *,
COUNT(*)
FROM specialty
WHERE specialty.vet_id = '2'
GROUP BY specialty.vet_id, specialty.specialty_id ORDER BY COUNT(*) DESC LIMIT 1;
