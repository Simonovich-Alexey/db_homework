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
SELECT name_genre, COUNT(gs.genre_id) FROM genre g
JOIN genre_singer gs ON g.genre_id  = gs.genre_id
GROUP BY name_genre, gs.genre_id;

--Задание 3.2
SELECT name_album, COUNT(s.album_id) FROM album a
JOIN song s ON a.album_id = s.album_id
WHERE EXTRACT(YEAR FROM a.year_release) BETWEEN '2019' AND '2020'
GROUP BY name_album;

--Задание 3.3
SELECT name_album, AVG(s.duration) FROM album a
JOIN song s ON a.album_id = s.album_id
GROUP BY name_album;

--Задание 3.4
SELECT name_singer FROM singer
WHERE name_singer NOT IN(
SELECT name_singer FROM singer s
JOIN singer_album sa ON s.singer_id = sa.singer_id
JOIN album a ON sa.album_id = a.album_id
WHERE EXTRACT(YEAR FROM a.year_release) = '2020');

--Задание 3.5
SELECT name_collection FROM collection c
JOIN collection_song cs ON c.collection_id = cs.collection_id
JOIN song s ON cs.song_id = s.song_id
JOIN singer_album sa ON s.album_id = sa.album_id
JOIN singer s2 ON sa.singer_id = s2.singer_id
WHERE s2.name_singer = 'Linkin Park';

--Задание 4.1
SELECT name_album FROM album a
JOIN singer_album sa ON a.album_id = sa.album_id
JOIN genre_singer gs ON sa.singer_id = gs.singer_id
GROUP BY name_album 
HAVING COUNT(*) > 1;

--Задание 4.2
SELECT name_song FROM song s
LEFT JOIN collection_song cs ON s.song_id = cs.song_id
GROUP BY name_song, cs.collection_id
HAVING cs.collection_id IS NULL;

--Задание 4.3
SELECT name_singer FROM singer s
JOIN singer_album sa ON s.singer_id = sa.singer_id
JOIN song s2 ON sa.album_id = s2.album_id
WHERE s2.duration = (SELECT MIN(duration) FROM song);

--Задание 4.4
SELECT name_album FROM album a
JOIN song s ON a.album_id = s.album_id
GROUP BY name_album
HAVING COUNT(s.album_id) = (SELECT COUNT(*) FROM song GROUP BY album_id ORDER BY COUNT(*) LIMIT 1);