SELECT * FROM "BUSI"."PUBLIC"."EMM"
LIMIT 10;

---question one:Retrieve all employees and their assigned projects using an INNER JOIN
SELECT employeeId,
       firstName,
       lastName,
       departmen,
       salary,
       projectId,
       project_name,
       budget,
       Status
FROM  "BUSI"."PUBLIC"."EMM" AS A
INNER JOIN "BUSI"."PUBLIC"."EM" AS B
ON A.EMPLOYEEID = B.EMPOYEEID;
       
---question two:Retrieve all employees and their assigned projects, including employees who have no projects using a LEFT JOIN

SELECT employeeId,
       firstName,
       lastName,
       departmen,
       salary,
       projectId,
       project_name,
       budget,
       Status
FROM  "BUSI"."PUBLIC"."EMM" AS A
LEFT JOIN "BUSI"."PUBLIC"."EM" AS B
ON A.EMPLOYEEID = B.EMPOYEEID;

---question three: Retrieve all projects and their assigned employees, including projects that have no employees using a RIGHT JOIN

SELECT employeeId,
       firstName,
       lastName,
       departmen,
       salary,
       projectId,
       project_name,
       budget,
       Status
FROM  "BUSI"."PUBLIC"."EMM" AS A
RIGHT JOIN "BUSI"."PUBLIC"."EM" AS B
ON A.EMPLOYEEID = B.EMPOYEEID;

---question 4:Retrieve all employees and projects, including those without a match in either table using a FULL OUTER JOIN.

SELECT employeeId,
       firstName,
       lastName,
       departmen,
       salary,
       projectId,
       project_name,
       budget,
       Status
FROM  "BUSI"."PUBLIC"."EMM" AS A
FULL OUTER JOIN "BUSI"."PUBLIC"."EM" AS B
ON A.EMPLOYEEID = B.EMPOYEEID;

---Filtering Statements
---Question 7: Retrieve employees who earn more than 70,000

SELECT employeeId,
       firstname,
       lastname,
       departmen,
       salary
FROM  "BUSI"."PUBLIC"."EMM"
WHERE salary > 70000;

---question 8: Retrieve employees working in either IT or Finance departments

SELECT employeeId,
       firstname,
       lastname,
       departmen,
       salary
FROM  "BUSI"."PUBLIC"."EMM"
WHERE departmen IN ('IT','Finance');

---question 9: Retrieve projects that are not yet completed

SELECT projectid,
       project_name,
       budget,
       status
FROM  "BUSI"."PUBLIC"."EM"
WHERE status <>'Completed';

---question 10: Retrieve projects that have a budget greater than 70,000 and are not completed.

SELECT projectid,
       project_name,
       budget,
       status
FROM  "BUSI"."PUBLIC"."EM"
WHERE budget > 70000 AND status <> 'Completed';

---question 11: Retrieve employees from New York OR Toronto, ordered by salary in descending order 

SELECT employeeId,
       firstname,
       lastname,
       departmen,
       salary,
       city
FROM  "BUSI"."PUBLIC"."EMM"
WHERE city IN ('New York','Toronto')
ORDER BY salary DESC;

---question 12: Retrieve the top 3 highest-paid employees.

SELECT employeeId,
       firstname,
       lastname,
       departmen,
       salary,
FROM  "BUSI"."PUBLIC"."EMM"
ORDER BY salary DESC
LIMIT 3;

---Aggregate Functions with GROUP BY & HAVING
---question 13:Find the total salary per department, sorted in descending order

SELECT departmen,
       SUM(salary) AS total_salary
FROM  "BUSI"."PUBLIC"."EMM"
ORDER BY departmen DESC;

---question 14: Find the average salary per city, but only include cities where the average salary is greater than 65,000.

SELECT salary,
       AVG(salary) AS average_salary
FROM  "BUSI"."PUBLIC"."EMM"
GROUP BY city
HAVING average_salary > 65000;

---question 15: Count the number of employees per department, including only departments with more than 1 employee

SELECT departmen,
       COUNT(employeeid) AS employee_count
FROM  "BUSI"."PUBLIC"."EMM"
GROUP BY departmen
HAVING employee_count > 1;

---question 16: Retrieve the number of projects per status, but only include statuses with atleast 2 projects 

SELECT status,
       COUNT(projectid) AS project_count
FROM  "BUSI"."PUBLIC"."EM"
GROUP BY status
HAVING project_count >= 2;

---question 17: Retrieve the total project budget per employee, but only for employees who are 
--managing projects worth more than 150,000

SELECT empoyeeid,
       firstname,
       lastname,
       SUM(buget) AS totalProject_count
FROM  "BUSI"."PUBLIC"."EM"
GROUP BY firstname,
         lastname,
         employeeid
HAVING  SUM(Budget) > 150000; 


SELECT 
    e.EmployeeID, 
    e.FirstName, 
    e.LastName, 
    SUM(p.Budget) AS TotalProjectBudget
FROM 
    "BUSI"."PUBLIC"."EMM" e
JOIN 
    "BUSI"."PUBLIC"."EM"  p
ON 
    e.EmployeeID = p.EmployeeID
GROUP BY 
    e.EmployeeID, e.FirstName, e.LastName
HAVING 
    SUM(p.Budget) > 150000;

