--- question one: Retrieve all columns from the employees table
SELECT*FROM "BUSI"."PUBLIC"."X1";

---question two: find unique departments in the employees table

SELECT DISTINCT department
FROM "BUSI"."PUBLIC"."X1";

---question three: retrieve all employees first and last name ordered by salary in descending order

SELECT first_name,
       last_name,
       salary
FROM  "BUSI"."PUBLIC"."X1"
ORDER BY salary DESC;      

---question four: retrieve the top 5 highest paid employees

SELECT id,
       first_name,
       last_name,
       department,
       salary,
       city
FROM   "BUSI"."PUBLIC"."X1"
ORDER BY salary DESC
LIMIT 5;

---question five: find employees who work in the IT department

SELECT id,
       first_name,
       last_name,
       department,
       city
 FROM   "BUSI"."PUBLIC"."X1"
 WHERE department = 'IT';

---question six: find employees who work for the Finance department AND have a salary graeater than 58 000

SELECT id,
       first_name,
       last_name,
       department,
       salary,
       city
 FROM   "BUSI"."PUBLIC"."X1"
 WHERE department = 'Finance' AND salary;

---question seven: find employees who work in the HR department OR the Marketing department

SELECT id,
       first_name,
       last_name,
       department,
       salary,
       city
 FROM   "BUSI"."PUBLIC"."X1"
 WHERE department IN ('HR', 'Marketing');

---question eight: find employees who do not work in the IT department

SELECT id,
       first_name,
       last_name,
       department,
       salary,
       city
 FROM   "BUSI"."PUBLIC"."X1"
 WHERE department != 'IT';

---question nine: find employees who work in the IT, HR or Finance department

SELECT id,
       first_name,
       last_name,
       department,
       salary,
       city
 FROM   "BUSI"."PUBLIC"."X1"
 WHERE department IN ('HR','IT','Finance');

 --question ten: find employees who are in the IT department, have a salary greater than 50 000 and located in New York

 SELECT id,
       first_name,
       last_name,
       department,
       salary,
       city
 FROM   "BUSI"."PUBLIC"."X1"
 WHERE department ='IT' AND salary >50000 AND city ='New York';

 ---question 11: retrieve the firts and last name of the employees who work in finance or marketing, earn more than 52 000 and order results by salary descending order

 SELECT id,
       first_name,
       last_name,
       department,
       salary,
 FROM  "BUSI"."PUBLIC"."X1"
 WHERE department IN ('Finance','Marketing') 
 AND salary >52000
 ORDER BY salary DESC;

 --question 12: find all the unique cities where employees work, excludng those in the IT and HR departments

 SELECT DISTINCT city
 FROM "BUSI"."PUBLIC"."X1"
 WHERE department NOT IN ('IT','HR');

 ---question 13: retrieve employees who are not in the Finance department, have a salry  of greater than 50 000 and order the results by hire date in ascending order

 SELECT id,
       first_name,
       last_name,
       department,
       salary,
       hire_date
 FROM  "BUSI"."PUBLIC"."X1"
 WHERE department NOT IN ('Finance') 
 AND salary >50000
 ORDER BY hire_date ASC;
 
 ---question 14: find the first three employees who work either in Chicago or Los Angeles and belong to the IT or Marketing department

SELECT * FROM  "BUSI"."PUBLIC"."X1"
WHERE city IN ('Chicago','Los Angeles')
AND department IN ('IT','Marketing') 
LIMIT 3;

 