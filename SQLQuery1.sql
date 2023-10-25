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

--1. ������� ������� ������, ��� ����������� �� ���� � ���������� �������

SELECT * FROM Departments;

GO

SElECT * FROM Departments
ORDER BY idDepartments DESC, DepartmentsName DESC, Financing DESC;

GO

--������� ����� ���� �� �� ��������, ��������������, �� ����� ����, �� ����������,
--�Group Name� �� �Group Rating� ��������.

SELECT * FROM Groups;

GO

SELECT Name AS "Group Name", Rating AS  "Group Rating"
FROM Groups;

GO

--3. ������� ��� ���������� ��� �������,
--������� ������ �� ��������� �� ��������
--�� ������� ������ �� ��������� �� �������� (���� ������ �� ��������).

SELECT * FROM Teachers;

GO

UPDATE Teachers
SET Position= 'Assistant'
WHERE Position= 'Teacher4';

GO

SELECT Surname AS '������� ���������',
		Premium AS '�������� ',
		(Premium/Salary)*100 AS '������� ������ �� ��������� �� ��������',
		((Premium+Salary)/Salary)*100 AS 'B������� ������ �� ��������� �� ��������'
FROM Teachers;


--4. ������� ������� ���������� � ������ ������ ����
--� ������ ������: �The dean of faculty [faculty] is [dean].�.

SELECT 'The dean of faculty ' + _Name+' is '+Dean 
FROM Faculties;
GO

--5. ������� ������� ����������, �� � ����������� �� ������ ���� �������� 3050.
SELECT * FROM Teachers;

GO

SELECT Surname
FROM Teachers
WHERE Position= 'Professor' AND Salary>3050;
Go

--6. ������� ����� ������, ���� ������������ ���� ������ �� 11000 ��� ����� 25000.

SELECT * FROM Departments;

GO

SELECT DepartmentsName
FROM Departments
WHERE  Financing<11000.00 OR Financing>25000.00;
Go

--7. ������� ����� ����������, ���� ���������� �Computer Science�.

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

--8. ������� ������� �� ������ ����������, �� �� � �����������.

SELECT*FROM Teachers

GO

SELECT Surname,Position
FROM Teachers
WHERE Position!= 'Professor';
GO

--9. ������� �������, ������, ������ �� �������� ���������, � ���� �������� � ������� �� 160 �� 550.

UPDATE Teachers
SET Premium = 300
WHERE idCategory=2;
GO

SELECT Surname,Position,Salary,Premium
FROM Teachers
WHERE Position = 'Assistant' AND Premium>160.00 AND Premium<550.00;
GO

--10 ������� ������� �� ������ ���������.
SELECT Surname,Salary
FROM Teachers
WHERE Position= 'Assistant';
GO

--11. ������� ������� �� ������ ����������, �� ���� ������� �� ������ �� 01.01.2000

SELECT Surname,Position
FROM Teachers
WHERE EmploymentDate< '01.01.2000';
GO

--12. ������� ����� ������, �� � ���������� ������� ����������� �� ������� �Software Development�.
--����, �� ���������� ������� ���� ����� �Name of Department�.

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

--13. ������� ������� ���������, �� ����� �������� (���� ������ �� ��������) �� ����� 1200.

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

--14. ������� ����� ���� 5-�� �����, �� ����� ������� � ������� �� 2 �� 4.

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

--15. ������� ������� ��������� � ������� ����� 550 ��� ��������� ����� 200.

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

