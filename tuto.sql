-- SQLite

PRAGMA foreign_keys = ON;

DROP TABLE Livre;

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

CREATE TABLE lib_liv(
       lib_id INTEGER NOT NULL,
       liv_id INTEGER NOT NULL,
       FOREIGN KEY (lib_id) REFERENCES librairie(ID) ON DELETE  CASCADE,
       FOREIGN KEY (liv_id) REFERENCES LIVRE(ID) ON DELETE CASCADE,
       PRIMARY KEY (lib_id, liv_id),
       UNIQUE (lib_id, liv_id)
);

CREATE TABLE cah_lib(
       cah_id INTEGER NOT NULL,
       lib_id INTEGER NOT NULL,
       FOREIGN KEY (cah_id) REFERENCES cahiers(ID) ON DELETE  CASCADE,
       FOREIGN KEY (lib_id) REFERENCES librairie(ID) ON DELETE CASCADE,
       PRIMARY KEY (cah_id, lib_id),
       UNIQUE (cah_id, lib_id)
);

CREATE TABLE lib_rom(
       lib_id INTEGER NOT NULL,
       rom_id INTEGER NOT NULL,
       FOREIGN KEY (lib_id) REFERENCES librairie(ID) ON DELETE  CASCADE,
       FOREIGN KEY (rom_id) REFERENCES Romans(ID) ON DELETE CASCADE,
       PRIMARY KEY (lib_id, rom_id),
       UNIQUE (lib_id, rom_id)
);

CREATE TABLE Romans(
       ID INTEGER PRIMARY KEY AUTOINCREMENT,
       titre VARCHAR(50),
       auteur VARCHAR(50),
       DatParu DATETIME,
       PRIX INT,
       STOCK INT
);

CREATE TABLE Livre(
       ID INTEGER PRIMARY KEY AUTOINCREMENT,
       titre VARCHAR(50),
       matiere VARCHAR(50),
       edition VARCHAR(50),
       PRIX INT,
       STOCK INT
);

INSERT INTO Romans(
       titre,
       auteur,
       DatParu,
       PRIX
)VALUES(
       
);