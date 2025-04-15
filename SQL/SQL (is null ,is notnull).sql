create database Campus

Create table Emp2(
Emp_ID int primary key,
Emp_Name varchar(50) ,
Department varchar(50),
City varchar(50),
Salary int
)

insert into Emp2 values(1011,'Ramesh','Medicine','Mumbai',25000)
insert into Emp2 values(1022,'Virat','IT',' ',28000)
insert into Emp2 values(1033,'Ankita','Medicine','Pune',30000)
insert into Emp2 values(1044,'Bharti','HR','Nagpur',34000)
insert into Emp2 values(1055,'Ashok','Science','Jaipur',23000)
insert into Emp2 values(1066,'Rajesh','IT',' ',35000)

select * from Emp2

-- is null 
select City from Emp2 where City is null



-- is not null
select Emp_Name,Department from Emp2 where Emp_Name  is not null




