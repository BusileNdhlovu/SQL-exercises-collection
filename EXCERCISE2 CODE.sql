--- question one: find total number of employees in the company
SELECT COUNT(*)
FROM "BUSI"."PUBLIC"."X1";

---question 2: find the total salary paid to all employees in the IT deprtment 

SELECT SUM(salary) AS Total_salary
FROM "BUSI"."PUBLIC"."X1"
WHERE department = 'IT';

---question 3: calculate the avaegae salary of employees in the HR department

SELECT AVG(salary) AS Average_salary
FROM "BUSI"."PUBLIC"."X1"
WHERE department ='HR';

---question 4: find the highest and lowest salary in the company
SELECT MIN(salary)
FROM "BUSI"."PUBLIC"."X1";

SELECT MAX(salary)
FROM "BUSI"."PUBLIC"."X1";

---question 5: group employees by department and display the total salary paid in eacg department
SELECT department,
       SUM(salary) AS total_salary
FROM "BUSI"."PUBLIC"."X1"
GROUP BY department;

---question 6: count how many employees work in each city
SELECT COUNT(ID),
       city
FROM "BUSI"."PUBLIC"."X1" 
GROUP BY city;

---question 7: group employees by department, calculate the average salary in each department and order the results in descending order of average salary

SELECT AVG(salary) AS Average_salary,
       department
FROM "BUSI"."PUBLIC"."X1"
GROUP BY department
ORDER BY Average_salary DESC;

---question 8: find departments where the total salary paid exceeds 100 000  
SELECT SUM(salary) AS total_salary,
       department
FROM "BUSI"."PUBLIC"."X1" 
GROUP BY department
HAVING total_salary> 100000;

--question 9: list cities where more than one employee works, order by the number of employees in descending order
SELECT city, 
       COUNT(id) AS employee_count
FROM "BUSI"."PUBLIC"."X1" 
GROUP BY city
HAVING COUNT(id) > 1
ORDER BY employee_count DESC;

---question 10: find the deparment with the highest avaerage salary

SELECT AVG(salary) AS average_salary,
       department 
FROM "BUSI"."PUBLIC"."X1" 
GROUP BY department
ORDER BY average_salary DESC
LIMIT 1;
       
