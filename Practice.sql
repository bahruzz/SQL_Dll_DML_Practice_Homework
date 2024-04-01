create table Groups(
 [Id] int,
 [Name] nvarchar
)

create table Students(

  [Id] int,
  [Name] nvarchar(50),
  [Surname] nvarchar(50),
  [Age] int



)


drop table Groups

alter table Students
add [Adress] nvarchar(200)

alter table Students
drop column [Adress]

EXEC sp_rename Students,MyStudents

EXEC sp_rename MyStudents,Students

EXEC sp_rename 'Students.Surname',Lastname

EXEC sp_rename 'Students.Lastname',Surname


select * from Students

insert into Students([id],[Name],[Surname],[Age])
values(1,'Ilqar','Shiriyev',26),
      (2,'Reshad','Agayev',21),
      (3,'Kamran','Muradov',24),
      (4,'Hacixan','Hacixanov',19),
      (5,'Zeygem','Ashurov',39)


delete from Students where [Id]=2

insert into Students([id],[Name],[Surname],[Age])
values(6,'Behruz','Aliyev',37)

select * from Students

update Students
set [Age]=25
where [Id]=4


select [Name],[Surname] from Students

select [Age] from Students

select [Age] as 'Student age' from Students

select Count(*)as 'Student count' from Students

select AVG ([Age]) from Students

select Sum ([Age]) from Students

select Min ([Age])as 'Student Min age' from Students

select Max([Age])as 'Student Max age' from Students

select * from Students where [id]=3

select Count(*) from Students where [id]>3

select * from Students where [id]>2 and [Id]<5

select * from Students where [Age] between 25 and 39

select * from Students where [Name] like '%s%'

select * from Students where [Name] like '%r'

select * from Students where [Name] like 'r%'

select * from Students where [Age]=(select Min(Age) from Students)

DECLARE @age int
SET @age = (select Min(Age) from Students)
select * from Students where [Age]=@age

SELECT * FROM Students
ORDER BY [Age]

SELECT * FROM Students
ORDER BY [Age] desc

DECLARE @resultName nvarchar(50)
SET @resultName = (select [Name] from Students where [Id]=3)
select SUBSTRING(@resultName,1,3) AS Kamran;

select LEN ([Name]) from Students where [Id]=3

select SUBSTRING ([Name],1,3) from Students

create table Employees(
[Id] int primary key identity(1,1),
[Name] nvarchar(50) not null,
[Surname] nvarchar(50) default 'XXX',
[Age] int check (Age>=18),
[Email] nvarchar(100) unique,

)

insert into Employees([Name],[Surname],[Age],[Email])
values('Fatime','Qayxanova',22,'fatime@gmail.com')

select * from Employees


insert into Employees([Name],[Surname],[Age],[Email])
values('Afide','Veliyeva',38,'afide@gmail.com')

insert into Employees([Name],[Age],[Email])
values('Nurlan',22,'nurlan@gmail.com')

insert into Employees([Name],[Age],[Email])
values('Kamran',24,'kamran@gmail.com')

insert into Employees([Name],[Surname],[Age],[Email])
values('Hacixan','Hacixanov',19,'hacixan@gmail.com')
