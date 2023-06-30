/* The below statement(can be modified accordingly) opens the database file*/
.open "C:/Users/nelak/Downloads/Assignment_2_AI20BTECH11029.db"

/* I have implemented the DDL statements given in question 2 and created the instructor,student tables and included them in Assignment_2_AI20BTECH11029.db along with the tables artists,albums,etc. given in assignment2.db file*/
/* I have included the above mentioned database file in my submission zip folder*/
SELECT i.name,i.course_id,s.name,s.course_id FROM instructor i LEFT OUTER JOIN student s ON i.course_id = s.course_id UNION ALL 
SELECT i.name,i.course_id,s.name,s.course_id FROM student s LEFT OUTER JOIN instructor i ON i.course_id = s.course_id
WHERE i.course_id IS NULL;

/* The output of the above query is present in Assignment_2_AI20BTECH11029.txt file*/
