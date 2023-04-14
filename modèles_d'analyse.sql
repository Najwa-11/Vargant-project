-- Création d'une table temporaire pour stocker les données clients de l'année en cours
CREATE TEMPORARY TABLE clients
USING parquet
OPTIONS (path '/data')
SELECT *
FROM clients_2023;

-- Création d'une table temporaire pour stocker les immatriculations de l'année en cours
CREATE TEMPORARY TABLE immatriculations
USING parquet
OPTIONS (path 'data')
SELECT *
FROM immatriculations_2023;

-- Requête pour compter le nombre de clients par sexe
SELECT sexe, COUNT(*) AS nb_clients
FROM clients
GROUP BY sexe;

-- Requête pour compter le nombre d'immatriculations par marque et modèle de voiture
SELECT marque, modele, COUNT(*) AS nb_immatriculations
FROM immatriculations
GROUP BY marque, modele;

-- Requête pour compter le nombre d'immatriculations par mois
SELECT DATE_TRUNC('month', date_immatriculation) AS mois, COUNT(*) AS nb_immatriculations
FROM immatriculations
GROUP BY mois;

-- Requête pour calculer le chiffre d'affaires généré par les ventes de voitures
SELECT SUM(prix_vente) AS chiffre_affaires
FROM ventes;
