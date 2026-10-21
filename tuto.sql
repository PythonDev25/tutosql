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
       lieu VARCHAR (25) NOT NULL UNIQUE
);

INSERT INTO librairie( 
       ID,
       nom,
       lieu
) VALUES (
       '1',
       'NOVABOOKS',
       'ABIDJAN'
);

INSERT INTO cahiers(
       ID,
       nom,
       USINE,
       PRIX,
       STOCK,
       page
) VALUES(
       '3',
      'Autentik',
      'ACIPAC',
      '500',
      '20',
      '300'
);

INSERT INTO cahiers(
       ID,
       nom,
       USINE,
       PRIX,
       STOCK,
       page
) VALUES(
       '4',
      'Prestige',
      'ACIPAC',
      '500',
      '20',
      '300'
);

INSERT INTO cahiers(
       ID,
       nom,
       USINE,
       PRIX,
       STOCK,
       page
) VALUES(
       '5',
      'Papillion',
      'MICI-EMBACI',
      '500',
      '20',
      '300'
);

INSERT INTO cahiers(
       ID,
       nom,
       USINE,
       PRIX,
       STOCK,
       page
) VALUES(
       '6',
      'Cigogne',
      'CIPA',
      '500',
      '20',
      '300'
);

INSERT INTO cahiers(
       ID,
       nom,
       USINE,
       PRIX,
       STOCK,
       page
) VALUES(
       '7',
      'GAME-SAFIC',
      'SAFIC',
      '500',
      '20',
      '300'
);                                                                                                                                                                                                                                                                                                                                                                                                                                  