-- Stored Procedure 3: Eliminazione di un determinato verbale identificandolo con il proprio Idverbale
CREATE PROCEDURE EliminaVerbale
    @Idverbale INT
AS
BEGIN
    DELETE FROM VERBALE
    WHERE Idverbale = @Idverbale;
END;