Create Database Academy
use Academy
Create Table Groups(
Id int primary key identity,
[Name] nvarchar(255)
)
Create Table Students(
Id int primary key identity,
[Name] nvarchar(255),
[Surname] nvarchar(255),
GroupId int references Groups
)

Insert  into  Groups(Name) Values
('P224'),
('P124'),
('P221')

Insert Into Students(Name,Surname,GroupId.Grade) values

('Metin1', 'agayev1', 1,60),
('Metin2','agayev2', 3,80),
('Metin3','agayev3', 3,100),
('Metin4','agayev4', 3,20)

Alter Table Students add
Grade int 

Alter Table Students add
Surname nvarchar(255) 

Select * From Students inner  join Groups g on g.Id=GroupId where g.Name='P224'
select g.Name, Count(GroupId) as [Say] from Students inner  join Groups g on g.Id=GroupId group by g.Name

Create View usv_info
as
Select s.Name, g.Name as[groupName],s.Surname,s.Grade from  Students s inner join Groups g on g.Id=GroupId

Select  *from usv_info

Create Procedure usp_check
@Grade int
as 
begin 
select * from Students where Grade>@Grade
end 
exec usp_check 30

