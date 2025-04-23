  --question 1
SELECT * FROM RETAIL;

--question2
SELECT Transaction_ID,
       date,
       Customer_ID
FROM RETAIL;

--question 3
SELECT DISTINCT Product_Category
FROM RETAIL;

--question 4
SELECT DISTINCT gender
FROM RETAIL;

--question 5
SELECT * FROM RETAIL
WHERE age > 40;

--question 6
SELECT *FROM RETAIL
WHERE price_per_unit BETWEEN 100 AND 500;

--question 7
SELECT * FROM RETAIL
WHERE Product_category = 'Beauty' OR Product_category='Electronics';

--question 8
SELECT * FROM RETAIL
WHERE Product_category != 'Clothing';

--question 9
SELECT *FROM RETAIL
WHERE quantity >= 3;

--question 10
SELECT COUNT(total_amount) AS total_transactions
FROM RETAIL;

--question 11
SELECT AVG(age) AS average_age
FROM RETAIL;

--question 12
SELECT SUM(quantity) AS total_quantity
FROM RETAIL;

--question 13
SELECT MAX(total_amount) AS max_total_amount
FROM RETAIL;

--question 14
SELECT MIN(price_per_unit) AS min_price_per_unit
FROM RETAIL;

--question 15
SELECT Product_category,
       COUNT(*) AS trannsaction_count
FROM RETAIL
GROUP BY Product_category;

--question 16
SELECT gender,
       SUM(total_amount) AS total_amount
FROM RETAIL
GROUP BY gender;

--question 17
SELECT AVG(price_per_unit) AS avg_price_per_unit,
           Product_category
FROM RETAIL
GROUP BY Product_category;

--question 18
SELECT Product_category,
       SUM(price_per_unit * quantity) AS total_revenue
FROM RETAIL
GROUP BY Product_category
HAVING SUM(price_per_unit * quantity) > 10000;

--question 19

SELECT Product_category,
       AVG(quantity) AS avg_quantity
FROM RETAIL
GROUP BY Product_category
HAVING AVG(quantity) > 2;

--question 20
SELECT transaction_id,
       (price_per_unit * quantity) AS total_amount,
       CASE
       WHEN (price_per_unit * quantity) > 1000 THEN 'High'
       ELSE 'low' 
       END AS spending_level
FROM RETAIL;

--question 21
SELECT customer_id,
       age,
       CASE
           WHEN age < 30 THEN 'Youth'
           WHEN age BETWEEN 30 AND 59 THEN 'Adult'
           ELSE 'Senior'
        END AS age_group
FROM RETAIL;    