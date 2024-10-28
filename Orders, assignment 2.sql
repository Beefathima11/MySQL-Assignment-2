CREATE DATABASE Sales;
Use sales;
CREATE TABLE Orders (
    Order_Id INT PRIMARY KEY UNIQUE NOT NULL,
    Customer_name VARCHAR(255) NOT NULL,
    Product_Category VARCHAR(100) NOT NULL,
    Ordered_item VARCHAR(255) NOT NULL,
    Contact_No VARCHAR(15) NOT NULL
);
select * from orders;
ALTER TABLE Orders
ADD order_quantity INT NOT NULL;
select * from orders;
ALTER TABLE Orders
RENAME TO sales_orders;
INSERT INTO sales_orders (Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No, order_quantity) VALUES
(1, 'Raj', 'Electronics', 'Smartphone', '123-456-7890', 2),
(2, 'Amit', 'Clothing', 'Jacket', '234-567-8901', 1),
(3, 'Priya', 'Home', 'Blender', '345-678-9012', 1),
(4, 'Nina', 'Electronics', 'Laptop', '456-789-0123', 1),
(5, 'Sita', 'Kitchen', 'Cookware Set', '567-890-1234', 3),
(6, 'Rahul', 'Sports', 'Tennis Racket', '678-901-2345', 1),
(7, 'Asha', 'Books', 'Novel', '789-012-3456', 4),
(8, 'Vikram', 'Beauty', 'Perfume', '890-123-4567', 1),
(9, 'Neha', 'Electronics', 'Headphones', '901-234-5678', 2),
(10, 'Karan', 'Clothing', 'T-Shirt', '012-345-6789', 5);
select * from sales_orders;
SELECT Customer_name, Ordered_item FROM sales_orders;
UPDATE sales_orders
SET Ordered_item = 'Smartwatch'
WHERE Order_Id = 1;
select * from sales_orders;
DROP TABLE sales_orders;
