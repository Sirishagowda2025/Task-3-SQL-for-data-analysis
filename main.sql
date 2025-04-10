-- CREATE TABLE
CREATE TABLE amazon_sales (
  order_id INT,
  order_date DATE,
  product_name VARCHAR(100),
  category VARCHAR(50),
  country VARCHAR(50),
  price FLOAT,
  quantity INT,
  sales FLOAT
);

-- INSERT DATA
INSERT INTO amazon_sales VALUES
(101, '2024-03-01', 'Echo Dot', 'Electronics', 'USA', 49.99, 2, 99.98),
(102, '2024-03-02', 'Kindle Paperwhite', 'Electronics', 'UK', 119.99, 1, 119.99),
(103, '2024-03-03', 'Wireless Mouse', 'Accessories', 'India', 25.50, 2, 51.00),
(104, '2024-03-04', 'Bluetooth Speaker', 'Electronics', 'Germany', 34.99, 1, 34.99),
(105, '2024-03-05', 'Notebook', 'Stationery', 'USA', 6.99, 5, 34.95),
(106, '2024-03-06', 'USB-C Cable', 'Accessories', 'India', 9.99, 3, 29.97),
(107, '2024-03-07', 'Portable Charger', 'Electronics', 'USA', 29.99, 2, 59.98),
(108, '2024-03-08', 'Pen Set', 'Stationery', 'UK', 12.99, 4, 51.96),
(109, '2024-03-09', 'Phone Stand', 'Accessories', 'Germany', 15.50, 1, 15.50),
(110, '2024-03-10', 'LED Desk Lamp', 'Electronics', 'India', 39.99, 2, 79.98);

SELECT country, SUM(sales) AS total_sales
FROM amazon_sales
GROUP BY country
ORDER BY total_sales DESC;

SELECT product_name, SUM(sales) AS total_revenue
FROM amazon_sales
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 3;

SELECT country, AVG(sales) AS avg_order_value
FROM amazon_sales
GROUP BY country;








