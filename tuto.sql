-- SQLite
PRAGMA foreign_keys = ON;

DROP TABLE librairie;

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

CREATE TABLE librairie(
       ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
       nom VARCHAR(25) NOT NULL UNIQUE,
       lieu VARCHAR (25) NOT NULL UNIQUE,
       cahier_id INTEGER NOT NULL,
       livre_id INTEGER NOT NULL,
       roman_id INTEGER NOT NULL,
       FOREIGN KEY ( cahier_id) REFERENCES Cahiers(ID),
       FOREIGN KEY ( livre_id) REFERENCES LIVRE(ID), 
       FOREIGN KEY(roman_id) REFERENCES Romans(ID)
);



