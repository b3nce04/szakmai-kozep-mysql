-- A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!

-- 10. feladat:
CREATE DATABASE tisza
DEFAULT CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

-- 12. feladat:
DELETE FROM meres WHERE nap = '2020-03-27';

-- 13. feladat:
UPDATE vizmerce SET igId = 2 WHERE varos = 'Tokaj';

-- 14. feladat:
SELECT varos, nullPont
FROM vizmerce
ORDER BY nullPont ASC
LIMIT 1;

-- 15. feladat:
SELECT varos, (lnv-lkv) as ingadozas
FROM vizmerce
GROUP BY ingadozas DESC;
 
-- 16. feladat:
SELECT igazgatosag.nev, count(vizmerce.id) as merceszam
FROM vizmerce INNER JOIN igazgatosag ON igazgatosag.id = vizmerce.igId
GROUP BY igazgatosag.nev;
  
-- 17. feladat:
SELECT AVG(meres.vizAllas) as atlag
FROM vizmerce INNER JOIN meres ON meres.vmId = vizmerce.id
WHERE MONTH(meres.nap) = 4 AND vizmerce.varos = 'Szolnok';