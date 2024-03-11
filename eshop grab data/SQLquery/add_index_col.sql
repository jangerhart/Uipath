-- t�et� select
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

-- P�id�n� sloupce id_internal do c�lov� tabulky
ALTER TABLE StwPh_27538117.dbo.SKz_transformed
ADD id_internal INT IDENTITY(1,1);

-- Rozd�len� hodnot ve sloupci IDS a vlo�en� na samostatn� ��dky
;WITH SplitValues AS (
    SELECT
        IDS,
        NakupC,
        CAST('<M>' + REPLACE(IDS, ' ', '</M><M>') + '</M>' AS XML) AS IDSXML
    FROM
        #SKz_transformed_temp
)
INSERT INTO StwPh_27538117.dbo.SKz_transformed (IDS, NakupC) -- P�id�n� sloupce id_internal
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


