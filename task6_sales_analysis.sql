Create Database ecommerce;
USE ecommerce;
Show tables;
Create Table Online_sales (
  order_id BIGINT,
  order_date  DATE,
  product_id  BIGINT,
  amount      DECIMAL(10,2)
);
INSERT INTO online_sales (order_id, order_date, product_id, amount)
VALUES
(1, '2023-01-15', 101, 250.00),
(2, '2023-01-20', 102, 300.00),
(3, '2023-02-05', 103, 150.00),
(4, '2023-02-18', 101, 500.00),
(5, '2023-03-02', 104, 200.00),
(6, '2023-03-10', 105, 450.00),
(7, '2023-03-22', 103, 350.00),
(8, '2023-04-12', 106, 400.00),
(9, '2023-04-20', 101, 600.00),
(10, '2023-04-25', 107, 750.00);
Select * From online_sales;
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY year, month
ORDER BY total_revenue DESC
LIMIT 3;
SELECT 
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
WHERE YEAR(order_date) = 2023
GROUP BY month
ORDER BY month;
