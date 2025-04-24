
Create database SQL_Task

create table Customer(
customer_id  int primary key,
customer_name varchar(50),
region varchar(50),
signup_date date
)

insert into Customer values(1,'Alice Smith','East','01-10-2023')
insert into Customer values(2,'Bob Johnson','West','02-15-2023')
insert into Customer values(3,'Charlie Lee','North','01-22-2023')
insert into Customer values(4,'Diana King','South','03-01-2023')
insert into Customer values(5,'Ethan White','East','02-05-2023')

select * from Customer

create table order_items(
order_item_id int primary key,
order_id int,
product_id int,
quantity int,
price int
)

insert into order_items values(1,1001,101,2,50)
insert into order_items values(2,1001,102,3,50)
insert into order_items values(3,1002,101,1,50)
insert into order_items values(4,1003,103,4,75)
insert into order_items values(5,1004,104,2,60)
insert into order_items values(6,1005,102,2,50)

select * from order_items

create table orders(
order_id int primary key,
customer_id int,
order_date date,
total_amount int
)

insert into orders values(1001,1,'03-10-2023',250)
insert into orders values(1002,2,'03-12-2023',190)
insert into orders values(1003,3,'04-05-2023',300)
insert into orders values(1004,4,'04-10-2023',150)
insert into orders values(1005,1,'05-01-2023',220)

select * from orders

create table products(
product_id int primary key,
product_name varchar(100),
category varchar(100),
cost int
)

insert into products values(101,'Wireless Mouse','Electronics',30)
insert into products values(102,'USB Cable','Electronics',10)
insert into products values(103,'Laptop Stand','Accessories',50)
insert into products values(104,'HDMI Adapter','Electronics',20)

select * from products

----------------------------------------------------------------------------------
select * from Customer
select * from order_items
select * from orders
select * from products

--Monthly Revenue
select sum(order_items.quantity*order_items.price) as Total_revenue,date_format(orders.order_date,'%Y-%m') as months from order_items
join orders on
orders.order_id=order_items.order_id
group by Total_revenue,months 

--Customer Lifetime Value
select Customer.customer_name,orders.order_id,orders.total_amount from Customer
join orders
on orders.order_id = Customer.customer_id
order by customer_name
LIMIT 5

--Most Popular Product by Region 
select Customer.region,orders.order_id,products.product_id,products.product_name  from Customer,products
join orders
on orders.order_id = products.product_id
order by region

--Profit Analysis
select (order_item.price-products.cost)*order_items.quantity as profit,products.product_name from products
join order_items
on order_items.order_id = products.product_id
LIMIT 5



--New Vs Returning Customers
select count(format(orders.order_date,'%M')),orders.order_id,Customer.customer_id from orders
join Customer
on Customer.customer_id = orders.order_id
group by order_id,customer_id
having order_id>1
order by order_date DESC
