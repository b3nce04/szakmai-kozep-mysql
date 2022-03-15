A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!

1. feladat:
CREATE DATABASE varosok
DEFAULT CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

3. feladat:
SELECT * 
FROM `varos` 
WHERE vnev LIKE '%vásár%';

4. feladat:
SELECT vnev, nepesseg, terulet
FROM `varos` 
WHERE terulet > 400
ORDER BY nepesseg DESC;

5. feladat:
SELECT vnev, nepesseg
FROM `varos` INNER JOIN megye ON megye.id = varos.megyeid
WHERE megye.mnev = 'Fejér' AND nepesseg > 15000;

6. feladat:
SELECT varostipus.vtip as 'Város típusa', count(varos.id) as 'Városok száma', SUM(varos.nepesseg) as 'Népesség' 
FROM `varos` INNER JOIN varostipus ON varostipus.id = varos.vtipid
GROUP BY varostipus.id
HAVING NOT varostipus.vtip = 'Főváros';

7. feladat:
SELECT megye.mnev, count(varos.id) as db
FROM `varos` INNER JOIN megye ON megye.id = varos.megyeid
WHERE NOT varos.kisterseg = varos.jaras
GROUP BY megye.id
HAVING db > 8
ORDER BY db DESC;