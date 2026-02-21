CREATE DATABASE day05;
USE day05;

CREATE TABLE customers (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(100),
email VARCHAR(100),
city VARCHAR(50),
signup_date DATE);

CREATE TABLE orders(
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
status VARCHAR(50),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id));

CREATE TABLE order_items (
item_id INT PRIMARY KEY,
order_id INT,
product_name VARCHAR(100),
quantity INT,
price DECIMAL (10,2),
FOREIGN KEY (order_id) REFERENCES orders(order_id));


INSERT INTO customers (customer_id, customer_name, email, city, signup_date) VALUES
(1, 'John Smith', 'john.smith@email.com', 'New York', '2023-01-15'),
(2, 'Emma Wilson', 'emma.wilson@email.com', 'Los Angeles', '2023-02-20'),
(3, 'Michael Brown', 'michael.brown@email.com', 'Chicago', '2023-03-10'),
(4, 'Sarah Davis', 'sarah.davis@email.com', 'Houston', '2023-01-25'),
(5, 'James Johnson', 'james.johnson@email.com', 'Phoenix', '2023-04-05'),
(6, 'Emily Martinez', 'emily.martinez@email.com', 'Philadelphia', '2023-02-14'),
(7, 'David Garcia', 'david.garcia@email.com', 'San Antonio', '2023-05-12'),
(8, 'Jessica Rodriguez', 'jessica.rodriguez@email.com', 'San Diego', '2023-03-30'),
(9, 'Daniel Anderson', 'daniel.anderson@email.com', 'Dallas', '2023-01-08'),
(10, 'Lisa Taylor', 'lisa.taylor@email.com', 'San Jose', '2023-06-22'),
(11, 'Matthew Thomas', 'matthew.thomas@email.com', 'Austin', '2023-04-18'),
(12, 'Ashley White', 'ashley.white@email.com', 'Jacksonville', '2023-02-28'),
(13, 'Christopher Harris', 'chris.harris@email.com', 'Fort Worth', '2023-07-15'),
(14, 'Amanda Clark', 'amanda.clark@email.com', 'Columbus', '2023-05-20'),
(15, 'Joshua Lewis', 'joshua.lewis@email.com', 'Charlotte', '2023-03-05'),
(16, 'Melissa Walker', 'melissa.walker@email.com', 'San Francisco', '2023-08-10'),
(17, 'Andrew Hall', 'andrew.hall@email.com', 'Indianapolis', '2023-01-30'),
(18, 'Stephanie Allen', 'stephanie.allen@email.com', 'Seattle', '2023-06-08'),
(19, 'Ryan Young', 'ryan.young@email.com', 'Denver', '2023-04-25'),
(20, 'Nicole King', 'nicole.king@email.com', 'Boston', '2023-07-30');

