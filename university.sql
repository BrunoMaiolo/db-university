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

-- insegnanti
CREATE TABLE insegnanti (
    id INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    cognome VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    PRIMARY KEY (id)
);
--corsi insegnanti
CREATE TABLE corso_insegnante (
    corso_id INT,
    insegnante_id INT,
    PRIMARY KEY (corso_id, insegnante_id),
    FOREIGN KEY (corso_id) REFERENCES corsi(id),
    FOREIGN KEY (insegnante_id) REFERENCES insegnanti(id)
);

-- studenti
CREATE TABLE studenti (
    id INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    cognome VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    corso_di_laurea_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (corso_di_laurea_id) REFERENCES corsi_di_laurea(id)
);

-- esami
CREATE TABLE esami (
    id INT AUTO_INCREMENT,
    data DATE,
    aula VARCHAR(20),
    corso_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (corso_id) REFERENCES corsi(id)
);

-- iscrizioni agli esami
CREATE TABLE iscrizioni_esami (
    id INT AUTO_INCREMENT,
    studente_id INT,
    esame_id INT,
    voto INT,
    PRIMARY KEY (id),
    FOREIGN KEY (studente_id) REFERENCES studenti(id),
    FOREIGN KEY (esame_id) REFERENCES esami(id)
);
