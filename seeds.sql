-- 1. Create Customers 
insert into Customers (full_name, email, address) values
('Ahmet Yılmaz', 'ahmet@mail.com', 'Istanbul, Turkey'),
('Ayşe Demir', 'ayse@mail.com', 'Ankara, Turkey'),
('Mehmet Kaya', 'mehmet@mail.com', 'Izmir, Turkey');

-- 2. Create Products 
insert into Products (product_name, price, stock_quantity) values 
('Gaming Laptop', 25000.00, 10),
('Wireless Mouse', 500.00, 50),
('Mechanical Keyboard', 1200.00, 30),
('27 inch Monitor', 4500.00, 15);

-- 3. Create Orders 
insert into Orders (customer_id, order_date) values 
(1, '2023-11-20 14:30:00'), 
(2, '2023-11-21 09:15:00'), 
(1, '2023-11-25 18:00:00'); 

-- 4. Create Order Items 
insert into OrderItems (order_id, product_id, quantity, unit_price) values 
(1, 1, 1, 25000.00), -- Order 1, Product 1 (Laptop)
(1, 2, 1, 500.00);   -- Order 1, Product 2 (Mouse)

insert into OrderItems (order_id, product_id, quantity, unit_price) values 
(2, 3, 1, 1200.00),  -- Order 2, Product 3 (Keyboard)
(2, 4, 2, 4500.00);  -- Order 2, Product 4 (Monitor)

insert into OrderItems (order_id, product_id, quantity, unit_price) values
(3, 2, 1, 500.00);   -- Order 3, Product 2 (Mouse)