SELECT 
    C.nom_clan AS [Nom du Clan], 
    COUNT(J.id_joueur) AS [Nombre de Membres], 
    AVG(J.trophees) AS [Trophées Moyens]
FROM 
    CLAN C
JOIN 
    JOUEUR J ON C.id_clan = J.id_clan
GROUP BY 
    C.nom_clan
ORDER BY 
    [Trophées Moyens] DESC;