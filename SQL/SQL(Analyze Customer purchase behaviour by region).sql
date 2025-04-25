



select * from orders
select * from customers

select C.names,C.region,sum(O.total_amount) as Total_Amount_Spent,count(O.order_id) as Number_of_orders,O.order_date,
rank() over (O.order_date) as 3
from customers as C
join orders as O
on O.order_id = C.customer_id
group by C.names,C.region,O.order_date
having O.order_date  >= dateadd(month,-12,getdate())
order by O.order_date

