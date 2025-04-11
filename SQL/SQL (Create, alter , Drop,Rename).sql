create database Campus

Create table Emp1(
Emp_ID int primary key,
Emp_Name varchar(50)  not null,
Department varchar(50) not null,
City varchar(50),
Salary int
)

insert into Emp1 values(101,'Ramesh','Medicine','Mumbai',25000)
insert into Emp1 values(102,'Virat','IT','Mumbai',28000)
insert into Emp1 values(103,'Ankita','Medicine','Pune',30000)
insert into Emp1 values(104,'Neha','HR','Nagpur',34000)
insert into Emp1 values(105,'Ashok','Science','Jaipur',23000)
insert into Emp1 values(106,'Sandeep','IT','Kolkata',35000)

select * from Emp1

--Adding column
alter table Emp1 add Address varchar(50)

--Rename column
exec sp_rename
'Emp1.Address','Emp_Bonus','column';

--drop column
alter table Emp1
drop column Emp_Bonus;


create table Orders(
Order_ID int not null,
Order_number int not null,
Emp_ID int
)

insert into Orders values(1,77856,101)
insert into Orders values(2,57856,102)
insert into Orders values(3,22858,103)
insert into Orders values(4,24866,104)

--Add constraint
alter table Orders
add foreign key(Emp_ID) references Emp1(Emp_ID)

--Drop constraint
alter table Orders
drop constraint FK_Emp1Order;

