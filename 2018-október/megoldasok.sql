A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!


1. feladat:
CREATE DATABASE teke
DEFAULT CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

3. feladat:
SELECT nev
FROM `versenyzok` 
WHERE korcsop = 'A'
ORDER BY nev asc;

4. feladat:
SELECT DISTINCT versenyzo
FROM `eredmenyek`
WHERE ures > 0;

5. feladat:
SELECT versenyzok.nev, AVG(eredmenyek.tarolas) as atlagpont
FROM `eredmenyek` INNER JOIN versenyzok ON versenyzok.rajtszam = eredmenyek.versenyzo
GROUP BY versenyzok.rajtszam
ORDER BY atlagpont DESC;

6. feladat:
SELECT egyesuletek.nev
FROM `egyesuletek` INNER JOIN versenyzok ON versenyzok.egyid = egyesuletek.id
GROUP BY egyesuletek.id
ORDER BY count(versenyzok.rajtszam) DESC
LIMIT 1;

7. feladat:
SELECT versenyzok.nev, SUM(eredmenyek.teli+eredmenyek.tarolas) as eredmeny, SUM(eredmenyek.tarolas), SUM(eredmenyek.ures)
FROM `versenyzok` INNER JOIN eredmenyek ON versenyzok.rajtszam = eredmenyek.versenyzo
WHERE versenyzok.korcsop = 'B'
GROUP BY versenyzok.rajtszam
ORDER BY eredmeny DESC, eredmenyek.tarolas DESC, eredmenyek.ures ASC;