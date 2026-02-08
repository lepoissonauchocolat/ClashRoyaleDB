CREATE TABLE TYPE_CARTE (
    id_type_carte INT IDENTITY(1,1) PRIMARY KEY,
    nom_type NVARCHAR(50) NOT NULL,
    id_niveau_regle INT,
    FOREIGN KEY (id_niveau_regle) REFERENCES REGLES_NIVEAU(id_niveau_regle)
);

CREATE TABLE JOUEUR (
    id_joueur INT IDENTITY(1,1) PRIMARY KEY,
    nom_joueur NVARCHAR(100) NOT NULL,
    date_inscription DATE NOT NULL,
    xp_actuel INT DEFAULT 0,
    trophees INT DEFAULT 0,
    victoires_totales INT DEFAULT 0,
    [or] INT DEFAULT 0,
    id_niveau INT,
    id_clan INT,
    FOREIGN KEY (id_niveau) REFERENCES NIVEAU(id_niveau),
    FOREIGN KEY (id_clan) REFERENCES CLAN(id_clan)
);