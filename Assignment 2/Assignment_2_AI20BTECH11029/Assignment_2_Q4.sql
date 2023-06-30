/* The below statement(can be modified accordingly) opens the database file*/
.open "C:/Users/nelak/Downloads/Assignment_2_AI20BTECH11029.db"

/* I have implemented the DDL statements given in question 4 and created the X table and included it in Assignment_2_AI20BTECH11029.db along with the tables artists,albums,etc. given in assignment2.db file*/
/* I have included the above mentioned database file in my submission zip folder*/
SELECT X1.id_num || ',' || X2.id_num || ',' || X3.id_num AS num_com, X1.id_str || ',' || X2.id_str ||  ',' || X3.id_str AS str_com
FROM X X1 JOIN X X2 JOIN X X3 WHERE X1.id_num < X2.id_num AND X2.id_num < X3.id_num;

/* The output of above query is present in Assignment_2_AI20BTECH11029.txt file*/
