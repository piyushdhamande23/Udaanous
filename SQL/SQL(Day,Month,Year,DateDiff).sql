
create table ExamTime_Table(
Stu_RollNo int primary key,
Subject_Name  varchar(50),
Department varchar(50),
Exam_Date  Date,
PracticalDate  Date
)

insert into ExamTime_Table values (1011,'Chemistry','Science','2025-07-20','2025-08-25')
insert into ExamTime_Table values (1012,'Mathematics','Science','2025-06-15','2025-07-10')
insert into ExamTime_Table values (1013,'Account','BCom','2025-06-20','2025-08-05')
insert into ExamTime_Table values (1014,'History','Science','2025-07-13','2025-10-30')
insert into ExamTime_Table values (1015,'English','Bcom','2025-05-18','2025-08-16')
insert into ExamTime_Table values (1016,'Biology','Science','2025-07-19','2025-08-12')

select * from ExamTime_Table


--DateDiff
select datediff (month,Exam_Date,PracticalDate) from ExamTime_Table


--Day
Select Day(Exam_Date) from ExamTime_Table

--Month
select Month(Exam_Date) from ExamTime_Table

--Year
Select YEAR(PracticalDate) from ExamTime_Table


--Date Format
select Date_Format(Exam_Date,%b) from ExamTime_Table