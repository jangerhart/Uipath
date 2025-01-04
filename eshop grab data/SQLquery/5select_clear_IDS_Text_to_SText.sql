
-- paty select
-- Aktualizace hodnot ve sloupci SText
UPDATE StwPh_27538117.dbo.SKz_transformed
SET SText = CASE 

                WHEN RIGHT(IDS, 10) = 'presenonly' THEN LEFT(IDS, LEN(IDS) - 10)
				WHEN RIGHT(IDS, 10) = 'ablockonly' THEN LEFT(IDS, LEN(IDS) - 10)
                WHEN RIGHT(IDS, 9) = 'kitgasket' THEN LEFT(IDS, LEN(IDS) - 9)
				WHEN RIGHT(IDS, 9) = 'eomsensor' THEN LEFT(IDS, LEN(IDS) - 9)
				WHEN RIGHT(IDS, 8) = 'seal-oem' THEN LEFT(IDS, LEN(IDS) - 8)
				WHEN RIGHT(IDS, 8) = 'pump-oem' THEN LEFT(IDS, LEN(IDS) - 8)
				WHEN RIGHT(IDS, 8) = 'eomvalve' THEN LEFT(IDS, LEN(IDS) - 8)
				WHEN RIGHT(IDS, 8) = 'oemvalve' THEN LEFT(IDS, LEN(IDS) - 8)
				WHEN RIGHT(IDS, 8) = 'a_damper' THEN LEFT(IDS, LEN(IDS) - 8)
				WHEN RIGHT(IDS, 8) = 'a_SilAss' THEN LEFT(IDS, LEN(IDS) - 8)
				WHEN RIGHT(IDS, 7) = 'frlowgl' THEN LEFT(IDS, LEN(IDS) - 7)
				WHEN RIGHT(IDS, 7) = 'altssum' THEN LEFT(IDS, LEN(IDS) - 7)
				WHEN RIGHT(IDS, 7) = 'a-over' THEN LEFT(IDS, LEN(IDS) - 7)
				WHEN RIGHT(IDS, 7) = 'nlbonly' THEN LEFT(IDS, LEN(IDS) - 7)
				WHEN RIGHT(IDS, 7) = 'nekompl' THEN LEFT(IDS, LEN(IDS) - 7)
				WHEN RIGHT(IDS, 7) = 'kitseal' THEN LEFT(IDS, LEN(IDS) - 7)
				WHEN RIGHT(IDS, 7) = 'Aaltsum' THEN LEFT(IDS, LEN(IDS) - 7)
				WHEN RIGHT(IDS, 7) = 'repseta' THEN LEFT(IDS, LEN(IDS) - 7)
				WHEN RIGHT(IDS, 7) = 'corteco' THEN LEFT(IDS, LEN(IDS) - 7)
                WHEN RIGHT(IDS, 6) = 'Htr-me' THEN LEFT(IDS, LEN(IDS) - 6)
				WHEN RIGHT(IDS, 6) = 'aready' THEN LEFT(IDS, LEN(IDS) - 6)
				WHEN RIGHT(IDS, 6) = 'aOKset' THEN LEFT(IDS, LEN(IDS) - 6)
                WHEN RIGHT(IDS, 6) = 'altsum' THEN LEFT(IDS, LEN(IDS) - 6)
				WHEN RIGHT(IDS, 6) = 'nekopl' THEN LEFT(IDS, LEN(IDS) - 6)
				WHEN RIGHT(IDS, 6) = 'a-anac' THEN LEFT(IDS, LEN(IDS) - 6)
				WHEN RIGHT(IDS, 6) = 'Tinken' THEN LEFT(IDS, LEN(IDS) - 6)
				WHEN RIGHT(IDS, 6) = 'sh1srv' THEN LEFT(IDS, LEN(IDS) - 6)
				WHEN RIGHT(IDS, 5) = 'sdx-w' THEN LEFT(IDS, LEN(IDS) - 5)
				WHEN RIGHT(IDS, 5) = 'a-led' THEN LEFT(IDS, LEN(IDS) - 5)
				WHEN RIGHT(IDS, 5) = 'sdx-p' THEN LEFT(IDS, LEN(IDS) - 5)
				WHEN RIGHT(IDS, 5) = 'guard' THEN LEFT(IDS, LEN(IDS) - 5)
				WHEN RIGHT(IDS, 5) = 'atorx' THEN LEFT(IDS, LEN(IDS) - 5)
				WHEN RIGHT(IDS, 5) = 'a1,5p' THEN LEFT(IDS, LEN(IDS) - 5)
				WHEN RIGHT(IDS, 5) = 'kauce' THEN LEFT(IDS, LEN(IDS) - 5)
				WHEN RIGHT(IDS, 5) = 'valeo' THEN LEFT(IDS, LEN(IDS) - 5)
				WHEN RIGHT(IDS, 5) = 'lukks' THEN LEFT(IDS, LEN(IDS) - 5)
				WHEN RIGHT(IDS, 5) = 'total' THEN LEFT(IDS, LEN(IDS) - 5)
				WHEN RIGHT(IDS, 5) = 'conti' THEN LEFT(IDS, LEN(IDS) - 5)
				WHEN RIGHT(IDS, 4) = 'ahex' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'a-10' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'Anex' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'used' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'Ared' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'Gkus' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'a-ge' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'aopr' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'oem_' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'gloa' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'a_po' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'okmh' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'okbo' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'tsrv' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'repa' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'pcva' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'gear' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = '_ozd' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'stab' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'full' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'prem' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'kit_' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'okhe' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'body' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'luk_' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'tuk_' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'asp_' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'a-an' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'a-rh' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'koyo' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'spoj' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 4) = 'asp_' THEN LEFT(IDS, LEN(IDS) - 4)
				WHEN RIGHT(IDS, 3) = 'Amh' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'okh' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'Aip' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'kit' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'key' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'oem' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'eom' THEN LEFT(IDS, LEN(IDS) - 3) --asi překlep
				WHEN RIGHT(IDS, 3) = 'sdx' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'nex' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'a2p' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'bza' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'srv' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'ep-' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'Pip' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'Pap' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'par' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'ISZ' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'a-t' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = '-3a' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'set' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'pvb' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'okm' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'kus' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'nex' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'red' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'a1p' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'aks' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'a3p' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'Ahe' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'a5p' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'a4p' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'a3p' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'a-6' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'par' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'a-8' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'asp' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'Afi' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'Am1' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'kmp' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'qks' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'bss' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'mth' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'nlb' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'olb' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'a-2' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'pre' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'int' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'cva' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'trx' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'rep' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'xxx' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'aps' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'oks' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'tks' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'tuk' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'per' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'wix' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'kyb' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'ntn' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'tim' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'del' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'rem' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'luk' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'a_v' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 3) = 'sh1' THEN LEFT(IDS, LEN(IDS) - 3)
				WHEN RIGHT(IDS, 2) = 'Aa' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'ne' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'sh' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'q2' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 't_' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'ex' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'ts' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'a_' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'ft' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'f1' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 's1' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'li' THEN LEFT(IDS, LEN(IDS) - 2)
                WHEN RIGHT(IDS, 2) = 'd1' THEN LEFT(IDS, LEN(IDS) - 2)
                WHEN RIGHT(IDS, 2) = 'an' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'ge' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'ag' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'kr' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'ba' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'ao' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'Aw' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'Af' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'Ab' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'do' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'Ah' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'a3' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'a1' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'Da' THEN LEFT(IDS, LEN(IDS) - 2)
                WHEN RIGHT(IDS, 2) = 'a2' THEN LEFT(IDS, LEN(IDS) - 2)
                WHEN RIGHT(IDS, 2) = 'hc' THEN LEFT(IDS, LEN(IDS) - 2)
                WHEN RIGHT(IDS, 2) = 'ks' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'rs' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'ht' THEN LEFT(IDS, LEN(IDS) - 2)
                WHEN RIGHT(IDS, 2) = 'fi' THEN LEFT(IDS, LEN(IDS) - 2)
                WHEN RIGHT(IDS, 2) = 'Ad' THEN LEFT(IDS, LEN(IDS) - 2)
                WHEN RIGHT(IDS, 2) = 'Am' THEN LEFT(IDS, LEN(IDS) - 2)
                WHEN RIGHT(IDS, 2) = 'As' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'aq' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'a1' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'az' THEN LEFT(IDS, LEN(IDS) - 2)
                WHEN RIGHT(IDS, 2) = 'mm' THEN LEFT(IDS, LEN(IDS) - 2)
                WHEN RIGHT(IDS, 2) = 'mh' THEN LEFT(IDS, LEN(IDS) - 2)
                WHEN RIGHT(IDS, 2) = 'Ca' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'de' THEN LEFT(IDS, LEN(IDS) - 2)
                WHEN RIGHT(IDS, 2) = 'Pa' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'ip' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'a)' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'Za' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'ep' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'bo' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'w1' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'he' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'fq' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'sG' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'sE' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'pG' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'm1' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'ep' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'Ab' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'ep' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'ep' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'ep' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'ep' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'ep' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'pE' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'va' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'mn' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'ex' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'fe' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'so' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'bi' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 2) = 'ga' THEN LEFT(IDS, LEN(IDS) - 2)
				WHEN RIGHT(IDS, 1) = 'a' THEN LEFT(IDS, LEN(IDS) - 1)
                WHEN RIGHT(IDS, 1) = 'b' THEN LEFT(IDS, LEN(IDS) - 1)
                WHEN RIGHT(IDS, 1) = 'c' THEN LEFT(IDS, LEN(IDS) - 1)
                WHEN RIGHT(IDS, 1) = 'd' THEN LEFT(IDS, LEN(IDS) - 1)
				WHEN RIGHT(IDS, 1) = 'f' THEN LEFT(IDS, LEN(IDS) - 1)
                WHEN RIGHT(IDS, 1) = 'm' THEN LEFT(IDS, LEN(IDS) - 1)
                WHEN RIGHT(IDS, 1) = 'n' THEN LEFT(IDS, LEN(IDS) - 1)
                WHEN RIGHT(IDS, 1) = 'h' THEN LEFT(IDS, LEN(IDS) - 1)
                WHEN RIGHT(IDS, 1) = 's' THEN LEFT(IDS, LEN(IDS) - 1)
                WHEN RIGHT(IDS, 1) = 'Z' THEN LEFT(IDS, LEN(IDS) - 1)
                WHEN RIGHT(IDS, 1) = 'C' THEN LEFT(IDS, LEN(IDS) - 1)
                WHEN RIGHT(IDS, 1) = 'A' THEN LEFT(IDS, LEN(IDS) - 1)
                WHEN RIGHT(IDS, 1) = 'P' THEN LEFT(IDS, LEN(IDS) - 1)
                WHEN RIGHT(IDS, 1) = 'k' THEN LEFT(IDS, LEN(IDS) - 1)
				WHEN RIGHT(IDS, 1) = 'r' THEN LEFT(IDS, LEN(IDS) - 1)
                WHEN RIGHT(IDS, 1) = 'w' THEN LEFT(IDS, LEN(IDS) - 1)
                WHEN RIGHT(IDS, 1) = 't' THEN LEFT(IDS, LEN(IDS) - 1)
				WHEN RIGHT(IDS, 1) = 'v' THEN LEFT(IDS, LEN(IDS) - 1)
				WHEN RIGHT(IDS, 1) = 'u' THEN LEFT(IDS, LEN(IDS) - 1)
				WHEN RIGHT(IDS, 1) = 'q' THEN LEFT(IDS, LEN(IDS) - 1)
				WHEN RIGHT(IDS, 1) = 'x' THEN LEFT(IDS, LEN(IDS) - 1)
				WHEN RIGHT(IDS, 1) = 'i' THEN LEFT(IDS, LEN(IDS) - 1)

                ELSE IDS
            END;



-- Kontrola v�sledk�
SELECT * 
FROM StwPh_27538117.dbo.SKz_transformed
WHERE RIGHT(SText, 8) COLLATE Latin1_General_BIN LIKE '%[a-z]%'
