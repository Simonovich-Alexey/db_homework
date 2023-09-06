--Задание 2.1

SELECT name_song, duration FROM song
WHERE duration = (SELECT MAX(duration) FROM song);

--Задание 2.2
SELECT name_song FROM song
WHERE duration >= 210
ORDER BY duration;

--Задание 2.3
SELECT name_collection FROM collection
WHERE EXTRACT(YEAR FROM year_release) BETWEEN '2018' AND '2020';

--Задание 2.4
SELECT name_singer FROM singer
WHERE name_singer NOT LIKE '% %';

--Задание 2.5
SELECT name_song FROM song
WHERE name_song iLIKE '%my%' OR name_song iLIKE '%мой%';

--Задание 3.1
