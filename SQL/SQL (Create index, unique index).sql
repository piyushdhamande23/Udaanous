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

---create index
create index ind_Name 
on Emp1 (Emp_Name);


--create unique index 
create unique index Ind_Salary
on Emp1 (Salary)

--drop index
drop index Emp1.ind_Name





