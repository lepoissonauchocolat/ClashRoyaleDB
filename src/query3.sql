SELECT 
    Ca.nom_carte AS [Carte], 
    TC.nom_type AS [Rareté], 
    Ca.PV AS [Points de Vie], 
    Ca.cout_elixir AS [Coût]
FROM 
    CARTE Ca
JOIN 
    TYPE_CARTE TC ON Ca.id_type_carte = TC.id_type_carte
WHERE 
    Ca.PV > 1000
ORDER BY 
    Ca.PV DESC;