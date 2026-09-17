CREATE TABLE sales_profit (
    OrderID INT,
    OrderDate DATE,
    CustomerID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(100),
    Category VARCHAR(100),
    Quantity INT,
    UnitPrice NUMERIC(10,2),
    Discount NUMERIC(10,2),
    Sales NUMERIC(12,2),
    Cost NUMERIC(12,2),
    Profit NUMERIC(12,2),
    Region VARCHAR(50),
    State VARCHAR(100),
    City VARCHAR(100)
);

SELECT * FROM sales_profit;

SELECT COUNT(*) FROM sales_profit;

SELECT * FROM sales_profit LIMIT 10;


-- Q1. How many total sales transactions are present in the dataset?

SELECT COUNT(*) AS total_transactions
FROM sales_profit;


-- Q2. What is the total sales revenue generated?

SELECT SUM(Sales) AS total_sales
FROM sales_profit;


-- Q3. What is the total cost of all sales transactions?

SELECT SUM(Cost) AS total_cost
FROM sales_profit;


-- Q4. What is the total profit generated?

SELECT SUM(Profit) AS total_profit
FROM sales_profit;


-- Q5. What is the average profit generated per transaction?

SELECT AVG(Profit) AS average_profit
FROM sales_profit;


-- Q6. Which product generated the highest total sales?

SELECT Product, SUM(Sales) AS total_sales
FROM sales_profit
GROUP BY Product
ORDER BY total_sales DESC
LIMIT 1;


-- Q7. Which product generated the highest total profit?

SELECT Product, SUM(Profit) AS total_profit
FROM sales_profit
GROUP BY Product
ORDER BY total_profit DESC
LIMIT 1;


-- Q8. What are the total sales and total profit for each product category?

SELECT
    Category,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM sales_profit
GROUP BY Category
ORDER BY total_sales DESC;


-- Q9. What are the total sales and total profit for each region?

SELECT
    Region,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM sales_profit
GROUP BY Region
ORDER BY total_sales DESC;


-- Q10. Which state generated the highest total sales?

SELECT
    State,
    SUM(Sales) AS total_sales
FROM sales_profit
GROUP BY State
ORDER BY total_sales DESC
LIMIT 1;


-- Q11. Which city generated the highest total sales?

SELECT
    City,
    SUM(Sales) AS total_sales
FROM sales_profit
GROUP BY City
ORDER BY total_sales DESC
LIMIT 1;


-- Q12. How did total sales change month by month?

SELECT
    DATE_TRUNC('month', OrderDate) AS month,
    SUM(Sales) AS total_sales
FROM sales_profit
GROUP BY DATE_TRUNC('month', OrderDate)
ORDER BY month;


-- Q13. What are the total sales and total profit for each year?

SELECT
    EXTRACT(YEAR FROM OrderDate) AS year,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM sales_profit
GROUP BY EXTRACT(YEAR FROM OrderDate)
ORDER BY year;


-- Q14. Who are the top 10 customers based on total sales?

SELECT
    CustomerID,
    CustomerName,
    SUM(Sales) AS total_sales
FROM sales_profit
GROUP BY CustomerID, CustomerName
ORDER BY total_sales DESC
LIMIT 10;


-- Q15. Who are the top 10 customers based on total profit generated?

SELECT
    CustomerID,
    CustomerName,
    SUM(Profit) AS total_profit
FROM sales_profit
GROUP BY CustomerID, CustomerName
ORDER BY total_profit DESC
LIMIT 10;


-- Q16. What is the average discount for each product category?

SELECT
    Category,
    AVG(Discount) AS average_discount
FROM sales_profit
GROUP BY Category
ORDER BY average_discount DESC;


-- Q17. How does the discount level relate to average and total profit?

SELECT
    Discount,
    COUNT(*) AS total_transactions,
    AVG(Profit) AS average_profit,
    SUM(Profit) AS total_profit
FROM sales_profit
GROUP BY Discount
ORDER BY Discount;


-- Q18. Which product category has the highest quantity sold?

SELECT
    Category,
    SUM(Quantity) AS total_quantity
FROM sales_profit
GROUP BY Category
ORDER BY total_quantity DESC
LIMIT 1;


-- Q19. Which products have total sales greater than the average sales
-- across all products?

SELECT
    Product,
    SUM(Sales) AS total_sales
FROM sales_profit
GROUP BY Product
HAVING SUM(Sales) > (
    SELECT AVG(product_sales)
    FROM (
        SELECT
            Product,
            SUM(Sales) AS product_sales
        FROM sales_profit
        GROUP BY Product
    ) AS product_summary
)
ORDER BY total_sales DESC;


-- Q20. What is the profit margin percentage for each product category?

SELECT
    Category,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    ROUND(
        (SUM(Profit) / NULLIF(SUM(Sales), 0)) * 100,
        2
    ) AS profit_margin_percentage
FROM sales_profit
GROUP BY Category
ORDER BY profit_margin_percentage DESC;