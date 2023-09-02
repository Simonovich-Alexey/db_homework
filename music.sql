CREATE TABLE IF NOT EXISTS genre (
	genre_id SERIAL PRIMARY KEY,
	name_genre VARCHAR(80) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS singer (
	singer_id SERIAL PRIMARY KEY,
	name_singer VARCHAR(80) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS genre_singer (
	genre_singer_id SERIAL PRIMARY KEY,
	genre_id INTEGER NOT NULL,
	singer_id INTEGER NOT NULL,
	CONSTRAINT fk_genre FOREIGN KEY(genre_id) REFERENCES genre(genre_id) ON DELETE CASCADE,
	CONSTRAINT fk_singer FOREIGN KEY(singer_id) REFERENCES singer(singer_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS album (
	album_id SERIAL PRIMARY KEY,
	name_album VARCHAR(120) NOT NULL,
	year_release TIMESTAMP CHECK (EXTRACT(YEAR FROM year_release) >= 1800) NOT NULL
);

CREATE TABLE IF NOT EXISTS singer_album (
	singer_album_id SERIAL PRIMARY KEY,
	singer_id INTEGER NOT NULL,
	album_id INTEGER NOT NULL,
	CONSTRAINT fk_singer FOREIGN KEY(singer_id) REFERENCES singer(singer_id) ON DELETE CASCADE,
	CONSTRAINT fk_album FOREIGN KEY(album_id) REFERENCES album(album_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS song (
	song_id SERIAL PRIMARY KEY,
	album_id INTEGER NOT NULL REFERENCES album(album_id),
	name_song VARCHAR(120) NOT NULL,
	duration INTEGER CHECK (duration > 30 AND duration < 1800) NOT NULL
);

CREATE TABLE IF NOT EXISTS collection (
	collection_id SERIAL PRIMARY KEY,
	name_collection VARCHAR(120) NOT NULL,
	year_release TIMESTAMP CHECK (EXTRACT(YEAR FROM year_release) >= 1800) NOT NULL
);

CREATE TABLE IF NOT EXISTS collection_song (
	collection_song_id SERIAL PRIMARY KEY,
	collection_id INTEGER NOT NULL,
	song_id INTEGER NOT NULL,
	CONSTRAINT fk_collection FOREIGN KEY(collection_id) REFERENCES collection(collection_id) ON DELETE CASCADE,
	CONSTRAINT fk_song FOREIGN KEY(song_id) REFERENCES song(song_id) ON DELETE CASCADE
);
