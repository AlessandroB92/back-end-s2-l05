-- Stored Procedure 1: Elenco delle contravvenzioni effettuate in un dato anno
CREATE PROCEDURE ContravvenzioniPerAnno
    @Anno INT
AS
BEGIN
    SELECT *
    FROM VERBALE
    WHERE YEAR(DataViolazione) = @Anno;
END;