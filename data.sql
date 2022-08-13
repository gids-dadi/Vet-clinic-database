/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
 VALUES( 'Agumon', '2020-02-03', 0, TRUE, 10.23);
 
 INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
 VALUES( 'Gabumon', '2018-11-15', 2, TRUE, 08.00);
 
 INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
 VALUES( 'Pikachu', '2021-01-07', 1, FALSE, 15.04);
 
 INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
 VALUES( 'Devimon', '2017-05-12', 5, TRUE, 11.00);


 INSERT INTO animals ( name, date_of_birth, escape_attempts, neutered, weight_kg)
 VALUES('Charmander', '2020-02-08', 0, FALSE, -11.00);


 INSERT INTO animals ( name, date_of_birth, escape_attempts, neutered, weight_kg)
 VALUES( 'Plantmon', '2021-11-15', 2, TRUE, -5.70);  

 INSERT INTO animals ( name, date_of_birth, escape_attempts, neutered, weight_kg)
 VALUES( 'Squirtle', '1993-04-02', 3, FALSE, -12.13);


  INSERT INTO animals ( name, date_of_birth, escape_attempts, neutered, weight_kg)
  VALUES( 'Angemon', '2005-06-12', 1, TRUE, -45.00);



   INSERT INTO animals ( name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES( 'Boarmon', '2005-06-07', 7, TRUE, 20.40);


    INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
    VALUES('Blossom', '1998-10-13', 3, TRUE, 17.00);


     INSERT INTO animals ( name, date_of_birth, escape_attempts, neutered, weight_kg)
     VALUES('Ditto', '2022-05-14', 4, TRUE, 22.00);

// INSERT values to the owners table
INSERT INTO owners (full_name, age)
 VALUES('Sam smith', 34);

 INSERT INTO owners (full_name, age)
 VALUES('Jennifer Orwell', 19);

 INSERT INTO owners (full_name, age)
 VALUES('Bob', 45);


 INSERT INTO owners (full_name, age)
 VALUES('Melody Pond', 77);

 INSERT INTO owners (full_name, age)
 VALUES('Dean Winchester', 14);

 INSERT INTO owners (full_name, age)
 VALUES('Jodie Whittaker', 34);


 // INSERT VALUES INTO species table
 INSERT INTO species (name)
 VALUES('Pokemon');

 INSERT INTO species (name)
 VALUES('Digimon');

 UPDATE animals
SET owner_id = 'Sam Smith'
WHERE name =  'Agumon';

UPDATE animals
SET owner_id = 'Jennifer Orwell'
WHERE name =  'Gabumon' OR name='Pikachu';

UPDATE animals
SET owner_id = 'Bob'
WHERE name =  'Devimon' OR name='Plantmon';

UPDATE animals
SET owner_id = 'Melody Pond'
WHERE name =  'Charmander' OR name='Squirtle' OR name = 'Blossom';

UPDATE animals
SET owner_id = 'Dean Winchester'
WHERE name =  'Angemon' OR name='Boarmon';


INSERT INTO vets (name, age, date_of_graduation)
 VALUES('William Tatcher', 45, '2000-04-23');

 INSERT INTO vets (name, age, date_of_graduation)
 VALUES('Maisy Smith', 26, '2019-01-17');


  INSERT INTO vets (name, age, date_of_graduation)
 VALUES('Stephanie Mendez', 64, '1981-05-04');

  INSERT INTO vets (name, age, date_of_graduation)
 VALUES('Jack Harkness', 38, '2008-06-08');


INSERT INTO specialty (vet_id, specialty_id)
 VALUES(1, 1);

INSERT INTO specialty (vet_id, specialty_id)
 VALUES(3, 2);

INSERT INTO specialty (vet_id, specialty_id)
 VALUES(3, 1);

INSERT INTO specialty (vet_id, specialty_id)
 VALUES(4, 2);


INSERT INTO visits (animal_id, vet_id, date_of_visit)
 VALUES(1, 2, '2020-05-24');

INSERT INTO visits ( animal_id, vet_id, date_of_visit)
 VALUES(1, 3, '2020-03-23');

INSERT INTO visits ( animal_id, vet_id, date_of_visit)
 VALUES(2, 4, '2021-02-02');

INSERT INTO visits ( animal_id, vet_id, date_of_visit)
 VALUES(3, 2, '2020-01-05');

INSERT INTO visits ( animal_id, vet_id, date_of_visit)
 VALUES(3, 2, '2020-03-08');


INSERT INTO visits ( animal_id, vet_id, date_of_visit)
 VALUES(3, 2, '2020-05-14');


INSERT INTO visits ( animal_id, vet_id, date_of_visit)
 VALUES(4, 3, '2021-05-14');


INSERT INTO visits ( animal_id, vet_id, date_of_visit)
 VALUES(5, 4, '2021-02-24');


INSERT INTO visits ( animal_id, vet_id, date_of_visit)
 VALUES(6, 2, '2019-12-21');


INSERT INTO visits ( animal_id, vet_id, date_of_visit)
 VALUES(6, 1, '2020-08-10');


INSERT INTO visits ( animal_id, vet_id, date_of_visit)
 VALUES(6, 2, '2021-04-07');


INSERT INTO visits ( animal_id, vet_id, date_of_visit)
 VALUES(7, 3, '2019-09-29');


INSERT INTO visits ( animal_id, vet_id, date_of_visit)
 VALUES(8, 4, '2020-10-03');



INSERT INTO visits ( animal_id, vet_id, date_of_visit)
 VALUES(8, 4, '2020-11-04');


INSERT INTO visits ( animal_id, vet_id, date_of_visit)
 VALUES(9, 2, '2019-01-24');

INSERT INTO visits ( animal_id, vet_id, date_of_visit)
 VALUES(9, 2, '2019-05-15');

INSERT INTO visits ( animal_id, vet_id, date_of_visit)
 VALUES(9, 2, '2020-02-27');

INSERT INTO visits ( animal_id, vet_id, date_of_visit)
 VALUES(9, 2, '2020-10-03');

INSERT INTO visits ( animal_id, vet_id, date_of_visit)
 VALUES(10, 3, '2020-05-24');

INSERT INTO visits ( animal_id, vet_id, date_of_visit)
 VALUES(10, 1, '2021-01-11');

