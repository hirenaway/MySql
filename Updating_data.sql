/*--------------------------------- UPDATING ALREADY EXISTING DATA ---------------------------*/   

UPDATE 
  employee 
SET 
  first_name = 'Liam', 
  last_name = 'Miller', 
  age = '32', 
  mobile_number = '9898989898', 
  address = 'Indonesia' 
WHERE 
  id = '1';
 
UPDATE 
  employee 
SET 
  first_name = 'Noah', 
  last_name = 'Smith', 
  age = '42', 
  mobile_number = '1212121212', 
  address = 'UAE' 
WHERE 
  id = '2';
 
UPDATE 
  employee 
SET 
  first_name = 'Emma', 
  last_name = 'Davis', 
  age = '35', 
  mobile_number = '8787878787', 
  address = 'Australia' 
WHERE 
  id = '3';
 
UPDATE 
  employee 
SET 
  first_name = 'Ava', 
  last_name = 'Lee', 
  age = '31', 
  mobile_number = '4545454545', 
  address = 'Japan' 
WHERE 
  id = '4';
 
UPDATE 
  employee 
SET 
  first_name = 'Kevin', 
  last_name = 'Brown', 
  age = '33', 
  mobile_number = '6767676767', 
  address = 'UK' 
WHERE 
  id = '5';
 
UPDATE 
  employee 
SET 
  first_name = 'Will', 
  last_name = 'Smith', 
  age = '22', 
  mobile_number = '9980809009', 
  address = 'France' 
WHERE 
  id = '6';

/*------------------- UPDATING SAME FIRST NAME TO ANOTHER RECORD --------------------------*/ 

UPDATE 
  employee 
SET 
  first_name = 'Noah' 
WHERE 
  id = '4';




