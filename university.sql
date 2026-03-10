CREATE DATABASE db_university;
USE db_university;

-- dipartimenti
CREATE TABLE dipartimenti (
    id INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    indirizzo VARCHAR(150),
    PRIMARY KEY (id)
);

