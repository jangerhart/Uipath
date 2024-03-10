-- tento dotaz transormuje tabulku StwPh_27538117.dbo.SKz_transformed tak, že u všech øádkù, kde je ve sloupci SText více skupin, tyto skupiny rozdìlí (oddìlovaè je mezer). Hodnotu NakupC vloží do 
-- novì vytvoøeného øádku a je stejná jako u pùvodního. Tento select navazuje na transform_skz_remove_unsupported_xml_characters.sql

-- Vytvoøení doèasné tabulky pro mezivýsledek
IF OBJECT_ID('tempdb..#SKz_transformed_temp') IS NOT NULL
    DROP TABLE #SKz_transformed_temp;

CREATE TABLE #SKz_transformed_temp (
    SText VARCHAR(90),
    NakupC DECIMAL(10, 2)
);

-- Vložení dat z pùvodní tabulky do doèasné tabulky pro mezivýsledek
INSERT INTO #SKz_transformed_temp (SText, NakupC)
SELECT SText, NakupC
FROM StwPh_27538117.dbo.SKz_transformed;

-- Smazání dat z pùvodní tabulky
DELETE FROM StwPh_27538117.dbo.SKz_transformed;

-- Rozdìlení hodnot ve sloupci SText a vložení na samostatné øádky
;WITH SplitValues AS (
    SELECT
        SText,
        NakupC,
        CAST('<M>' + REPLACE(SText, ' ', '</M><M>') + '</M>' AS XML) AS STextXML
    FROM
        #SKz_transformed_temp
)
INSERT INTO StwPh_27538117.dbo.SKz_transformed (SText, NakupC)
SELECT
    Split.a.value('.', 'VARCHAR(90)') AS SText,
    NakupC
FROM
    SplitValues
CROSS APPLY
    STextXML.nodes('/M') AS Split(a);

-- Dropping temporary table
DROP TABLE #SKz_transformed_temp;
