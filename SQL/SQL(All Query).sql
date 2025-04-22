
Create table Customer(
customer_id int primary key,
first_name  varchar(50),
last_name  varchar(50),
email  varchar(100),
city   varchar(50)
)

insert into Customer values(1,'Alice','Smith','alice@example.com','New York'),
(2,'Bob','Johnson','bob@example.com','Los Angeles'),
(3,'Carol','Taylor','carol@example.com','Chicago'),
(4,'David','Lee','david@example.com','Houston'),
(5,'Eva','Brown','eva@example.com','Phoenix');

select * from Customer
--------------------------------------------------------------------------------
create table Orders(
order_id int primary key,
customer_id int,
product_id int,
quantity  int,
order_date date
)

insert into Orders values(1,1,1,2,'01-15-2024'),
(2,1,3,1,'01-20-2024'),
(3,2,2,1,'02-11-2024'),
(4,3,1,3,'02-18-2024'),
(5,4,5,1,'03-02-2024'),
(6,5,4,5,'03-10-2024'),
(7,2,3,2,'03-12-2024');

select * from Orders
-------------------------------------------------------------------
create table Product(
product_id  int primary key,
product_name varchar(50),
category  varchar(50),
price  float
);

insert into Product values(1,'T-shirt','Clothing',15),
(2,'Jeans','Clothing',40),
(3,'Coffee Mug','Home Goods',8.5),
(4,'Notebook','Stationery',3),
(5,'Backpack','Accessories',25)

select * from Product
---------------------------------------------------------------------------------
select * from Customer
select * from Orders
select * from Product

--select all customers and cities
select customer_id,city from Customer

--Join
select * from Customer 
join Orders on 
Customer.customer_id= Orders.customer_id

--Display each order with customer full name, product name, and total price(quantity * price)
select Customer.first_name,Customer.last_name,Product.product_name,(Orders.quantity * Product.price) as total_price from Customer,Orders
join Product on
Product.product_id=Orders.customer_id

--filter & Date
select order_date from Orders
order by order_date 

--show all orders placed in march 2024
select order_date from Orders
where order_date>='2024-03-01' and order_date<'2024-04-01'

----Group by
select sum(price) as total_price,product_name from Product
group by product_name

--Count how many times each product has been ordered
select count(product_id),product_name from Product
group by product_name

--calculate total revenue generated from each product
select sum(Orders.quantity* Product.price)as total_revenue from Product 
join Orders
on Orders.order_id=Product.product_id

--Top Customer
select Top 3 first_name from Customer


---Identity the customer who spend the most
select sum(Orders.quantity* Product.price)as total_revenue,Customer.first_name from Product,Customer
join Orders
on Orders.order_id=Customer.customer_id
group by Customer.first_name

--Which city has the highest average  spending per customer?
select avg(Product.price)as total_average,Customer.first_name,Customer.city from Product
join Customer
on Product.product_id=Customer.customer_id
group by Customer.first_name,Customer.city