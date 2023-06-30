/* The below statement(can be modified accordingly) opens the database file*/
.open "C:/Users/nelak/Downloads/Assignment_2_AI20BTECH11029.db"

CREATE TABLE In_albums AS SELECT substr(Name,1,1) as First_Character,count(substr(Name,1,1)) as Count_in_Album_with_Repetitions FROM albums NATURAL JOIN artists GROUP BY substr(Name,1,1);
INSERT INTO In_albums(First_Character,Count_in_Album_with_Repetitions) VALUES ('X',0);
CREATE TABLE Not_In_albums AS SELECT substr(Name,1,1) as First_Character,count(substr(Name,1,1)) as Count_Not_in_Album FROM artists WHERE ArtistId NOT IN (SELECT ArtistId FROM albums) GROUP BY substr(Name,1,1);
INSERT INTO Not_In_albums(First_Character,Count_Not_in_Album) VALUES ('Q',0),('U',0),('Z',0);
SELECT First_Character, (Count_in_Album_with_Repetitions + Count_Not_in_Album) as Count FROM (SELECT * FROM Not_In_albums NATURAL JOIN In_albums) ORDER BY First_Character;

/* The output of the above query is present in Assignment_2_AI20BTECH11029.txt file*/
