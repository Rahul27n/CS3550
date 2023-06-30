/* The below statement(can be modified accordingly) opens the database file*/
.open "C:/Users/nelak/Downloads/Assignment_2_AI20BTECH11029.db"

-- SELECT Name as short FROM tracks WHERE Milliseconds < 60000; This gives the tracks in the short category
SELECT count(Milliseconds) as short FROM tracks WHERE Milliseconds < 60000;
-- SELECT Name as medium FROM tracks WHERE Milliseconds BETWEEN 60000 AND 300000; This gives the tracks in the medium category
SELECT count(Milliseconds) as medium FROM tracks WHERE Milliseconds BETWEEN 60000 AND 300000;
-- SELECT Name as long FROM tracks WHERE Milliseconds > 300000; This gives the tracks in the long category
SELECT count(Milliseconds) as long FROM tracks WHERE Milliseconds > 300000;

/* The output of the above query is present in Assignment_2_AI20BTECH11029.txt file*/