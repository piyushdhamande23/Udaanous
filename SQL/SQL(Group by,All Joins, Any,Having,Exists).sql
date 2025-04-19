
select * from Emp1
select * from Orders

--Group By
select count(Emp_Name),City,Emp_ID from Emp1
group by City,Emp_ID

--Order By
select * from Emp1
order by Emp_Name 

--Inner Join
select * from Emp1 As E
inner join Orders as O
on E.Emp_ID=O.Emp_ID


--Left Join
select * from Emp1 As E
left join Orders as O
on E.Emp_ID=O.Emp_ID

--Right Join 
select * from Emp1 As E
right join Orders as O
on E.Emp_ID=O.Emp_ID


--Cross Join 
select * from Emp1 As E
cross join Orders as O

--ANY 
select Emp_ID from Emp1
where Emp_ID = ANY (select Order_ID from Orders where Order_ID=1)


--Having Clause
select Sum(Salary),Emp_Name,Emp_ID from Emp1
group by Emp_ID,Emp_Name
having Emp_Name in ('Ramesh','Virat','Ankita')


--Exists
select Emp_ID from Emp1
where Exists (select Order_ID from Orders where Order_ID=1)

