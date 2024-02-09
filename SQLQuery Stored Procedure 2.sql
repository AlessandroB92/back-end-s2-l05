-- Stored Procedure 2: Totale dei punti decurtati in una determinata data
CREATE PROCEDURE TotalePuntiDecurtatiPerData
    @Data DATE
AS
BEGIN
    SELECT SUM(DecurtamentoPunti) AS TotalePuntiDecurtati
    FROM VERBALE
    WHERE DataViolazione = @Data;
END;