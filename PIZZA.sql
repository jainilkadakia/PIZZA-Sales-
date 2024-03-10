create database PZ_Sales ;
use PZ_Sales ;
select round(sum(total_price)) as total_revenue from pz ;

select sum(total_price)/count(distinct(order_id)) as avg_order_value from pz ;

select sum(quantity) as total_pizza from pz ;

select count(distinct(order_id)) from pz ;

select round(sum(quantity)/count(distinct(order_id)) ) as avg_orders from pz ;

select DAYNAME(order_date) as Order_day ,count(distinct(order_id)) as Order_datday from pz 
group by 1 ;

select monthname(order_date) as Month_name ,count(distinct(order_id)) as Order_datday from pz group by 1 ;

select pizza_category,round(sum(total_price)) as total_revenue ,
cast(sum(total_price)* 100 / (select sum(total_price)  from pz ) as decimal (10,2)) as PCT 
from pz 
group by pizza_category;

select pizza_size,round(sum(total_price)) as total_revenue ,
cast(sum(total_price)* 100 / (select sum(total_price)  from pz ) as decimal (10,2)) as PCT 
from pz 
group by pizza_size 
order by pizza_size ;

select pizza_category, SUM(quantity) as Total_quantity 
from pz 
group by pizza_category 
order by Total_quantity desc ;

select pizza_category,Round( SUM(total_price)) as Total_revenue
from pz 
group by pizza_category 
order by Total_revenue desc ;

select  pizza_name , SUM(quantity) as Total_pizsold
from pz 
group by pizza_name 
order by Total_pizsold desc
limit 5;

select  pizza_name , ROUND(SUM(total_price)) as pizrevenue
from pz 
group by pizza_name 
order by pizrevenue desc
limit 5;

select  pizza_name , ROUND(SUM(total_price)) as pizrevenue
from pz 
group by pizza_name 
order by pizrevenue desc
limit 5;


select  pizza_name , COUNT(DISTINCT order_id) AS PZZ
from pz 
group by pizza_name 
order by PZZ desc
limit 5;
