-- Query 9: Query parametrica che visualizza Data violazione, Importo e decurtamento punti relativi ad una certa data
CREATE PROCEDURE VisualizzaViolazioniPerData
    @Data DATE
AS
BEGIN
    SELECT DataViolazione, Importo, DecurtamentoPunti
    FROM VERBALE
    WHERE DataViolazione = @Data;
END;