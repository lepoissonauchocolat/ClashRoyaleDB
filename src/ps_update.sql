CREATE PROCEDURE ps_MettreJoueur
    @IdJoueur INT,
    @Or INT,
    @Trophees INT
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM JOUEUR WHERE id_joueur = @IdJoueur)
    BEGIN
        PRINT 'Erreur: Joueur existe pas.';
        RETURN;
    END

    UPDATE JOUEUR
    SET 
        [or] = @Or,
        trophees = @Trophees
    WHERE id_joueur = @IdJoueur;

    PRINT 'Stats du joueur mises à jour avec succès.';
END;
GO