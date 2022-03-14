A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!


1. feladat:
CREATE DATABASE maratonvalto
DEFAULT CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

3. feladat:
INSERT INTO `eredmenyek` VALUES (1044,4,15765)

4. feladat:
SELECT fnev as futo, szulev
FROM `futok` 
WHERE NOT ffi
ORDER BY fnev ASC;

5. feladat:
SELECT fnev as futo, (2016-szulev) as kor
FROM `futok` 
WHERE (2016-szulev) >= 42
ORDER BY szulev ASC, szulho ASC;

6. feladat:
SELECT futok.fnev as futo, eredmenyek.ido
FROM `eredmenyek` INNER JOIN futok ON eredmenyek.futo = futok.fid
WHERE futok.ffi
ORDER BY eredmenyek.ido ASC
LIMIT 10;

7. feladat:
SELECT futok.csapat, SUM(eredmenyek.ido) as csapatido
FROM `futok` INNER JOIN eredmenyek ON eredmenyek.futo = futok.fid
GROUP BY futok.csapat
ORDER BY csapatido ASC;