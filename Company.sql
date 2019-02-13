Create Database Employee
Use Employee

Alter Database Employee Modify Name=Company

Use Company
Create Table Employeers
(
  Id int Not Null Identity  Primary Key,
  FirstName NvarChar(50) Not Null,
  LastName  NvarChar(50) Not null,
  GenderId int Not Null ,
  Departament Nvarchar(50) Null,
  Salary int Not Null
)

Create Table GenderId
(
 Id int Not Null Primary Key,
 Gender NvarChar(50) Null,
)

Insert GenderId
Values
(1,'Female'),
(2,'male')
 

Insert Employeers
Values
('Anna','Nazanyan',1,'Programming',200000),
('Karen','Grigoryan',2,'Engeneering',150000)


Alter Table Employeers
Add Constraint Employeers_GenderId_FK Foreign Key(GenderId) references GenderId(Id)

Select * from Employeers

Insert Employeers
Values ('Gurgen','Darbinyan',2,'Developer',500000),
       ('Lilit','Kirakosyan',1,'Engeneering',3000)

--Gender can't be equal to 3  because  of Foreign Key
Insert Employeers
Values ('Armine', 'Simonyan',3,'Developer',40000)

Select FirstName,LastName From Employeers

Select FirstName+'('+LastName+')',Salary from Employeers

Select FirstName+'('+LastName+')' As FullName,
Salary from Employeers

Select Distinct FirstName From Employeers
 
Select * From  Employeers
Order  by  FirstName

Select * From Employeers
Order by GenderId Desc

Select LastName+FirstName as FullName from Employeers
order by FullName

Select * from Employeers
Order by Salary,Firstname

Select Top 2  *from Employeers 








