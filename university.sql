CREATE DATABASE db_university;
USE db_university;

-- dipartimenti
CREATE TABLE dipartimenti (
    id INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    indirizzo VARCHAR(150),
    PRIMARY KEY (id)
);

-- corsi di laurea
CREATE TABLE corsi_di_laurea (
    id INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    dipartimento_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (dipartimento_id) REFERENCES dipartimenti(id)
);

-- corsi
CREATE TABLE corsi (
    id INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cfu INT,
    anno INT,
    corso_di_laurea_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (corso_di_laurea_id) REFERENCES corsi_di_laurea(id)
);