-- A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!


-- 10. feladat:
CREATE DATABASE halozat
DEFAULT CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

-- 12. feladat:
INSERT INTO megallok (nev, id) VALUES ('Kőbányai garázs', 198);

-- 13. feladat:
UPDATE jaratok SET elsoAjtos = False WHERE id = 20;

-- 14. feladat:
SELECT jaratSzam
FROM jaratok
WHERE elsoAjtos;

-- 15. feladat:
SELECT nev
FROM megallok
WHERE nev LIKE '%sétány'
ORDER BY nev ASC;

-- 16. feladat:
SELECT halozat.sorszam, megallok.nev as megallo
FROM halozat 
INNER JOIN megallok ON megallok.id = halozat.megallo
INNER JOIN jaratok ON jaratok.id = halozat.jarat
WHERE halozat.irany = 'A' AND jaratok.jaratSzam = 'CITY'
ORDER BY halozat.sorszam ASC;

-- 17. feladat:
SELECT megallok.nev as megallo, count(jaratok.id) as jaratokSzama
FROM halozat INNER JOIN megallok ON megallok.id = halozat.megallo
INNER JOIN jaratok ON jaratok.id = halozat.jarat
GROUP BY megallok.nev
HAVING jaratokSzama >= 3;