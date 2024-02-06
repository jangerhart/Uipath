USE uipathrpa;

-- Vytvoøení doèasné tabulky pro import dat z CSV souboru
CREATE TABLE #TempPart (
    part NVARCHAR(255)
);

-- Import dat ze souboru CSV do doèasné tabulky
BULK INSERT #TempPart
FROM 'D:\working\part.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2 -- Pøeskoèit hlavièku, pokud existuje
);

-- Zjistìte poslední hodnotu ID v tabulce SN
DECLARE @LastID INT;
SELECT @LastID = MAX(ID) FROM dbo.SN;

-- Vložení dat z doèasné tabulky do tabulky dbo.SN
INSERT INTO dbo.SN (ID, part)
SELECT ROW_NUMBER() OVER (ORDER BY part) + ISNULL(@LastID, 0), part
FROM #TempPart;

-- Drop doèasnou tabulku
DROP TABLE #TempPart;