INSERT INTO orders (order_id, customer_id, order_date, status) VALUES
(1, 1, '2023-08-15', 'Delivered'),
(2, 1, '2023-09-20', 'Delivered'),
(3, 2, '2023-08-22', 'Shipped'),
(4, 3, '2023-08-10', 'Delivered'),
(5, 3, '2023-09-05', 'Pending'),
(6, 4, '2023-08-18', 'Delivered'),
(7, 5, '2023-09-12', 'Shipped'),
(8, 6, '2023-08-25', 'Delivered'),
(9, 6, '2023-09-15', 'Cancelled'),
(10, 7, '2023-08-30', 'Delivered'),
(11, 8, '2023-09-08', 'Shipped'),
(12, 9, '2023-08-12', 'Delivered'),
(13, 9, '2023-09-18', 'Delivered'),
(14, 9, '2023-10-01', 'Pending'),
(15, 10, '2023-09-22', 'Shipped'),
(16, 11, '2023-08-28', 'Delivered'),
(17, 12, '2023-09-10', 'Delivered'),
(18, 13, '2023-09-25', 'Pending'),
(19, 14, '2023-08-20', 'Delivered'),
(20, 15, '2023-09-14', 'Shipped'),
(21, 1, '2023-10-05', 'Pending'),
(22, 2, '2023-10-08', 'Delivered'),
(23, 3, '2023-10-12', 'Shipped'),
(24, 4, '2023-09-28', 'Delivered'),
(25, 5, '2023-10-15', 'Cancelled'),
(26, 7, '2023-10-10', 'Delivered'),
(27, 8, '2023-09-30', 'Shipped'),
(28, 10, '2023-10-18', 'Pending'),
(29, 11, '2023-10-02', 'Delivered'),
(30, 12, '2023-10-20', 'Shipped'),
(31, 14, '2023-10-22', 'Delivered'),
(32, 15, '2023-09-26', 'Delivered'),
(33, 16, '2023-10-25', 'Pending'),
(34, 17, '2023-10-05', 'Delivered'),
(35, 18, '2023-10-12', 'Shipped'),
(36, 19, '2023-10-08', 'Delivered'),
(37, 20, '2023-10-28', 'Cancelled'),
(38, 2, '2023-11-01', 'Pending'),
(39, 5, '2023-11-03', 'Shipped'),
(40, 8, '2023-11-05', 'Delivered');


INSERT INTO order_items (item_id, order_id, product_name, quantity, price) VALUES
(1, 1, 'Laptop', 1, 899.99),
(2, 1, 'Mouse', 2, 25.99),
(3, 2, 'Keyboard', 1, 79.99),
(4, 2, 'Monitor', 1, 299.99),
(5, 3, 'Headphones', 1, 149.99),
(6, 4, 'Webcam', 1, 89.99),
(7, 4, 'USB Cable', 3, 12.99),
(8, 5, 'Phone Case', 2, 19.99),
(9, 6, 'Smartwatch', 1, 249.99),
(10, 6, 'Charging Cable', 2, 15.99),
(11, 7, 'Tablet', 1, 399.99),
(12, 8, 'Speaker', 1, 129.99),
(13, 8, 'HDMI Cable', 1, 18.99),
(14, 9, 'Power Bank', 1, 45.99),
(15, 10, 'External HDD', 1, 119.99),
(16, 10, 'SD Card', 2, 29.99),
(17, 11, 'Gaming Mouse', 1, 69.99),
(18, 11, 'Mouse Pad', 1, 24.99),
(19, 12, 'Wireless Charger', 1, 34.99),
(20, 13, 'Phone Stand', 2, 16.99),
(21, 13, 'Screen Protector', 3, 9.99),
(22, 14, 'Laptop Bag', 1, 54.99),
(23, 15, 'Bluetooth Speaker', 1, 79.99),
(24, 15, 'Aux Cable', 2, 8.99),
(25, 16, 'Camera', 1, 599.99),
(26, 17, 'Tripod', 1, 89.99),
(27, 17, 'Memory Card', 1, 49.99),
(28, 18, 'Microphone', 1, 159.99),
(29, 19, 'Drone', 1, 799.99),
(30, 20, 'Action Camera', 1, 299.99),
(31, 20, 'Gimbal', 1, 199.99),
(32, 21, 'Smart Light', 3, 29.99),
(33, 22, 'Security Camera', 2, 89.99),
(34, 23, 'Router', 1, 129.99),
(35, 23, 'Ethernet Cable', 5, 11.99),
(36, 24, 'Printer', 1, 249.99),
(37, 24, 'Ink Cartridge', 2, 34.99),
(38, 25, 'Scanner', 1, 179.99),
(39, 26, 'Desk Lamp', 2, 39.99),
(40, 26, 'Surge Protector', 1, 24.99),
(41, 27, 'Office Chair', 1, 299.99),
(42, 28, 'Standing Desk', 1, 499.99),
(43, 29, 'Monitor Stand', 1, 59.99),
(44, 29, 'Cable Organizer', 3, 14.99),
(45, 30, 'Webcam Cover', 5, 7.99),
(46, 30, 'Laptop Stand', 1, 44.99),
(47, 31, 'Docking Station', 1, 179.99),
(48, 32, 'Portable SSD', 1, 149.99),
(49, 32, 'USB Hub', 1, 34.99),
(50, 33, 'Graphics Tablet', 1, 399.99),
(51, 34, 'Drawing Pen', 2, 49.99),
(52, 34, 'Stylus', 1, 29.99),
(53, 35, 'VR Headset', 1, 399.99),
(54, 36, 'Game Controller', 2, 59.99),
(55, 36, 'Gaming Headset', 1, 99.99),
(56, 37, 'Mechanical Keyboard', 1, 149.99),
(57, 38, 'RGB Mouse', 1, 79.99),
(58, 38, 'Wrist Rest', 1, 19.99),
(59, 39, 'Blue Light Glasses', 1, 34.99),
(60, 39, 'Cleaning Kit', 1, 14.99),
(61, 40, 'Phone Tripod', 1, 24.99),
(62, 40, 'Ring Light', 1, 39.99),
(63, 1, 'Laptop Sleeve', 1, 29.99),
(64, 3, 'Earbuds', 1, 59.99),
(65, 5, 'Screen Cleaner', 2, 9.99),
(66, 7, 'Tablet Case', 1, 34.99),
(67, 9, 'Car Charger', 1, 19.99),
(68, 11, 'Gaming Chair', 1, 349.99),
(69, 13, 'Desk Mat', 1, 24.99),
(70, 15, 'Wall Mount', 1, 29.99),
(71, 17, 'Lens Kit', 1, 79.99),
(72, 19, 'Drone Battery', 2, 49.99),
(73, 21, 'Smart Plug', 4, 14.99),
(74, 23, 'Wifi Extender', 1, 59.99),
(75, 25, 'Paper Tray', 1, 19.99),
(76, 27, 'Footrest', 1, 44.99),
(77, 29, 'Monitor Arm', 1, 89.99),
(78, 31, 'USB-C Adapter', 3, 16.99),
(79, 33, 'Pen Tablet', 1, 69.99),
(80, 35, 'VR Controller', 2, 79.99);

