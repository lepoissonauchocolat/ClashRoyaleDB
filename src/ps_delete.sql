CREATE PROCEDURE sp_SupprimerJoueur
    @IdJoueur INT
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM JOUEUR WHERE id_joueur = @IdJoueur)
    BEGIN
        PRINT 'Erreur: Joueur existe pas.';
        RETURN;
    END

    BEGIN TRANSACTION;

    BEGIN TRY
        DELETE FROM DON WHERE id_joueur = @IdJoueur;
        DELETE FROM DON 
        WHERE id_demande IN (SELECT id_demande FROM DEMANDE_DON WHERE id_joueur = @IdJoueur);
        DELETE FROM DEMANDE_DON WHERE id_joueur = @IdJoueur;
        DELETE FROM PARTICIPANT_COMBAT WHERE id_joueur = @IdJoueur;
        DELETE FROM COFFRE WHERE id_joueur = @IdJoueur;
        DELETE FROM COLLECTION_JOUEUR WHERE id_joueur = @IdJoueur;
        DELETE FROM DECK_JOUEUR WHERE id_joueur = @IdJoueur;
        DELETE FROM BANNIERE_JOUEUR WHERE id_joueur = @IdJoueur;
        DELETE FROM EMOTE_JOUEUR WHERE id_joueur = @IdJoueur;
        DELETE FROM BADGE_JOUEUR WHERE id_joueur = @IdJoueur;
        DELETE FROM JOUEUR WHERE id_joueur = @IdJoueur;
        COMMIT TRANSACTION;
        PRINT 'Joueur et données associées supprimés avec succès.';
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        PRINT 'Erreur lors de la suppression du joueur.';
        THROW;
    END CATCH
END;
GO