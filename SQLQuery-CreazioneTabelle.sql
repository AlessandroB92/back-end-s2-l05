-- Creazione della tabella ANAGRAFICA
CREATE TABLE ANAGRAFICA (
    Idanagrafica INT PRIMARY KEY IDENTITY(1,1),
    Cognome VARCHAR(50),
    Nome VARCHAR(50),
    Indirizzo VARCHAR(100),
    Città VARCHAR(50),
    CAP VARCHAR(10),
    Cod_Fisc VARCHAR(16)
);

-- Creazione della tabella TIPO_VIOLAZIONE
CREATE TABLE TIPO_VIOLAZIONE (
    Idviolazione INT PRIMARY KEY IDENTITY(1,1),
    descrizione VARCHAR(100)
);

-- Creazione della tabella VERBALE
CREATE TABLE VERBALE (
    Idverbale INT PRIMARY KEY IDENTITY(1,1),
    DataViolazione DATE,
    IndirizzoViolazione VARCHAR(100),
    NominativoAgente VARCHAR(50),
    DataTrascrizioneVerbale DATE,
    Importo SMALLMONEY,
    DecurtamentoPunti INT,
    Idanagrafica INT,
    Idviolazione INT,
    FOREIGN KEY (Idanagrafica) REFERENCES ANAGRAFICA(Idanagrafica),
    FOREIGN KEY (Idviolazione) REFERENCES TIPO_VIOLAZIONE(Idviolazione)
);