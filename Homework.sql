create table Teachers(
[Id] int primary key identity(1,1),
[Name] nvarchar(50) not null,
[Surname] nvarchar(50) default 'XXX',
[Age] int check (Age>=18),
[Email] nvarchar(100) unique,

)

create table Students(
[Id] int primary key identity(1,1),
[FullName] nvarchar(50) not null,
[Age] int check (Age>=18),
[Adress] nvarchar(100) ,

)

insert into Teachers([Name],[Surname],[Age],[Email])
values('Ulvi','Mecidzade',28,'ulvi@gmail.com')


select * from Teachers


insert into Students([FullName],[Age],[Adress])
values('Fizuli Qurbanov',23,'Gence')

select * from Students

select Count(*)as 'Student count' from Students

select [Name],[Surname] from  Teachers where [Age]>20

select * from Teachers where [Email] like '%c%'

