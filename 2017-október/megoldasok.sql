A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!

1. feladat:
CREATE DATABASE ostermelo
DEFAULT CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

3. feladat:
SELECT DISTINCT telepules
FROM `partnerek`
ORDER BY telepules ASC;

4. feladat:
SELECT count(kiszallitasok.sorsz) as alkalmak
FROM `partnerek` INNER JOIN kiszallitasok ON kiszallitasok.partnerid = partnerek.id
WHERE partnerek.telepules = 'Vác';

5. feladat:
SELECT MAX(karton) as legtobb 
FROM `kiszallitasok` 
WHERE MONTH(datum) = 5;

6. feladat:
SELECT telepules
FROM `partnerek` 
GROUP BY telepules
HAVING count(id) > 1;

7. feladat:
SELECT gyumolcslevek.gynev as ital, SUM(kiszallitasok.karton*6) as doboz
FROM `gyumolcslevek` INNER JOIN kiszallitasok ON kiszallitasok.gyumleid = gyumolcslevek.id
GROUP BY gyumolcslevek.gynev
ORDER BY doboz DESC
LIMIT 3;