SELECT TOP 10 
    J.nom_joueur AS [Joueur], 
    ISNULL(C.nom_clan, 'Sans Clan') AS [Clan], 
    J.trophees AS [Trophées], 
    J.victoires_totales AS [Victoires]
FROM 
    JOUEUR J
LEFT JOIN 
    CLAN C ON J.id_clan = C.id_clan
ORDER BY 
    J.trophees DESC;