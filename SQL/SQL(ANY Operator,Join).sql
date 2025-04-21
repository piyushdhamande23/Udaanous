create database OfficeData

create table student_info(
StudentID int primary key,
FirstNames varchar(50),
LastNames varchar(50)
)

insert into student_info values (1,'John','Doe'),
(2,'Alice','Smith'),
(3,'Bob','Johnson'),
(4,'Emily','Brown'),
(5,'Michael','Davis'),
(6,'Sarah','Wilson'),
(7,'David','Lee'),
(8,'Jessica','Taylor'),
(9,'Chris','Evans'),
(10,'Emma','Thompson');

select * from student_info

create table exam_info (
StudentID int primary key,
Subjects varchar(50),
Scores integer
)

insert into exam_info values(1,'Math',80),
(2,'English',75),
(3,'Science',78),
(4,'Math',60),
(5,'English',86),
(6,'Science',90),
(7,'Science',75),
(8,'English',75),
(9,'Math',55),
(10,'Math',67);

select * from exam_info

--student score more than 75 
select SI.StudentID, EI.StudentID,EI.Scores  from student_info as SI 
join exam_info as EI
on SI.StudentID = EI.StudentID
where EI.Scores > 75


--Student Score More than 75 ANY
select FirstNames from student_info
where StudentID  = any(select StudentID from exam_info where Scores > 75 )


