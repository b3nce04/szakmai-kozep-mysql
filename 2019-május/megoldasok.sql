-- A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!


-- 1. feladat:
CREATE DATABASE euroskills
DEFAULT CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

-- 3. feladat:
SELECT count(id) as ermek
FROM `versenyzo` 
WHERE pont >= 700;

-- 4. feladat:
SELECT DISTINCT orszag.orszagNev
FROM `orszag` INNER JOIN versenyzo ON versenyzo.orszagId = orszag.id
ORDER BY orszag.orszagNev ASC;

-- 5. feladat:
SELECT szakma.szakmaNev, count(versenyzo.id) as 'versenyzok szama'
FROM `versenyzo` INNER JOIN szakma ON szakma.id = versenyzo.szakmaId
GROUP BY szakma.szakmaNev
ORDER BY count(versenyzo.id) DESC;

-- 6. feladat:
SELECT versenyzo.nev, orszag.orszagNev, szakma.szakmaNev, versenyzo.pont
FROM `versenyzo` INNER JOIN szakma ON szakma.id = versenyzo.szakmaId
INNER JOIN orszag ON versenyzo.orszagId = orszag.id
ORDER BY versenyzo.pont DESC, versenyzo.nev ASC
LIMIT 25;