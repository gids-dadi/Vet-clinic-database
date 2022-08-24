-- create database from clinic diagram -- clinic
CREATE DATABASE clinic;

-- create a patients table
CREATE TABLE patients (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(50),
    date_of_birth DATE,
    PRIMARY KEY(id)
);

-- create medical_histories table
CREATE TABLE medical_histories (
    id INT GENERATED ALWAYS AS IDENTITY,
    admitted_at TIMESTAMP,
    status VARCHAR(50),
     patient_id integer REFERENCES patients(id),
    PRIMARY KEY (id)
);

-- create invoices table
CREATE TABLE invoices (
    id INT GENERATED ALWAYS AS IDENTITY,
    total_amount DECIMAL,
    generated_at TIMESTAMP,
    payed_at TIMESTAMP,
    medical_history_id integer REFERENCES medical_histories (id), 
    PRIMARY KEY (id)
);

-- create treatments table
CREATE TABLE treatments (
    id INT GENERATED ALWAYS AS IDENTITY,
    type VARCHAR(50),
    name VARCHAR(50),
    PRIMARY KEY (id)
);

-- create invoice_items table
CREATE TABLE invoice_items (
    id INT GENERATED ALWAYS AS IDENTITY,
    unit_price DECIMAL,
    quantity INT,
    total_price DECIMAL,
   invoice_id integer REFERENCES invoices(id),
   treatment_id integer REFERENCES treatments(id), 
    PRIMARY KEY (id)
);

-- create join table between medical_histories and treatments tables
CREATE TABLE medical_histories_treatments (
    id INT GENERATED ALWAYS AS IDENTITY,
    treatment_id INT REFERENCES treatments (id) ON DELETE CASCADE,
    medical_history_id INT REFERENCES medical_histories (id) ON DELETE CASCADE,
    PRIMARY KEY (id)
);

--create INDEX tables
CREATE INDEX ON medical_histories (patient_id);
CREATE INDEX ON invoices (medical_history_id);
CREATE INDEX ON invoice_items (invoice_id);
CREATE INDEX ON invoice_items (treatment_id);