DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS artists;

CREATE TABLE artists (
  id SERIAL PRIMARY KEY,
  name VARCHAR
);

CREATE TABLE albums (
  id SERIAL PRIMARY KEY,
  title VARCHAR,
  genre VARCHAR,
  artist_id INT REFERENCES artists(id) ON DELETE CASCADE
);
-- on delete CASCADE will delete all albums related to the artist when the artist is deleted
