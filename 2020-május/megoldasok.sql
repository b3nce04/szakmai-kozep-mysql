-- A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!


-- 8. feladat:
CREATE DATABASE konyvtarak
DEFAULT CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

-- 10. feladat:
UPDATE megyek SET megyeNev = 'Budapest' WHERE megyeNev = 'BP';

-- 11. feladat:
SELECT konyvtarNev, irsz
FROM konyvtarak
WHERE konyvtarNev LIKE '%Szakkönyvtár%';

-- 12. feladat:
SELECT konyvtarNev, irsz, cim
FROM konyvtarak
WHERE irsz LIKE '1%'
ORDER BY irsz ASC;

-- 13. feladat:
SELECT telepulesek.telepNev, count(konyvtarak.id) as konyvtarDarab
FROM `telepulesek` INNER JOIN konyvtarak ON konyvtarak.irsz = telepulesek.irsz
GROUP BY telepulesek.telepNev
HAVING konyvtarDarab >= 7;

-- 14. feladat:
SELECT megyek.megyeNev, count(telepulesek.irsz) as telepulesDarab
FROM `megyek` INNER JOIN telepulesek ON telepulesek.megyeId = megyek.id
WHERE NOT megyek.megyeNev = 'Budapest'
GROUP BY megyek.megyeNev
ORDER BY telepulesDarab DESC, megyek.megyeNev DESC;