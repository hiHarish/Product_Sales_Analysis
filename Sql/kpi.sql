-- 1. Total Revenue
SELECT SUM(sales_amount) AS total_revenue FROM sales;

-- 2. Revenue by City
SELECT city, SUM(sales_amount) AS revenue
FROM sales
GROUP BY city
ORDER BY revenue DESC;

-- 3. Revenue by Product
SELECT product_name, SUM(sales_amount) AS revenue
FROM sales
GROUP BY product_name
ORDER BY revenue DESC;

-- 4. Monthly Sales Trend
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
       SUM(sales_amount) AS revenue
FROM sales
GROUP BY month
ORDER BY month;

-- 5. Top 5 Products
SELECT product_name, SUM(sales_amount) AS revenue
FROM sales
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 5;
