-- první select
-- tento select provede odstranìní nepovolených znakù pro transformaci dat z tabulky StwPh_27538117.dbo.Skz a to tak, že vytvoøí ovou tabulku StwPh_27538117.dbo.SKz_transformed

-- Nejprve vytvoøíme novou tabulku pro uložení transformovaných dat
IF OBJECT_ID('SKz_transformed', 'U') IS NOT NULL
    DROP TABLE SKz_transformed;
GO

CREATE TABLE StwPh_27538117.dbo.SKz_transformed (
    IDS VARCHAR(90),
    NakupC DECIMAL(10, 2)
);
GO

-- Nyní provedeme transformaci
INSERT INTO StwPh_27538117.dbo.SKz_transformed (IDS, NakupC)
SELECT
    REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(IDS, '&', ''), '<', ''), '>', ''), '"', ''), '''', '') AS IDS,
    NakupC
FROM
    StwPh_27538117.dbo.Skz;
GO

-- Kontrola výsledkù
SELECT * FROM StwPh_27538117.dbo.SKz_transformed;

