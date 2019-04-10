

USE codeup_test_db;

-- SELECT 'Name of Albums by Pink Floyd' AS 'SELECT';
SELECT * FROM albums WHERE artist = 'Pink Floyd';

-- SELECT 'Year of Sgt. Pepper''s Lonely Hearts Club Band' AS 'Year';
SELECT release_year
FROM albums
WHERE name='Sgt. Pepper''s Lonely Hearts Club Band';

-- SELECT 'Genre of Nevermind';
SELECT gener
FROM albums
WHERE name = 'Nevermind';

-- SELECT 'Albums from the 90''s';
SELECT *
FROM albums
WHERE realese_date BETWEEN 1990 AND 1999;

-- SELECT 'Albums that sold less than 20 million';
SELECT *
FROM albums
WHERE sales < 20;

-- SELECT 'All the albums with a genre of Rock';

SELECT *
FROM albums
WHERE gener = 'Rock';

