CREATE TABLE CARTE (
    id_carte INT IDENTITY(1,1) PRIMARY KEY,
    nom_carte NVARCHAR(100) NOT NULL,
    degats INT,
    vitesse_frappe DECIMAL,
    cible_favorite NVARCHAR(50),
    portee FLOAT,
    cout_elixir INT,
    PV INT,
    id_type_carte INT,
    FOREIGN KEY (id_type_carte) REFERENCES TYPE_CARTE(id_type_carte)
);

CREATE TABLE COFFRE (
    id_coffre INT IDENTITY(1,1) PRIMARY KEY,
    quantite INT,
    date_obtention DATETIME,
    id_joueur INT,
    id_type_coffre INT,
    FOREIGN KEY (id_joueur) REFERENCES JOUEUR(id_joueur),
    FOREIGN KEY (id_type_coffre) REFERENCES TYPE_COFFRE(id_type_coffre)
);