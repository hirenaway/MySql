/*----------- TO CREATE TABLES WE FIRST HAVE TO CREATE A DATABASE ---------------*/
CREATE DATABASE employee;

/*----------- NOW THAT THE DATABASE HAS BEEN CREATED WE CAN NOW USE IT USING 'USE' COMMAND -----------*/
USE employee;

/* Table 1 */

CREATE TABLE hobby (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  name VARCHAR(50) NOT NULL
);

/* Table 2*/
CREATE TABLE employee (
  id INT NOT null AUTO_INCREMENT PRIMARY KEY, 
  first_name VARCHAR(50) NOT NULL, 
  last_name VARCHAR(50) NOT NULL, 
  age INT NOT NULL, 
  mobile_number VARCHAR(18) NOT NULL, 
  address VARCHAR(100) NOT NULL
);

/* Table 3 has one foreign key referring to table 2 employee column id which is a primary key*/
CREATE TABLE employee_salary (
  id INT NOT null AUTO_INCREMENT PRIMARY KEY, 
  salary int, 
  fk_employee_id INT NOT NULL, 
  joining_date DATE NOT null, 
  FOREIGN KEY (fk_employee_id) REFERENCES employee(id)
);

/* Table 4(Has two foreign keys referring to table 2 employee and table 1 hobby column id which is a primary key)*/
CREATE TABLE employee_hobby (
  id INT NOT null AUTO_INCREMENT PRIMARY KEY, 
  fk_employee_id INT NOT NULL, 
  fk_hobby_id INT NOT NULL, 
  FOREIGN KEY (fk_employee_id) REFERENCES employee(id), 
  FOREIGN KEY (fk_hobby_id) REFERENCES hobby(id)
);
