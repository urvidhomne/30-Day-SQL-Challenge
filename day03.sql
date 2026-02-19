CREATE DATABASE day03;
USE day03;

CREATE TABLE products(
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
price DECIMAL(10,2));

CREATE TABLE sales(
sale_id INT PRIMARY KEY,
product_id INT,
quantity INT,
sale_date DATE,
region VARCHAR(50),
FOREIGN KEY (product_id) REFERENCES products(product_id));

INSERT INTO products (product_id, product_name, category, price) VALUES
(1, 'iPhone 14', 'Electronics', 899.99),
(2, 'Samsung Galaxy S23', 'Electronics', 799.99),
(3, 'MacBook Air', 'Electronics', 1299.99),
(4, 'Sony Headphones', 'Electronics', 349.99),
(5, 'Levi Jeans', 'Clothing', 59.99),
(6, 'Nike Running Shoes', 'Clothing', 89.99),
(7, 'Adidas Hoodie', 'Clothing', 65.00),
(8, 'Winter Jacket', 'Clothing', 120.00),
(9, 'Organic Almonds', 'Food', 12.99),
(10, 'Granola Bars Box', 'Food', 8.99),
(11, 'Olive Oil', 'Food', 15.99),
(12, 'Dark Chocolate', 'Food', 4.99),
(13, 'Harry Potter Collection', 'Books', 45.99),
(14, 'Atomic Habits', 'Books', 16.99),
(15, 'The Lean Startup', 'Books', 18.99),
(16, 'Programming in Python', 'Books', 42.99),
(17, 'LEGO Star Wars Set', 'Toys', 79.99),
(18, 'Barbie Dreamhouse', 'Toys', 149.99),
(19, 'Remote Control Car', 'Toys', 34.99),
(20, 'Board Game Collection', 'Toys', 29.99);

INSERT INTO sales (sale_id, product_id, quantity, sale_date, region) VALUES
(1, 1, 2, '2024-01-05', 'North'),
(2, 2, 1, '2024-01-06', 'South'),
(3, 3, 3, '2024-01-07', 'East'),
(4, 4, 5, '2024-01-08', 'West'),
(5, 5, 4, '2024-01-09', 'North'),
(6, 6, 2, '2024-01-10', 'South'),
(7, 7, 6, '2024-01-11', 'East'),
(8, 8, 1, '2024-01-12', 'West'),
(9, 9, 8, '2024-01-13', 'North'),
(10, 10, 10, '2024-01-14', 'South'),
(11, 11, 3, '2024-01-15', 'East'),
(12, 12, 15, '2024-01-16', 'West'),
(13, 13, 2, '2024-01-17', 'North'),
(14, 14, 7, '2024-01-18', 'South'),
(15, 15, 4, '2024-01-19', 'East'),
(16, 16, 3, '2024-01-20', 'West'),
(17, 17, 2, '2024-01-21', 'North'),
(18, 18, 1, '2024-01-22', 'South'),
(19, 19, 5, '2024-01-23', 'East'),
(20, 20, 8, '2024-01-24', 'West'),
(21, 1, 1, '2024-01-25', 'North'),
(22, 2, 3, '2024-01-26', 'South'),
(23, 3, 2, '2024-01-27', 'East'),
(24, 4, 4, '2024-01-28', 'West'),
(25, 5, 6, '2024-01-29', 'North'),
(26, 6, 3, '2024-01-30', 'South'),
(27, 7, 2, '2024-02-01', 'East'),
(28, 8, 5, '2024-02-02', 'West'),
(29, 9, 12, '2024-02-03', 'North'),
(30, 10, 9, '2024-02-04', 'South'),
(31, 11, 4, '2024-02-05', 'East'),
(32, 12, 20, '2024-02-06', 'West'),
(33, 13, 3, '2024-02-07', 'North'),
(34, 14, 5, '2024-02-08', 'South'),
(35, 15, 6, '2024-02-09', 'East'),
(36, 16, 2, '2024-02-10', 'West'),
(37, 17, 4, '2024-02-11', 'North'),
(38, 18, 2, '2024-02-12', 'South'),
(39, 19, 7, '2024-02-13', 'East'),
(40, 20, 6, '2024-02-14', 'West'),
(41, 1, 2, '2024-02-15', 'South'),
(42, 3, 1, '2024-02-16', 'North'),
(43, 5, 8, '2024-02-17', 'East'),
(44, 7, 5, '2024-02-18', 'West'),
(45, 9, 6, '2024-02-19', 'North'),
(46, 11, 2, '2024-02-20', 'South'),
(47, 13, 4, '2024-02-21', 'East'),
(48, 15, 3, '2024-02-22', 'West'),
(49, 17, 1, '2024-02-23', 'North'),
(50, 19, 9, '2024-02-24', 'South'),
(51, 2, 2, '2024-03-01', 'East'),
(52, 4, 3, '2024-03-02', 'West'),
(53, 6, 4, '2024-03-03', 'North'),
(54, 8, 2, '2024-03-04', 'South'),
(55, 10, 11, '2024-03-05', 'East'),
(56, 12, 18, '2024-03-06', 'West'),
(57, 14, 6, '2024-03-07', 'North'),
(58, 16, 1, '2024-03-08', 'South'),
(59, 18, 3, '2024-03-09', 'East'),
(60, 20, 7, '2024-03-10', 'West'),
(61, 1, 3, '2024-03-11', 'North'),
(62, 5, 5, '2024-03-12', 'South'),
(63, 9, 7, '2024-03-13', 'East'),
(64, 13, 2, '2024-03-14', 'West'),
(65, 17, 6, '2024-03-15', 'North'),
(66, 3, 2, '2024-03-16', 'South'),
(67, 7, 4, '2024-03-17', 'East'),
(68, 11, 3, '2024-03-18', 'West'),
(69, 15, 5, '2024-03-19', 'North'),
(70, 19, 8, '2024-03-20', 'South');

SELECT * from products;
SELECT * from sales;

SELECT * FROM products p LEFT JOIN sales s ON p.product_id=s.product_id;

#1. Calculate total revenue (quantity*price) for each product
SELECT p.product_name, p.product_id, SUM(s.quantity*p.price) AS total_revenue
FROM products p
LEFT JOIN sales s ON p.product_id=s.product_id
GROUP BY p.product_id
ORDER BY total_revenue DESC;

#2. Find the total quantity sold for each category
SELECT p.category, SUM(s.quantity) AS total_quantity_sold
FROM products p
LEFT JOIN sales s ON p.product_id=s.product_id
GROUP BY category;

#3. Count the number of sales in each region
SELECT COUNT(sale_id) AS num_of_sales, region
FROM sales
GROUP BY region;

#4. Find the average quantity sold per product
SELECT p.product_id, p.product_name, AVG(s.quantity) AS avg_quantity_sold 
FROM products p
LEFT JOIN sales s ON p.product_id=s.product_id
GROUP BY p.product_id;

#5. Calculate total sales per month 
SELECT DATE_FORMAT(sale_date, '%Y-%m') AS month, SUM(quantity) AS total_sales
FROM sales 
GROUP BY month;

#6. Find categories with total revenue greater than $1000
SELECT p.category, SUM(s.quantity*p.price) AS total_revenue
FROM products p LEFT JOIN sales s ON p.product_id=s.product_id
GROUP BY p.category;

#7. List regions that have made more than 10 sales
SELECT region, COUNT(*) AS number_of_sales
FROM sales
GROUP BY region
HAVING COUNT(*) > 10;