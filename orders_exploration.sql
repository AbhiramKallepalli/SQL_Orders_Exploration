-- 1. What does the full dataset look like?
-- select * selects all the columns of the table
select
   *
from
   orders;
   
   
-- 2. What are the unique order IDs?
-- We can select the column without using distinct since order_id is the primary key of the table
-- Primary keys are a unique, non-null value to represent a row in a dataset (so unique by definition!)
select
   order_id
from
   orders;
   
   
-- 3. What are all the unique customers who placed orders?
-- We need to use distinct since customer_id can have duplicate values if a customer places more than 1 order
select
   distinct customer_id
from
   orders;
   
   
-- 4. What products do we sell?
-- We can use distinct to remove the duplicates and list each product only once 
select
   distinct product_name
from
   orders;
   
   
-- 5. What are the orders sorted by date, starting with the most recent?
-- To sort the orders with the most recent at the top, we need to sort in descending order. 
select
   *
from
   orders
order by
   order_date desc;
   
   
-- 6. Can you list all the orders starting with the earliest date, and within each date, sort the products alphabetically?
-- We can order by order_date, and then by product_name within each date.
select
   *
from
   orders
order by
   order_date, product_name;