CREATE DATABASE IF NOT EXISTS planning;
USE planning;

CREATE TABLE IF NOT EXISTS projets(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
dossier VARCHAR(128) NOT NULL ,
date INT NOT NULL,
avancement INT NOT NULL ,
client VARCHAR(128) NOT NULL ,
designation VARCHAR(128) NOT NULL ,
responsable VARCHAR(128) NOT NULL ,
description TEXT NOT NULL ,
duree_prevue INT NOT NULL ,
duree_reel INT NOT NULL 
);

CREATE TABLE IF NOT EXISTS taches(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
projet INT NOT NULL ,
user INT NOT NULL ,
creation BIGINT(14) NOT NULL ,
duree_prevue FLOAT NOT NULL ,
duree_reel FLOAT NOT NULL ,
depassement FLOAT NOT NULL ,
avancement INT NOT NULL ,
description TEXT NOT NULL ,
commentaires TEXT NOT NULL ,
valide TINYINT(1) NOT NULL 
);

CREATE TABLE IF NOT EXISTS users(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
nom VARCHAR(128) NOT NULL ,
prenom VARCHAR(128) NOT NULL ,
email VARCHAR(128) NOT NULL ,
code VARCHAR(255) NOT NULL ,
couleur VARCHAR(128) NOT NULL ,
files VARCHAR(128) NOT NULL ,
status INT NOT NULL
);

CREATE TABLE IF NOT EXISTS suivi(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
user INT NOT NULL ,
projet INT NOT NULL,
temps FLOAT NOT NULL
);

CREATE TABLE IF NOT EXISTS cout(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
user INT NOT NULL ,
montant FLOAT NOT NULL,
debut INT NOT NULL,
fin INT NOT NULL
);
