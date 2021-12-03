-- Create a separate select query to get a hobby, employee, employee_salary, employee_hobby.

-- Table 1

SELECT * FROM hobby;

-- Table 2

SELECT * FROM employee;

-- Table 3

SELECT * FROM employee_salary;

-- Table 4

SELECT * FROM employee_hobby;


/*Create a select query to get only employee name, hobby_name*/

SELECT
  first_name
FROM
  employee
UNION
SELECT
  name
FROM
  hobby;
 

/*Create a select query to get  employee name, his/her employee_salary*/

SELECT 
	e.first_name,
	e.last_name,
	s.salary 
FROM employee e
INNER JOIN employee_salary s
ON e.id = s.fk_employee_id;


/*Adding a new employee and displaying his salary as zero without adding any data in employee_salary table.*/

SELECT
  CONCAT (e.first_name, " ", e.last_name) AS full_name,
  IF (SUM(es.salary) IS NULL, '0', SUM(es.salary)) AS total_salary
FROM
  employee e
  LEFT JOIN employee_salary es on e.id = es.fk_employee_id
GROUP BY
  e.id;

/*
Create a select query to get employee name, total salary of employee, hobby name(comma-separated - using subquery for hobby name).
*/

SELECT
  CONCAT(e.first_name, " ", e.last_name) AS full_name,
  CASE WHEN SUM(es.salary) IS NULL THEN '0' ELSE SUM(es.salary) END AS total_salary,
  (
    SELECT
      GROUP_CONCAT(h.name)
    FROM
      hobby h
      LEFT JOIN employee_hobby eh ON h.id = eh.fk_hobby_id
    WHERE
      e.id = eh.fk_employee_id
  ) AS hobbies
FROM
  employee e
  LEFT JOIN employee_salary es ON e.id = es.fk_employee_id
GROUP BY
  e.id;


