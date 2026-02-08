CREATE TABLE BANNIERE (
    id_banniere INT IDENTITY(1,1) PRIMARY KEY,
    nom NVARCHAR(100) NOT NULL
);

CREATE TABLE EMOTE (
    id_emote INT IDENTITY(1,1) PRIMARY KEY,
    nom NVARCHAR(100) NOT NULL
);

CREATE TABLE BADGE (
    id_badge INT IDENTITY(1,1) PRIMARY KEY,
    nom NVARCHAR(100) NOT NULL
);

CREATE TABLE REGLES_NIVEAU (
    id_niveau_regle INT IDENTITY(1,1) PRIMARY KEY,
    niveau_carte INT NOT NULL,
    cartes_requises INT NOT NULL,
    or_requis INT NOT NULL
);

CREATE TABLE DECK (
    id_deck INT IDENTITY(1,1) PRIMARY KEY
);

CREATE TABLE NIVEAU (
    id_niveau INT IDENTITY(1,1) PRIMARY KEY,
    xp_requis INT NOT NULL
);

CREATE TABLE TYPE_COFFRE (
    id_type_coffre INT IDENTITY(1,1) PRIMARY KEY,
    description NVARCHAR(255)
);

CREATE TABLE COMBAT (
    id_combat INT IDENTITY(1,1) PRIMARY KEY,
    date_debut DATETIME NOT NULL,
    duree INT
);

CREATE TABLE CLAN (
    id_clan INT IDENTITY(1,1) PRIMARY KEY,
    nom_clan NVARCHAR(100) NOT NULL,
    description NVARCHAR(255),
    date_creation DATE NOT NULL,
    trophees_requis INT DEFAULT 0,
    region NVARCHAR(50),
    type_acces NVARCHAR(50)
);