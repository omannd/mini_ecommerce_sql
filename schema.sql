create database EcommerceDB;
use EcommerceDB;

-- 1. Customers Table
create table Customers (
    customer_id int auto_increment primary key,
    full_name varchar(100) not null,
    email varchar(100) unique,
    address varchar(255)
);

-- 2. Products Table
create table Products (
    product_id int auto_increment primary key,
    product_name varchar(100) not null,
    price decimal(10, 2) not null,
    stock_quantity int default 0
);

-- 3. Orders Table (Links to Customers)
create table Orders (
    order_id int auto_increment primary key,
    customer_id int,
    order_date datetime default current_timestamp,
    foreign key (customer_id) references Customers(customer_id)
);

-- 4. OrderItems Table (THE BRIDGE TABLE)
-- This table connects Orders and Products (Many-to-Many)
CREATE TABLE OrderItems (
    order_item_id int auto_increment primary key,
    order_id int,
    product_id int,
    quantity int not null,
    unit_price decimal(10, 2) not null, 
    foreign key (order_id) references Orders(order_id),
    foreign key (product_id) references Products(product_id)
);