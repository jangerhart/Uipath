USE uipathrpa;

-- Vytvo�en� do�asn� tabulky pro import dat z CSV souboru
CREATE TABLE #TempPart (
    part NVARCHAR(255)
);

-- Import dat ze souboru CSV do do�asn� tabulky
BULK INSERT #TempPart
FROM 'D:\working\part.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2 -- P�esko�it hlavi�ku, pokud existuje
);

-- Zjist�te posledn� hodnotu ID v tabulce SN
DECLARE @LastID INT;
SELECT @LastID = MAX(ID) FROM dbo.SN;

-- Vlo�en� dat z do�asn� tabulky do tabulky dbo.SN
INSERT INTO dbo.SN (ID, part)
SELECT ROW_NUMBER() OVER (ORDER BY part) + ISNULL(@LastID, 0), part
FROM #TempPart;

-- Drop do�asnou tabulku
DROP TABLE #TempPart;
