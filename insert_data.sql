/* Table 1 */

INSERT INTO
  hobby (name)
VALUES
  ('football'),
  ('Boxing'),
  ('Vollyball'),
  ('Cricket'),
  ('biking'),
  ('Photography'),
  ('Writing'),
  ('Hiking');

/* Table 2 */
/* Adding multiple data with a signle query */ 

INSERT INTO
  employee (first_name, last_name, age, mobile_number, address)
VALUES
  ('Kevin', 'Brown', '22', '9987654321', 'Mexico'),
  ('Peter', 'Jackson', '25', '9999999999', 'Germany'),
  ('John', 'Willamson', '21', '8888888888', 'Canada'),
  ('Eric', 'Jones', '27', '7777777777', 'USA'),
  ('Kevin', 'Brown', '22', '6767676767', 'Mexico'),
  ('Will', 'Smith', '34', '9980809009', 'UK');

/* Table 3 */

INSERT INTO
  employee_salary (salary, joining_date, fk_employee_id)
VALUES
  (
    '100',
    '2020-04-27',(
      SELECT
        id
      FROM
        employee
      WHERE
        id = '1'
    )
  ),
  (
    '400',
    '2020-05-04',(
      SELECT
        id
      FROM
        employee
      WHERE
        id = '2'
    )
  ),
  (
    '300',
    '2021-01-17',(
      SELECT
        id
      FROM
        employee
      WHERE
        id = '3'
    )
  ),
  (
    '500',
    '2019-05-08',(
      SELECT
        id
      FROM
        employee
      WHERE
        id = '4'
    )
  ),
  (
    '100',
    '2020-05-27',(
      SELECT
        id
      FROM
        employee
      WHERE
        id = '1'
    )
  ),
  (
    '400',
    '2020-06-04',(
      SELECT
        id
      FROM
        employee
      WHERE
        id = '2'
    )
  ),
  (
    '300',
    '2021-02-17',(
      SELECT
        id
      FROM
        employee
      WHERE
        id = '3'
    )
  ),
  (
    '500',
    '2019-06-08',(
      SELECT
        id
      FROM
        employee
      WHERE
        id = '4'
    )
  ),
  (
    '100',
    '2020-06-27',(
      SELECT
        id
      FROM
        employee
      WHERE
        id = '1'
    )
  ),
  (
    '200',
    '2020-07-04',(
      SELECT
        id
      FROM
        employee
      WHERE
        id = '2'
    )
  ),
  (
    '300',
    '2021-03-17',(
      SELECT
        id
      FROM
        employee
      WHERE
        id = '3'
    )
  ),
  (
    '500',
    '2019-07-08',(
      SELECT
        id
      FROM
        employee
      WHERE
        id = '4'
    )
  ),
  (
    '0',
    '2021-11-17',(
      SELECT
        id
      FROM
        employee
      WHERE
        id = '5'
    )
  );


/* Table 4 */

INSERT INTO
  employee_hobby (fk_employee_id, fk_hobby_id)
VALUES
  (
    (
      SELECT
        id
      FROM
        employee
      WHERE
        id = '1'
    ),(
      SELECT
        id
      FROM
        hobby
      WHERE
        id = '1'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        employee
      WHERE
        id = '2'
    ),(
      SELECT
        id
      FROM
        hobby
      WHERE
        id = '2'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        employee
      WHERE
        id = '3'
    ),(
      SELECT
        id
      FROM
        hobby
      WHERE
        id = '3'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        employee
      WHERE
        id = '4'
    ),(
      SELECT
        id
      FROM
        hobby
      WHERE
        id = '4'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        employee
      WHERE
        id = '5'
    ),(
      SELECT
        id
      FROM
        hobby
      WHERE
        id = '5'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        employee
      WHERE
        id = '6'
    ),(
      SELECT
        id
      FROM
        hobby
      WHERE
        id = '6'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        employee
      WHERE
        id = '7'
    ),(
      SELECT
        id
      FROM
        hobby
      WHERE
        id = '7'
    )
  );

 /*--------- Adding more hobbies to the same ids ----------*/

INSERT INTO employee_hobby (fk_employee_id, fk_hobby_id) 
VALUES 
  (
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '1'
    ), 
    (
      SELECT 
        id 
      FROM 
        hobby 
      WHERE 
        id = '8'
    )
  ), 
  (
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '2'
    ), 
    (
      SELECT 
        id 
      FROM 
        hobby 
      WHERE 
        id = '7'
    )
  ), 
  (
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '3'
    ), 
    (
      SELECT 
        id 
      FROM 
        hobby 
      WHERE 
        id = '6'
    )
  ), 
  (
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '4'
    ), 
    (
      SELECT 
        id 
      FROM 
        hobby 
      WHERE 
        id = '5'
    )
  ), 
  (
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '5'
    ), 
    (
      SELECT 
        id 
      FROM 
        hobby 
      WHERE 
        id = '4'
    )
  ), 
  (
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '6'
    ), 
    (
      SELECT 
        id 
      FROM 
        hobby 
      WHERE 
        id = '3'
    )
  ), 
  (
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '7'
    ), 
    (
      SELECT 
        id 
      FROM 
        hobby 
      WHERE 
        id = '2'
    )
  );



/*------------------------------INSERTING NEW DATA---------------------------------*/


INSERT INTO employee(
  first_name, last_name, age, mobile_number, 
  address
) 
VALUES 
  (
    'Kevin', 'Brown', '22', '6767676767', 
    'Mexico'
  );
 
 
INSERT INTO employee_salary (
  salary, joining_date, fk_employee_id
) 
VALUES 
  (
    '0', 
    '2021-11-17', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '5'
    )
  );

 
/*-------Inserting new record without mentioning his salary -------------*/
 
 INSERT INTO employee_salary (joining_date, fk_employee_id) 
VALUES 
  (
    '2021-10-07', 
    (
      SELECT 
        id 
      FROM 
        employee 
      WHERE 
        id = '6'
    )
  );

 