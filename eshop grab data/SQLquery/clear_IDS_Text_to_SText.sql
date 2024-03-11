
-- paty select
-- Aktualizace hodnot ve sloupci SText
UPDATE StwPh_27538117.dbo.SKz_transformed
SET SText = CASE 
                
                
				WHEN RIGHT(IDS, 8) = 'seal-oem' THEN LEFT(IDS, LEN(IDS) - 8)
				WHEN RIGHT(IDS, 7) = 'frlowgl' THEN LEFT(IDS, LEN(IDS) - 7)
                WHEN RIGHT(IDS, 6) = 'Htr-me' THEN LEFT(IDS, LEN(IDS) - 6)
                WHEN RIGHT(IDS, 5) = 'sdx-w' THEN LEFT(IDS, LEN(IDS) - 5)
				WHEN RIGHT(IDS, 5) = 'sdx-p' THEN LEFT(IDS, LEN(IDS) - 5)
				WHEN RIGHT(IDS, 4) = 'ahex' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'Gkus' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'a-ge' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'aopr' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 3) = 'oem' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'sdx' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'bza' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'srv' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'ep-' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'Pip' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'ISZ' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'a-t' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = '-3a' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'set' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'pvb' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'okm' THEN LEFT(IDS, LEN(IDS) - 3)
                WHEN RIGHT(IDS, 2) = 'Aa' THEN LEFT(IDS, LEN(IDS) - 2)
                WHEN RIGHT(IDS, 2) = 'a2' THEN LEFT(IDS, LEN(IDS) - 2)
                WHEN RIGHT(IDS, 2) = 'hc' THEN LEFT(IDS, LEN(IDS) - 2)
                WHEN RIGHT(IDS, 2) = 'ks' THEN LEFT(IDS, LEN(IDS) - 2)
                WHEN RIGHT(IDS, 2) = 'Ad' THEN LEFT(IDS, LEN(IDS) - 2)
                WHEN RIGHT(IDS, 2) = 'Am' THEN LEFT(IDS, LEN(IDS) - 2)
                WHEN RIGHT(IDS, 2) = 'As' THEN LEFT(IDS, LEN(IDS) - 2)
                WHEN RIGHT(IDS, 2) = 'mm' THEN LEFT(IDS, LEN(IDS) - 2)
                WHEN RIGHT(IDS, 2) = 'mh' THEN LEFT(IDS, LEN(IDS) - 2)
                WHEN RIGHT(IDS, 2) = 'Ca' THEN LEFT(IDS, LEN(IDS) - 2)
                WHEN RIGHT(IDS, 2) = 'Pa' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'ip' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'a)' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'Za' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'ep' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'bo' THEN LEFT(IDS, LEN(IDS) - 2)
                WHEN RIGHT(IDS, 1) = 'a' THEN LEFT(IDS, LEN(IDS) - 1)
                WHEN RIGHT(IDS, 1) = 'b' THEN LEFT(IDS, LEN(IDS) - 1)
                WHEN RIGHT(IDS, 1) = 'c' THEN LEFT(IDS, LEN(IDS) - 1)
                WHEN RIGHT(IDS, 1) = 'd' THEN LEFT(IDS, LEN(IDS) - 1)
                WHEN RIGHT(IDS, 1) = 'm' THEN LEFT(IDS, LEN(IDS) - 1)
                WHEN RIGHT(IDS, 1) = 'h' THEN LEFT(IDS, LEN(IDS) - 1)
                WHEN RIGHT(IDS, 1) = 's' THEN LEFT(IDS, LEN(IDS) - 1)
                WHEN RIGHT(IDS, 1) = 'Z' THEN LEFT(IDS, LEN(IDS) - 1)
                WHEN RIGHT(IDS, 1) = 'C' THEN LEFT(IDS, LEN(IDS) - 1)
                WHEN RIGHT(IDS, 1) = 'A' THEN LEFT(IDS, LEN(IDS) - 1)
                WHEN RIGHT(IDS, 1) = 'P' THEN LEFT(IDS, LEN(IDS) - 1)
                WHEN RIGHT(IDS, 1) = 'w' THEN LEFT(IDS, LEN(IDS) - 1)
                WHEN RIGHT(IDS, 1) = 't' THEN LEFT(IDS, LEN(IDS) - 1)
                ELSE IDS
            END;



-- Kontrola v�sledk�
SELECT * FROM StwPh_27538117.dbo.SKz_transformed;

