INSERT INTO genre
VALUES
(1, 'Рок'),
(2, 'Хип-хоп'),
(3, 'Поп-музыка'),
(4, 'Драм-н-бейс'),
(5, 'Джаз');

INSERT INTO singer
VALUES
(1, 'Рэй Чарльз'),
(2, 'Джеймс Браун'),
(3, 'Jay-Z'),
(4, 'Eminem'),
(5, 'Drake'),
(6, 'JONY'),
(7, 'Руки вверх'),
(8, 'Lady Gaga'),
(9, 'Pendulum'),
(10, 'Sub Focus'),
(11, 'Linkin Park'),
(12, 'U2'),
(13, 'The Rolling Stones');

INSERT INTO genre_singer
VALUES
(1, 1, 11),
(2, 1, 12),
(3, 1, 13),
(4, 2, 3),
(5, 2, 4),
(6, 2, 5),
(7, 3, 6),
(8, 3, 7),
(9, 3, 8),
(10, 4, 9),
(11, 4, 10),
(12, 5, 1),
(13, 5, 2);

INSERT INTO album
VALUES
(1, 'The Rolling Stones', '1964-01-05'),
(2, 'Breaking the Habit', '2004-01-06'),
(3, 'Revival', '2017-02-11'),
(4, 'Ray Charles', '1957-04-15'),
(5, 'The Black Album', '2003-05-11'),
(6, 'The Fame', '2008-11-07'),
(7, 'Без тормозов', '1999-06-07'),
(8, 'Небесные розы', '2020-05-17'),
(9, 'Partals', '2020-04-22'),
(10, 'The Joshua Tree', '1987-11-03'),
(11, 'Sex Machine', '1970-02-08'),
(12, 'Scorpion', '2018-08-19'),
(13, 'The Reworks', '2018-12-25');

INSERT INTO singer_album
VALUES
(1, 1, 4),
(2, 2, 11),
(3, 3, 5),
(4, 4, 3),
(5, 5, 12),
(6, 6, 8),
(7, 7, 7),
(8, 8, 6),
(9, 9, 13),
(10, 10, 9),
(11, 11, 2),
(12, 12, 10),
(13, 13, 1);

INSERT INTO song
VALUES
(1, 12, 'After Dark', 290),
(2, 11, 'Mother Popcorn', 351),
(3, 10, 'Exit', 293),
(4, 9, 'Freedom', 243),
(5, 8, 'Небесные розы', 181),
(6, 7, 'Атаман', 217),
(7, 6, 'Paparazzi', 208),
(8, 5, 'Allure', 292),
(9, 4, 'I Got a Woman', 173),
(10, 3, 'River', 221),
(11, 2, 'Breaking the Habit', 290),
(12, 1, 'Road Runner', 183),
(13, 13, 'The Island', 233);

INSERT INTO collection
VALUES
(1, 'Хиты', '1999-12-10'),
(2, 'Лето 2023', '2023-09-25'),
(3, 'Рок жив', '2019-01-02'),
(4, 'Ретро', '2010-05-11');

INSERT INTO collection_song
VALUES
(1, 1, 6),
(2, 1, 2),
(3, 2, 5),
(4, 2, 7),
(5, 3, 12),
(6, 3, 11),
(7, 4, 9);