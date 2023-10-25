USE ACADEMY
GO

ALTER TABLE Faculties
ADD Dean nvarchar(max) not null check (Dean <> N'')
go

ALTER TABLE Teachers
ADD IsAssistant bit not null default 0
go

ALTER TABLE Teachers
ADD IsProfessor bit not null default 0
go

ALTER TABLE Teachers
ADD Position  nvarchar(max) not null check (Position <> N'')
go

INSERT INTO  Departments(Financing,DepartmentsName)
VAlUES 
(20000.00,'Departmets1'),
(35000.00,'Departmets2'),
(10000.00,'Departmets3'),
(37000.00,'Departmets4'),
(50000.00,'Departmets5')

GO

--1. Вивести таблицю кафедр, але розташувати її поля у зворотному порядку

SELECT * FROM Departments;

GO

SElECT * FROM Departments
ORDER BY idDepartments DESC, DepartmentsName DESC, Financing DESC;

GO

--Вивести назви груп та їх рейтинги, використовуючи, як назви полів, що виводяться,
--“Group Name” та “Group Rating” відповідно.

SELECT * FROM Groups;

GO

SELECT Name AS "Group Name", Rating AS  "Group Rating"
FROM Groups;

GO

--3. Вивести для викладачів їхнє прізвище,
--відсоток ставки по відношенню до надбавки
--та відсоток ставки по відношенню до зарплати (сума ставки та надбавки).

SELECT * FROM Teachers;

GO

UPDATE Teachers
SET Position= 'Assistant'
WHERE Position= 'Teacher4';

GO

SELECT Surname AS 'Прізвище викладача',
		Premium AS 'Надбавки ',
		(Premium/Salary)*100 AS 'відсоток ставки по відношенню до надбавки',
		((Premium+Salary)/Salary)*100 AS 'Bідсоток ставки по відношенню до зарплати'
FROM Teachers;


--4. Вивести таблицю факультетів у вигляді одного поля
--у такому форматі: “The dean of faculty [faculty] is [dean].”.

SELECT 'The dean of faculty ' + _Name+' is '+Dean 
FROM Faculties;
GO

--5. Вивести прізвища викладачів, які є професорами та ставка яких перевищує 3050.
SELECT * FROM Teachers;

GO

SELECT Surname
FROM Teachers
WHERE Position= 'Professor' AND Salary>3050;
Go

--6. Вивести назви кафедр, фонд фінансування яких менший за 11000 або більше 25000.

SELECT * FROM Departments;

GO

SELECT DepartmentsName
FROM Departments
WHERE  Financing<11000.00 OR Financing>25000.00;
Go

--7. Вивести назви факультетів, окрім факультету “Computer Science”.

SELECT * FROM Faculties;
GO

UPDATE Faculties
SET _Name= 'Computer Science'
WHERE idCategory=1;
GO

SELECT _Name
FROM Faculties
WHERE _Name!='Computer Science';
GO

--8. Вивести прізвища та посади викладачів, які не є професорами.

SELECT*FROM Teachers

GO

SELECT Surname,Position
FROM Teachers
WHERE Position!= 'Professor';
GO

--9. Вивести прізвища, посади, ставки та надбавки асистентів, у яких надбавка у діапазоні від 160 до 550.

UPDATE Teachers
SET Premium = 300
WHERE idCategory=2;
GO

SELECT Surname,Position,Salary,Premium
FROM Teachers
WHERE Position = 'Assistant' AND Premium>160.00 AND Premium<550.00;
GO

--10 Вивести прізвища та ставки асистентів.
SELECT Surname,Salary
FROM Teachers
WHERE Position= 'Assistant';
GO

--11. Вивести прізвища та посади викладачів, які були прийняті на роботу до 01.01.2000

SELECT Surname,Position
FROM Teachers
WHERE EmploymentDate< '01.01.2000';
GO

--12. Вивести назви кафедр, які в алфавітному порядку розміщуються до кафедри “Software Development”.
--Поле, що виводиться повинно мати назву “Name of Department”.

SELECT *FROM Departments
GO

UPDATE Departments
SET DepartmentsName='LDepartmets'
WHERE idDepartments=20;
GO

SELECT DepartmentsName AS 'Name of Department'
FROM Departments
WHERE DepartmentsName<'Software Development'
ORDER BY DepartmentsName;
Go

--13. Вивести прізвища асистентів, які мають зарплату (сума ставки та надбавки) не більше 1200.

SELECT *FROM Teachers
GO

UPDATE Teachers
SET Salary=600.00,Premium=500.00
WHERE idCategory=4;
GO

SELECT Surname
FROM Teachers
WHERE Position='Assistant' AND (Salary+Premium)<=1200.00;
Go

--14. Вивести назви груп 5-го курсу, які мають рейтинг у діапазоні від 2 до 4.

SELECT *FROM Groups
GO

INSERT INTO  Groups(Name,Rating,Year)
VAlUES 
('Group6',5,5),
('Group7',3,5),
('Group8',2,5),
('Group9',4,5)
GO

SELECT Name 
FROM Groups
WHERE Year=5 AND Rating>=2 AND Rating<=4;
GO

--15. Вивести прізвища асистентів зі ставкою менше 550 або надбавкою менше 200.

SELECT *FROM Teachers
GO

INSERT INTO Teachers (EmploymentDate,Name,Premium,Salary,Surname,IsAssistant,IsProfessor,Position)
VALUES
('2008-02-07','Name6',100.00,250.00,'Surname6',1,0,'Assistant'),
('2002-12-03','Name7',150.00,350.00,'Surname7',1,0,'Assistant'),
('2000-05-17','Name8',190.00,450.00,'Surname8',1,0,'Assistant')
GO

SELECT Name
FROM Teachers
WHERE Salary<550.00 OR Premium<200.00;
Go

