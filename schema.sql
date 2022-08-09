/* Database schema to keep the structure of entire database. */

 CREATE TABLE animals (
 ID                              INT               PRIMARY KEY       NOT NULL,
 NAME                       CHAR(50)     NOT NULL,
 DATE_OF_BIRTH       DATE            NOT NULL,
 ESCAPE_ATTEMPTS   INT              NOT NULL,
 NEUTERED            VARCHAR(1)    NOT NULL,
 WEIGHT_KG              DECIMAL
 );
