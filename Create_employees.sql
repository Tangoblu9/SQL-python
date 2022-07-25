/* This is to create a new dataset: managers + new_hires */
--source PostgreSQL 14.0

CREATE TABLE managers(
manager_id SERIAL PRIMARY KEY,  
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
homeroom_number SMALLINT,
department VARCHAR(50),
email VARCHAR(50) UNIQUE NOT NULL,
phone VARCHAR(50) UNIQUE NOT NULL);

INSERT INTO managers(
first_name, last_name, phone, email, department, homeroom_number)

VALUES ( 'Jonas', 'Salk', '3210-321-21', 'sal@lol', 'Finance', '5');

CREATE table new_hires(
worker_id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
homeroom_number smallint,
phone VARCHAR(50) UNIQUE NOT NULL,
email VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO new_hires(
first_name, last_name, phone, email, homeroom_number)

VALUES ('Mark', 'Watney', '777-076-0543', 'mark@gmail.com', 5);
