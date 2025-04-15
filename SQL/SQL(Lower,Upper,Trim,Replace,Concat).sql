
select * from Emp1

---Lower
select lower('STRING')

select lower(Emp_Name) as Lower_Case_Name from Emp1

---Char Length
--select char_length('String') as Length_of_String

select char_length('Emp_Name') as Length_of_String
from Emp1;

----Upper
select upper('string')

select upper(Emp_Name) as Upper_Case_Name from Emp1

---Trim
select trim('SQL Tutorial') as Trim_String 

select trim(Emp_Name) as Trim_Col from Emp1

--Replace
select replace('SQL Tutorial','SQL','HTML')

select replace('Emp_Name','Emp','Employee') as Correct_Col
from Emp1

--Concat
select concat('string1','string2') as Concatenate_string

select concat(Emp_ID,' ',Emp_Name) as Concat_String from Emp1

