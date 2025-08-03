use database tasty_bytes_sample_data;
use schema raw_pos;

show tables;

--  How many items are there with an item_category of 'Snack' and an item_subcategory of 'Warm Option'?

select *
FROM MENU;


select distinct  item_category
from menu;
-- 4
-- Beverage
-- Dessert
-- Main
-- Snack

select *
from menu 
where item_category = 'Snack' and item_subcategory = 'Warm Option';
-- 3 

-- What are the max sales prices for each of the three item subcategories (hot option, warm option, cold option)? List from highest price to lowest.

select max(sale_price_usd) -- 21 
from menu 
where item_subcategory = 'Hot Option';

select max(sale_price_usd) -- 12.5
from menu 
where item_subcategory = 'Warm Option';

select max(sale_price_usd) -- 11
from menu 
where item_subcategory = 'Cold Option';