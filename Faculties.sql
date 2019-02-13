

Alter Database Store Modify Name= Faculties
use Faculties

Create Table Mathematics
(
  Id int Identity,
  FName NvarChar(50) Not Null,
  LName NvarChar(50) Not Null,
  MOG float Not Null,
  StudyYear int Not Null,
)
Create Table Mechanics
(
  Id int Identity,
  FName NvarChar(50) Not Null,
  LName NvarChar(50) Not Null,
  MOG float Not Null,
  StudyYear int Not Null,
)

Insert into Mathematics
values
('Karen','Grigoryan',17.5,4),
('Anna','Surenyan',14.7,3),
('Ruzanna','Aslanyan',19.5,2),
('Samvel','Harutyunyan',18.4,1),
('Anahit','Kirakosyan',14.7,1),
('Stepan','Shahverdyan',19.8,4)

Select *From Mathematics 
Where StudyYear IN (1,4)

Select*From Mathematics 
Where StudyYear Not In (2)

Select*From Mathematics 
Where MOG Between 14 and 18

Select *From Mathematics 
Where Mog Like '[^4]%'

Update Mathematics
Set LName='Soghomonyan'
Where LName='Grigoryan'


Update Mathematics
Set Mog =18
From(Select  Top 2 * from Mathematics Where MOG>14) as Selected
Where Selected.MOG>14

Delete Mathematics From
(Select Top 3 *From  Mathematics where StudyYear>2) As Selected
where Selected.StudyYear>3