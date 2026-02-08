CREATE PROCEDURE ps_AjouterJoueur
    @NomJoueur NVARCHAR(100),
    @IdClan INT = NULL
AS
BEGIN
    IF LEN(@NomJoueur) = 0
    BEGIN
        PRINT 'Erreur: Entriez un nom.';
        RETURN;
    END

    INSERT INTO JOUEUR (nom_joueur, date_inscription, xp_actuel, trophees, victoires_totales, [or], id_niveau, id_clan)
    VALUES (
        @NomJoueur,
        GETDATE(),
        0,
        0,
        0,
        0,
        1,
        @IdClan
    );

    PRINT 'Joueur ajouté avec succès.';
END;
GO