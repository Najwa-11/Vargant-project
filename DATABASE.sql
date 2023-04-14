CREATE DATABASE voitures;

CREATE TABLE Immatriculations (
    Immatriculation varchar(100),
    Marque varchar(100),
    Nom varchar(100),
    Puissance int,
    Longueur int,
    NbPlaces int,
    NbPortes int,
    Couleur varchar(100),
    Occasion varchar(100),
    Prix int
);

LOAD DATA INFILE 'Immatriculations.csv' INTO TABLE Immatriculations FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';

CREATE TABLE Catalogue (
    Immatriculation varchar(100),
    Marque varchar(100),
    Nom varchar(100),
    Puissance int,
    Longueur int,
    NbPlaces int,
    NbPortes int,
    Couleur varchar(100),
    Occasion varchar(100),
    Prix int
);

LOAD DATA INFILE 'Catalogues.csv' INTO TABLE Catalogie FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';

CREATE TABLE Clients_N (
    Age int,
    Sexe varchar(100),
    Taux int,
    SituationFamiliale varchar(100),
    NbEnfantsAcharge int,
    2emeVoiture varchar(100),
    Immatriculation varchar(100)
);

LOAD DATA INFILE 'Clients_N.csv' INTO TABLE Clients_N FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';

CREATE TABLE Marketing (
    Age int,
    Sexe varchar(100),
    Taux int,
    SituationFamiliale varchar(100),
    NbEnfantsAcharge int,
    2emeVoiture varchar(100)
);

LOAD DATA INFILE 'Marketing.csv' INTO TABLE Marketing FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';