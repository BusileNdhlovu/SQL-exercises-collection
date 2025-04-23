--question 1
 --Inner Join: Orders with Customer and Product Names
 --List all orders along with the customer name and product name.

SELECT 
    o.OrderID, 
    o.OrderDate, 
    c.CustomerName, 
    p.ProductName, 
    o.Quantity
FROM ORDERS o
INNER JOIN CUSTOMER c ON o.CustomerID = c.CustomerID
INNER JOIN PRODUCTS p ON o.ProductID = p.productId; 

 --question 2
 --Inner Join: Orders with Customer and Product Names
 --Which customers have placed at least one order?


SELECT 
    c.CustomerID, 
    c.CustomerName, 
    c.Country, 
    o.OrderID, 
    o.OrderDate
FROM CUSTOMER c
INNER JOIN ORDERS o ON c.CustomerID = o.CustomerID;

 --question 3
 --LEFT JOIN: All Customers and Their Orders
 --List all customers and any orders they might have placed. Include customers who have not placed any orders.


SELECT 
    c.CustomerID, 
    c.CustomerName, 
    c.Country, 
    o.OrderID, 
    o.OrderDate, 
    o.ProductID, 
    o.Quantity
FROM CUSTOMER c
LEFT JOIN ORDERS o ON c.CustomerID = o.CustomerID;

 --question 4
 --LEFT JOIN: Product Order Count
 --List all products and how many times each was ordered (if any).

SELECT 
    p.ProductID, 
    p.ProductName, 
    COUNT(o.ProductID) AS TotalOrders
FROM PRODUCTS p
LEFT JOIN ORDERS o ON p.ProductID = o.ProductID
GROUP BY p.ProductID, p.ProductName;

 --question 5
 -- RIGHT JOIN: Orders with Product Info (Include Products Not Ordered)
 --Find all orders along with product details, including any products that might not have been ordered.


SELECT 
    o.OrderID, 
    o.OrderDate, 
    p.ProductID, 
    p.ProductName, 
    p.Price, 
    o.Quantity
FROM ORDERS o
RIGHT JOIN PRODUCTS p ON o.ProductID = p.ProductID;

 --question 6
 --RIGHT JOIN: Customer Info with Orders (Include All Customers)
 --Which customers have made orders, and include customers even if they have never 
 
placed an order.

SELECT 
    c.CustomerID, 
    c.CustomerName, 
    c.Country, 
    o.OrderID, 
    o.OrderDate, 
    o.ProductID, 
    o.Quantity
FROM ORDERS o
RIGHT JOIN CUSTOMER c ON o.CustomerID = c.CustomerID;

 --question 7
 --FULL OUTER JOIN: All Customers and All Orders
 --showing NULLs where customers have not ordered or orders are missing product info.\
 
where orders have no customer info.
SELECT 
    c.CustomerID, 
    c.CustomerName, 
    c.Country, 
    o.OrderID, 
    o.OrderDate, 
    o.ProductID, 
    o.Quantity
FROM CUSTOMER c
FULL OUTER JOIN ORDERS o ON c.CustomerID = o.CustomerID;

 --question 8
 --FULL OUTER JOIN: All Products and Orders
 --showing NULLs where products were never ordered or orders are missing product info.
orders are missing product info

SELECT 
    p.ProductID, 
    p.ProductName, 
    p.Price, 
    o.OrderID, 
    o.OrderDate, 
    o.CustomerID, 
    o.Quantity
FROM PRODUCTS p
FULL OUTER JOIN ORDERS o ON p.ProductID = o.ProductID;