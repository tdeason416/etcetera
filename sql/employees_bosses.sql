-- PSQL

/*
Given the following tables -

Employees:
employee_id |  name   | boss_id | salary | department_id
-------------+---------+---------+--------+---------------
          1 | Alice   |       7 |  30000 |             1
          6 | Frank   |       7 |  55000 |             1
         11 | Kelly   |      10 |  70000 |             3
         16 | Patrick |      18 |  90000 |             3
         21 | Ula     |         | 100000 |             5

Department:
         id |       name
        ----+------------------
          1 | floral
          2 | produce
          3 | accounting
          4 | customer service
          5 | corporate


QUESTION 1:
Find names and difference in salaries
for employees who make more than their bosses.
(Note: boss_id is the employee_id of the employees boss)

ANSWER:
  name   | boss_name | salary_difference
----------+-----------+-------------------
Emily    | Gertrude  |              5000
Frank    | Gertrude  |              5000
Irene    | Frank     |              5000
Kelly    | Joe       |             10000
Patrick  | Ryan      |             10000
Quinn    | Ryan      |             10000
Sally    | Tom       |                10
Yollanda | Larry     |              5000


QUESTION 2:
List employees whose boss is in a different department
as well as their department, boss and the bosses dept.

  name   | department | boss_name | boss_dept
----------+------------+-----------+------------
Harry    | accounting | Frank     | floral
Irene    | accounting | Frank     | floral
Alice    | floral     | Gertrude  | accounting
Claire   | floral     | Gertrude  | accounting
Bob      | floral     | Gertrude  | accounting
Emily    | floral     | Gertrude  | accounting
Frank    | floral     | Gertrude  | accounting
Doug     | floral     | Gertrude  | accounting
Gertrude | accounting | Joe       | corporate
Kelly    | accounting | Joe       | corporate
Larry    | produce    | Ryan      | accounting
Ryan     | accounting | Tom       | corporate
*/


DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees
    (employee_id int, name varchar(32), boss_id int, salary int, department_id int)
;

INSERT INTO Employees
    (employee_id, name, boss_id, salary, department_id)
VALUES
    (1, 'Alice', 7, 30000, 1),
    (2, 'Bob', 7, 30000, 1),
    (3, 'Claire', 7, 30000, 1),
    (4, 'Doug', 7, 30000, 1),
    (5, 'Emily', 7, 55000, 1),
    (6, 'Frank', 7, 55000, 1),
    (7, 'Gertrude', 10, 50000, 3),
    (8, 'Harry', 6, 50000, 3),
    (9, 'Irene', 6, 60000, 3),
    (10, 'Joe', 20, 60000, 5),
    (11, 'Kelly', 10, 70000, 3),
    (12, 'Larry', 18, 70000, 2),
    (13, 'Molly', 18, 70000, 3),
    (14, 'Ned', 18, 70000, 3),
    (15, 'Olivia', 18, 70000, 3),
    (16, 'Patrick', 18, 90000, 3),
    (17, 'Quinn', 18, 90000, 3),
    (18, 'Ryan', 20, 80000, 3),
    (19, 'Sally', 20, 100010, 5),
    (20, 'Tom', NULL, 100000, 5),
    (21, 'Ula', NULL, 100000, 5),
    (22, 'Victor', 12, 60000, 2),
    (23, 'Wendy', 12, 60000, 2),
    (24, 'Xavier', 12, 65000, 2),
    (25, 'Yollanda', 12, 75000, 2)
;


DROP TABLE IF EXISTS Department;
CREATE TABLE Department
    (id int, name varchar(32))
;

INSERT INTO Department
    (id, name)
VALUES
    (1, 'floral'),
    (2,	'produce'),
    (3, 'accounting'),
    (4, 'customer service'),
    (5, 'corporate')
;
