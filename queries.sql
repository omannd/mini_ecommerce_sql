-- 1. DETAILED RECEIPT 
select 
    o.order_id,
    o.order_date,
    p.product_name,
    oi.quantity,
    oi.unit_price,
    (oi.quantity * oi.unit_price) as total_line_item_price
from OrderItems oi
join Products p on oi.product_id = p.product_id
join Orders o on oi.order_id = o.order_id
where o.order_id = 1;

-- 2. CUSTOMER LIFETIME VALUE 
select
    c.full_name,
    count(distinct o.order_id) as total_orders, 
    sum(oi.quantity * oi.unit_price) as total_spent 
from Customers c
join Orders o on c.customer_id = o.customer_id
join OrderItems oi on o.order_id = oi.order_id
group by c.customer_id, c.full_name
order by total_spent desc;

-- 3. BEST SELLING PRODUCTS 
select
    p.product_name,
    sum(oi.quantity) as total_sold_quantity
from OrderItems oi
join Products p on oi.product_id = p.product_id
group by p.product_id, p.product_name
order by total_sold_quantity desc;