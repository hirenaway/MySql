/*------------ DELETING A SINGLE RECORD FROM A TABLE -----------------*/

DELETE FROM
  employee_hobby
WHERE
  id = '1';
 
 
  /*---------------- DELETING ENTIRE TABLE WITH DELETE STATEMENT WITH WHERE CLAUSE ---------------------*/
 
  DROP TABLE employee_hobby;
 
 
  /*---------------- DELETING DATABASE ALONG WITH TABLES AND DATA ALTOGETHER ---------------------------*/
 
  DROP DATABASE emp_data;
