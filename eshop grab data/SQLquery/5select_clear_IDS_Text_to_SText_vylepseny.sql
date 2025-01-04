-- paty select
-- Aktualizace hodnot ve sloupci SText
-- Vytvoøení doèasné tabulky s hodnotami, které chcete odstranit
CREATE TABLE #RemoveValues (ValueToRemove NVARCHAR(50), LengthToRemove INT);

-- Vložení hodnot do doèasné tabulky
INSERT INTO #RemoveValues (ValueToRemove, LengthToRemove)
VALUES 
    ('kitgasket', 9),
    ('seal-oem', 8),
    ('pump-oem', 8),
    ('eomvalve', 8),
    ('frlowgl', 7),
    ('kitseal', 7),
    ('Aaltsum', 7),
    ('Htr-me', 6),
    ('aready', 6),
    ('aOKset', 6),
    ('altsum', 6),
    ('sdx-w', 5),
    ('sdx-p', 5),
    ('guard', 5),
    ('atorx', 5),
    ('a1,5p', 5),
    ('ahex', 4),
    ('a-10', 4),
    ('Anex', 4),
    ('Ared', 4),
    ('Gkus', 4),
    ('a-ge', 4),
    ('aopr', 4),
    ('a_po', 4),
    ('Amh', 3),
    ('Aip', 3),
    ('oem', 3),
    ('eom', 3),
    ('sdx', 3),
	('kus', 3),
    ('nex', 3),
    ('a2p', 3),
    ('bza', 3),
    ('srv', 3),
    ('ep-', 3),
    ('Pip', 3),
    ('par', 3),
    ('ISZ', 3),
    ('a-t', 3),
    ('-3a', 3),
    ('set', 3),
    ('pvb', 3),
    ('okm', 3),
    ('kus', 3),
    ('nex', 3),
    ('red', 3),
    ('a1p', 3),
    ('aks', 3),
    ('a3p', 3),
    ('Ahe', 3),
    ('a5p', 3),
    ('a4p', 3),
    ('a3p', 3),
    ('a-6', 3),
    ('par', 3),
    ('a-8', 3),
    ('asp', 3),
    ('Afi', 3),
    ('Am1', 3),
    ('Aa', 2),
    ('ag', 2),
    ('ao', 2),
    ('Aw', 2),
    ('Af', 2),
    ('Ab', 2),
    ('do', 2),
    ('Ah', 2),
    ('a3', 2),
    ('a1', 2),
    ('Da', 2),
    ('a2', 2),
    ('hc', 2),
    ('ks', 2),
    ('rs', 2),
    ('ht', 2),
    ('Ad', 2),
    ('Am', 2),
    ('As', 2),
    ('aq', 2),
    ('a1', 2),
    ('az', 2),
    ('mm', 2),
    ('mh', 2),
    ('Ca', 2),
    ('de', 2),
    ('Pa', 2),
    ('ip', 2),
    ('a)', 2),
    ('Za', 2),
    ('ep', 2),
    ('bo', 2),
    ('w1', 2),
    ('he', 2),
    ('fq', 2),
    ('sG', 2),
    ('sE', 2),
    ('pG', 2),
    ('m1', 2),
    ('ep', 2),
    ('Ab', 2),
    ('ep', 2),
    ('ep', 2),
    ('ep', 2),
    ('ep', 2),
    ('ep', 2),
    ('ep', 2),
    ('ep', 2),
    ('a', 1),
    ('b', 1),
    ('c', 1),
    ('d', 1),
    ('f', 1),
    ('m', 1),
    ('h', 1),
    ('s', 1),
    ('Z', 1),
    ('C', 1),
    ('A', 1),
    ('P', 1),
    ('w', 1),
    ('t', 1),
    ('v', 1);

-- Aktualizace hodnot ve sloupci SText pomocí cyklu
DECLARE @ValueToRemove NVARCHAR(50);
DECLARE @LengthToRemove INT;

DECLARE cur CURSOR FOR
SELECT ValueToRemove, LengthToRemove FROM #RemoveValues;

OPEN cur;
FETCH NEXT FROM cur INTO @ValueToRemove, @LengthToRemove;

WHILE @@FETCH_STATUS = 0
BEGIN
    UPDATE StwPh_27538117.dbo.SKz_transformed
    SET SText = LEFT(IDS, LEN(IDS) - @LengthToRemove)
    WHERE RIGHT(IDS, LEN(@ValueToRemove)) = @ValueToRemove;

    FETCH NEXT FROM cur INTO @ValueToRemove, @LengthToRemove;
END;

CLOSE cur;
DEALLOCATE cur;

-- Kontrola výsledkù
SELECT * FROM StwPh_27538117.dbo.SKz_transformed;

-- Odstranìní doèasné tabulky
DROP TABLE #RemoveValues;