

select * from Emp1

---OR 

select Emp_ID, Emp_Name from Emp1
where Emp_ID=101 OR Emp_Name='Rajesh'

--LIMIT

select Emp_Name from Emp1 
 where Emp_Name ='Ramesh'   LIMIT 3

--Between 
select Salary from Emp1
where Salary between 20000 and 30000

--IN 
Select * from Emp1
where Department in ('IT','HR')

--Like 
select * from Emp1
where Emp_Name Like 'R%'

--AND
select Emp_ID,Emp_Name from Emp1
where Emp_ID=101 AND Emp_Name='Ramesh'

--NOT 
select * from Emp1
where NOT Emp_ID=101

