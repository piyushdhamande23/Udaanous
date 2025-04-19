
create table purchases1(
CustomerID int,
PurchaseDate Date,
ReturnDate Date
);

insert into purchases1 values(1,'2024-01-01','2024-01-09'),
(2,'2024-01-02','2024-01-16'),
(3,'2024-01-03','2024-01-11'),
(4,'2024-01-04','2024-01-08'),
(5,'2024-01-05','2024-01-09'),
(6,'2024-01-06','2024-01-10'),
(7,'2024-01-07','2024-01-21'),
(8,'2024-01-08','2024-01-29'),
(9,'2024-01-09','2024-01-13'),
(10,'2024-01-10','2024-01-24');

select * from purchases1

--Data Difference
select datediff(day,PurchaseDate,ReturnDate) from purchases1


--------------------------------------------------------------------------------
create table purchases2(
CustomerID int,
PurchaseDate Date,
ReturnDate Date
)

insert into purchases2 values (1,'2024-01-01','2024-01-05'),
(2,'2024-01-02','2024-01-06'),
(3,'2024-01-03','2024-01-07'),
(4,'2024-01-04','2024-01-08'),
(5,'2024-01-05','2024-01-09'),
(6,'2024-01-06','2024-01-10'),
(7,'2024-01-07','2024-01-11'),
(8,'2024-01-08','2024-01-12'),
(9,'2024-01-09','2024-01-13'),
(10,'2024-01-10','2024-01-14');

select * from purchases2

--Years Data
select year(ReturnDate) as YearsData from purchases2