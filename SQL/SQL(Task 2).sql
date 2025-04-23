

select * from Sales_Data

--Top Sales Value
select sum(quantity*price) as total_sales from Sales_Data

--Monthly Sales Trends
select date_format(order_date,'%Y-%m') as months,sum(quantity*price) as total_sales
from Sales_Data
group by months
order by months

--Top 5 Products by Sales Value
select product_name,sum(quantity * price) as total_revenue from Sales_Data
group by product_name
order by total_revenue DESC
LIMIT 5;

--Sales by Region 
select region,sum(quantity*price) as total_sales from Sales_Data
group by region 
order by total_sales DESC


--Customer Purchases Frequency
select customer_id,count(dictinct order_id)as num_orders from Sales_Data
group by customer_id
order by num_orders DESC
LIMIT 10;

--Category-wise Revenue Contribution 
select category,round(sum(quantity*price)*100.0 / (select sum(quantity* price)from Sales_Data),2)
as percentage_of_total_revenue from Sales_Data
group by category
order by percentage_of_total_revenue DESC

--Repeat Customer Rate
select count(*) as repeat_customers
from (select customer_id from Sales_Data group by customer_id
having count(distinct order_id)>1)
as repeated

