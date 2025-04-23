--question 1
-- classifies students based on their test_score

SELECT 
    student_name,
    test_score,
    
    CASE 
        WHEN test_score BETWEEN 90 AND 100 THEN 'Excellent'
        WHEN test_score BETWEEN 75 AND 89 THEN 'Good'
        WHEN test_score BETWEEN 50 AND 74THEN 'Average'
        ELSE 'Poor'
    END AS performance
FROM BUSI.PUBLIC.STUDENTS;

--question 2
--

SELECT 
    sales_id,
    sale_date,
    customer_id,
    product_id,
    quantity,
    total_amount,
    CASE
        WHEN total_amount < 200 THEN 'Low'
        WHEN total_amount BETWEEN 200 AND 800 THEN 'Medium'
        ELSE 'High'
    END AS sales_category
FROM sale;

--question 3
--

SELECT 
    employee_id,
    first_name,
    last_name,
    department,
    salary,
    hire_date,
    CASE
        WHEN salary < 40000 THEN 'Low'
        WHEN salary BETWEEN 40000 AND 70000 THEN 'Medium'
        ELSE 'High'
    END AS salary_bracket
FROM employees;

--question 4
--
SELECT 
    product_id,
    product_name,
    category,
    price,
    stock_quantity,
    CASE
        WHEN stock_quantity > 0 THEN 'In Stock'
        ELSE 'Out of Stock'
    END AS stock_status
FROM 

--question 5
--
SELECT 
    student_id,
    full_name,
    course,
    marks,
    enrollment_year,
    CASE
        WHEN marks >= 75 THEN 'A'
        WHEN marks BETWEEN 50 AND 74 THEN 'B'
        ELSE 'C'
    END AS grade
FROM students;

--question 6
--
SELECT 
    visit_id,
    user_id,
    visit_date,
    page_visited,
    session_duration,
    CASE
        WHEN session_duration < 100 THEN 'Short'
        WHEN session_duration BETWEEN 100 AND 300 THEN 'Medium'
        ELSE 'Long'
    END AS session_type
FROM website_traffic;