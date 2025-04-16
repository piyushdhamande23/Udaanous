

create table exam_info(
StudentID int identity(1,1) primary key,    ---identity keyword is use for auto-increment
FirstNames varchar(50),
LastNames  varchar(50),
Scores integer
)

insert into exam_info values ('John','Doe',80),
('Alice','Smith',75),
('Bob','Johnson',78),
('Emily','Brown',60),
('Michael','Davis',86),
('Sarah','Wilson',90),
('David','Lee',75),
('Jessica','Taylor',75),
('Chris','Evens',55),
('Emma','Thompson',67);


select * from exam_info

--CUBE of Score column
select power(Scores,3) as CubeScores from exam_info

