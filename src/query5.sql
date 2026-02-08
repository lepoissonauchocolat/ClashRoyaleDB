SELECT 
    J.nom_joueur AS [Vainqueur], 
    C.date_debut AS [Date du Match], 
    PC.couronnes_gagnees AS [Couronnes]
FROM 
    PARTICIPANT_COMBAT PC
JOIN 
    JOUEUR J ON PC.id_joueur = J.id_joueur
JOIN 
    COMBAT C ON PC.id_combat = C.id_combat
WHERE 
    PC.resultat_combat = 'Victoire'
ORDER BY 
    C.date_debut DESC;