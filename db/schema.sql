DROP DATABASE IF EXISTS structure_db;
CREATE DATABASE structure_db;

USE structure_db;


--User Table--
CREATE TABLE user (
    id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    password VARCHAR(30) NOT NULL,
    username VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
);

--Exercise Table--


--Workout Table--
