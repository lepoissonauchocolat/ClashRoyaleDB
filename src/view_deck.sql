CREATE VIEW Vue_Detail_Deck_Principal AS
SELECT 
    J.nom_joueur AS [Nom du Joueur],
    ISNULL(Cl.nom_clan, 'Sans Clan') AS [Clan],
    Ca.nom_carte AS [Carte],
    TC.nom_type AS [Rareté],
    Ca.cout_elixir AS [Coût Elixir],
    Ca.cible_favorite AS [Cible],
    Ca.degats AS [Dégâts]
FROM 
    JOUEUR J
    LEFT JOIN CLAN Cl ON J.id_clan = Cl.id_clan
    JOIN DECK_JOUEUR DJ ON J.id_joueur = DJ.id_joueur
    JOIN DECK D ON DJ.id_deck = D.id_deck
    JOIN CONTENU_DECK CD ON D.id_deck = CD.id_deck
    JOIN CARTE Ca ON CD.id_carte = Ca.id_carte
    JOIN TYPE_CARTE TC ON Ca.id_type_carte = TC.id_type_carte
WHERE 
    DJ.est_principal = 1;
GO