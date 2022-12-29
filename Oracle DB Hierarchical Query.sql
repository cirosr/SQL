-- Oracle DB, mainly EBS, to perform similar operation as PATH() in DAX:

SELECT last_name, employee_id, manager_id, LEVEL
      FROM employees
      START WITH employee_id = 100
      CONNECT BY PRIOR employee_id = manager_id
      ORDER SIBLINGS BY last_name;

-- source: https://docs.oracle.com/database/121/SQLRF/queries003.htm#SQLRF52332