#1.List all orders with customer names and email address
SELECT o.order_id, i.product_name, c.customer_name, c.email FROM orders AS o
JOIN customers AS c ON c.customer_id=o.customer_id
JOIN order_items AS i ON o.order_id=i.order_id;

#2. Show all order items with order date and customer name
SELECT i.item_id, i.order_id, i.product_name, i.quantity, i.price, o.order_date, c.customer_name
FROM orders AS o JOIN order_items AS i ON o.order_id=i.order_id
JOIN customers AS c ON c.customer_id=o.customer_id;

#3. Find the total amount spent by each customer
SELECT SUM(i.price) AS tot_price, c.customer_name
FROM orders AS o JOIN customers AS c ON o.customer_id=c.customer_id
JOIN order_items AS i ON o.order_id=i.order_id
GROUP BY c.customer_name
ORDER BY tot_price DESC;

#4. List all products ordered by customer 'John Smith'
SELECT i.product_name, c.customer_name
FROM orders AS o JOIN customers AS c ON o.customer_id=c.customer_id
JOIN order_items AS i ON o.order_id=i.order_id
WHERE c.customer_name='John Smith';

#5. Calculate total revenue from 'Delivered' orders
SELECT SUM(i.quantity*i.price) AS revenue, o.status
FROM order_items AS i LEFT JOIN orders AS o ON o.order_id=i.order_id
WHERE o.status = 'Delivered';

#6. Find customers who have never placed an order
SELECT c.customer_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

#7. Show the number of orders per customer
SELECT c.customer_name, COUNT(o.order_id) AS tot_orders
FROM customers AS c
LEFT JOIN orders AS o ON o.customer_id=c.customer_id
GROUP BY c.customer_name;