CREATE TABLE CONTENU_DECK (
    id_deck INT,
    id_carte INT,
    PRIMARY KEY (id_deck, id_carte),
    FOREIGN KEY (id_deck) REFERENCES DECK(id_deck),
    FOREIGN KEY (id_carte) REFERENCES CARTE(id_carte)
);

CREATE TABLE DECK_JOUEUR (
    id_joueur INT,
    id_deck INT,
    est_principal BIT,
    numero_emplacement INT,
    PRIMARY KEY (id_joueur, id_deck),
    FOREIGN KEY (id_joueur) REFERENCES JOUEUR(id_joueur),
    FOREIGN KEY (id_deck) REFERENCES DECK(id_deck)
);

CREATE TABLE COLLECTION_JOUEUR (
    id_joueur INT,
    id_carte INT,
    niveau_carte INT DEFAULT 1,
    quantite_carte INT DEFAULT 0,
    PRIMARY KEY (id_joueur, id_carte),
    FOREIGN KEY (id_joueur) REFERENCES JOUEUR(id_joueur),
    FOREIGN KEY (id_carte) REFERENCES CARTE(id_carte)
);

CREATE TABLE DEMANDE_DON (
    id_demande INT IDENTITY(1,1) PRIMARY KEY,
    id_clan INT,
    id_joueur INT,
    id_carte INT,
    date_demande DATETIME,
    quantite_recue INT DEFAULT 0,
    quantite_cible INT,
    est_actif BIT,
    FOREIGN KEY (id_clan) REFERENCES CLAN(id_clan),
    FOREIGN KEY (id_joueur) REFERENCES JOUEUR(id_joueur),
    FOREIGN KEY (id_carte) REFERENCES CARTE(id_carte)
);

CREATE TABLE DON (
    id_demande INT,
    id_joueur INT,
    quantite_donnee INT,
    date_dernier_don DATETIME,
    PRIMARY KEY (id_demande, id_joueur),
    FOREIGN KEY (id_demande) REFERENCES DEMANDE_DON(id_demande),
    FOREIGN KEY (id_joueur) REFERENCES JOUEUR(id_joueur)
);

CREATE TABLE PARTICIPANT_COMBAT (
    id_combat INT,
    id_joueur INT,
    id_deck INT,
    couronnes_gagnees INT,
    changement_trophees INT,
    resultat_combat NVARCHAR(20),
    PRIMARY KEY (id_combat, id_joueur),
    FOREIGN KEY (id_combat) REFERENCES COMBAT(id_combat),
    FOREIGN KEY (id_joueur) REFERENCES JOUEUR(id_joueur),
    FOREIGN KEY (id_deck) REFERENCES DECK(id_deck)
);

CREATE TABLE BANNIERE_JOUEUR (
    id_banniere INT,
    id_joueur INT,
    PRIMARY KEY (id_banniere, id_joueur),
    FOREIGN KEY (id_banniere) REFERENCES BANNIERE(id_banniere),
    FOREIGN KEY (id_joueur) REFERENCES JOUEUR(id_joueur)
);

CREATE TABLE EMOTE_JOUEUR (
    id_emote INT,
    id_joueur INT,
    PRIMARY KEY (id_emote, id_joueur),
    FOREIGN KEY (id_emote) REFERENCES EMOTE(id_emote),
    FOREIGN KEY (id_joueur) REFERENCES JOUEUR(id_joueur)
);

CREATE TABLE BADGE_JOUEUR (
    id_badge INT,
    id_joueur INT,
    PRIMARY KEY (id_badge, id_joueur),
    FOREIGN KEY (id_badge) REFERENCES BADGE(id_badge),
    FOREIGN KEY (id_joueur) REFERENCES JOUEUR(id_joueur)
);