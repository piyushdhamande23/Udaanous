
create table exam_info_2(
StudentID int identity(1,1) primary key,
FirstNames varchar(50),
LastNames  varchar(50),
Scores float
)

insert into exam_info_2 values('John','Doe',80.345544),
('Alice','Smith',75.6355),
('Bob','Johnson',78.5364565),
('Emily','Brown',60.3565),
('Michael','Davis',86.5353656),
('Sarah','Wilson',90.535464),
('David','Lee',75.567765),
('Jessica','Taylor',75.34242),
('Chris','Evans',55.09098),
('Emma','Thompson',67.34535);

select * from exam_info_2

select sqrt(Scores) as Transformed_Scores from exam_info_2


