-- Query 1: Conteggio dei verbali trascritti
SELECT COUNT(*) AS VerbaliTrascritti
FROM VERBALE;

-- Query 2: Conteggio dei verbali trascritti raggruppati per anagrafica
SELECT a.Cognome, a.Nome, COUNT(v.Idverbale) AS VerbaliTrascritti
FROM ANAGRAFICA a
LEFT JOIN VERBALE v ON a.Idanagrafica = v.Idanagrafica
GROUP BY a.Cognome, a.Nome;

-- Query 3: Conteggio dei verbali trascritti raggruppati per tipo di violazione
SELECT tv.descrizione, COUNT(v.Idverbale) AS VerbaliTrascritti
FROM TIPO_VIOLAZIONE tv
LEFT JOIN VERBALE v ON tv.Idviolazione = v.Idviolazione
GROUP BY tv.descrizione;

-- Query 4: Totale dei punti decurtati per ogni anagrafica
SELECT a.Cognome, a.Nome, SUM(v.DecurtamentoPunti) AS TotalePuntiDecurtati
FROM ANAGRAFICA a
LEFT JOIN VERBALE v ON a.Idanagrafica = v.Idanagrafica
GROUP BY a.Cognome, a.Nome;

-- Query 5: Cognome, Nome, Data violazione, Indirizzo violazione, importo e punti decurtati per tutti gli anagrafici residenti a Palermo
SELECT a.Cognome, a.Nome, v.DataViolazione, v.IndirizzoViolazione, v.Importo, v.DecurtamentoPunti
FROM ANAGRAFICA a
INNER JOIN VERBALE v ON a.Idanagrafica = v.Idanagrafica
WHERE a.Città = 'Palermo';

-- Query 6: Cognome, Nome, Indirizzo, Data violazione, importo e punti decurtati per le violazioni fatte tra il febbraio 2009 e luglio 2009
SELECT a.Cognome, a.Nome, a.Indirizzo, v.DataViolazione, v.Importo, v.DecurtamentoPunti
FROM ANAGRAFICA a
INNER JOIN VERBALE v ON a.Idanagrafica = v.Idanagrafica
WHERE v.DataViolazione BETWEEN '2009-02-01' AND '2009-07-31';

-- Query 7: Totale degli importi per ogni anagrafico
SELECT a.Cognome, a.Nome, SUM(v.Importo) AS TotaleImporti
FROM ANAGRAFICA a
INNER JOIN VERBALE v ON a.Idanagrafica = v.Idanagrafica
GROUP BY a.Cognome, a.Nome;

-- Query 8: Visualizzazione di tutti gli anagrafici residenti a Palermo
SELECT *
FROM ANAGRAFICA
WHERE Città = 'Palermo';

-- Query 10: Conteggio delle violazioni contestate raggruppate per Nominativo dell'agente di Polizia
SELECT NominativoAgente, COUNT(*) AS ViolazioniContestate
FROM VERBALE
GROUP BY NominativoAgente;

-- Query 11: Cognome, Nome, Indirizzo, Data violazione, Importo e punti decurtati per tutte le violazioni che superino il decurtamento di 5 punti
SELECT a.Cognome, a.Nome, a.Indirizzo, v.DataViolazione, v.Importo, v.DecurtamentoPunti
FROM ANAGRAFICA a
INNER JOIN VERBALE v ON a.Idanagrafica = v.Idanagrafica
WHERE v.DecurtamentoPunti > 5;

-- Query 12: Cognome, Nome, Indirizzo, Data violazione, Importo e punti decurtati per tutte le violazioni che superino l'importo di 400 euro
SELECT a.Cognome, a.Nome, a.Indirizzo, v.DataViolazione, v.Importo, v.DecurtamentoPunti
FROM ANAGRAFICA a
INNER JOIN VERBALE v ON a.Idanagrafica = v.Idanagrafica
WHERE v.Importo > 400;