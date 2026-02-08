CREATE TRIGGER TR_MaxCartesParDeck
ON CONTENU_DECK
AFTER INSERT
AS
BEGIN
    IF EXISTS (
        SELECT id_deck
        FROM CONTENU_DECK
        WHERE id_deck IN (SELECT id_deck FROM inserted)
        GROUP BY id_deck
        HAVING COUNT(*) > 8
    )
    BEGIN
        RAISERROR ('Erreur : Un deck ne peut pas contenir plus de 8 cartes.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END
END;
GO