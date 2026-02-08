SELECT 
    J.nom_joueur AS [Donateur], 
    SUM(D.quantite_donnee) AS [Total Cartes Données]
FROM 
    JOUEUR J
JOIN 
    DON D ON J.id_joueur = D.id_joueur
GROUP BY 
    J.nom_joueur
ORDER BY 
    [Total Cartes Données] DESC;