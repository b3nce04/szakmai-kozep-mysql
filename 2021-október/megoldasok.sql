-- A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!

-- 9. feladat:
CREATE DATABASE tdhongrie
DEFAULT CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

-- 11. feladat:
DELETE FROM csapat WHERE id=21;

-- 12. feladat:
SELECT nev
FROM versenyzo
WHERE nemzetiseg = 'HUN'
ORDER BY nev ASC;

-- 13. feladat:
SELECT nemzetiseg, count(id) as indulokSzama
FROM versenyzo
GROUP BY nemzetiseg
ORDER BY indulokSzama DESC;

-- 14. feladat:
SELECT eredmeny.szakasz, eredmeny.ido
FROM eredmeny INNER JOIN versenyzo ON versenyzo.id=eredmeny.versenyzoId
WHERE versenyzo.nev = 'Valter Attila'
ORDER BY eredmeny.szakasz ASC;
 
-- 15. feladat:
SELECT csapat.csapatNev, count(versenyzo.id) as magyarokSzama
FROM csapat INNER JOIN versenyzo ON versenyzo.csapatId = csapat.id
WHERE versenyzo.nemzetiseg = 'HUN'
GROUP BY csapat.csapatNev
HAVING magyarokSzama > 1;