-- SQLite

-- DROP TABLE Romans;

CREATE TABLE Romans(
       ID INTEGER PRIMARY KEY,
       titre VARCHAR(150) NOT NULL UNIQUE,
       auteur VARCHAR(150) NOT NULL UNIQUE,
       DateParu DATE NOT NULL UNIQUE,
       PRIX REAL (150) NOT NULL 
);

INSERT INTO Romans (
       ID,
       titre,
       auteur,
       DateParu,
       PRIX
) VALUES(
      '1',
      'LA RONDE DES JOURS',
      'BERNARD DADIE',
      '1976',
      '3000'
);