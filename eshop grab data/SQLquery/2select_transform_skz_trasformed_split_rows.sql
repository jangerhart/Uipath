-- druh� select
-- tento dotaz transormuje tabulku StwPh_27538117.dbo.SKz_transformed tak, �e u v�ech ��dk�, kde je ve sloupci IDS v�ce skupin, tyto skupiny rozd�l� (odd�lova� je mezer). Hodnotu NakupC vlo�� do 
-- nov� vytvo�en�ho ��dku a je stejn� jako u p�vodn�ho. Tento select navazuje na transform_skz_remove_unsupported_xml_characters.sql

-- Vytvo�en� do�asn� tabulky pro meziv�sledek
IF OBJECT_ID('tempdb..#SKz_transformed_temp') IS NOT NULL
    DROP TABLE #SKz_transformed_temp;

CREATE TABLE #SKz_transformed_temp (
    IDS VARCHAR(90),
    NakupC DECIMAL(10, 2)
);

-- Vlo�en� dat z p�vodn� tabulky do do�asn� tabulky pro meziv�sledek
INSERT INTO #SKz_transformed_temp (IDS, NakupC)
SELECT IDS, NakupC
FROM StwPh_27538117.dbo.SKz_transformed;

-- Smaz�n� dat z p�vodn� tabulky
DELETE FROM StwPh_27538117.dbo.SKz_transformed;

-- Rozd�len� hodnot ve sloupci IDS a vlo�en� na samostatn� ��dky
;WITH SplitValues AS (
    SELECT
        IDS,
        NakupC,
        CAST('<M>' + REPLACE(IDS, ' ', '</M><M>') + '</M>' AS XML) AS IDSXML
    FROM
        #SKz_transformed_temp
)
INSERT INTO StwPh_27538117.dbo.SKz_transformed (IDS, NakupC)
SELECT
    Split.a.value('.', 'VARCHAR(90)') AS IDS,
    NakupC
FROM
    SplitValues
CROSS APPLY
    IDSXML.nodes('/M') AS Split(a);

-- Dropping temporary table
DROP TABLE #SKz_transformed_temp;


-- Kontrola v�sledk�
SELECT * FROM StwPh_27538117.dbo.SKz_transformed;


