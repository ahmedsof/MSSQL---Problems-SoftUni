create table Users
(Id int primary key identity,
Username varchar(30) not null,
[Password] varchar(30) not null,
Email varchar(50) not null)

create table Repositories
(Id int primary key identity,
[Name] varchar(50) not null)

create table RepositoriesContributors
(RepositoryId int foreign key references Repositories(Id) not null,
ContributorId int foreign key references Users(Id) not null,
primary key (RepositoryId, ContributorId))

create table Issues
(Id int primary key identity,
Title varchar(255) not null,
IssueStatus char(6) not null,
RepositoryId int not null foreign key references Repositories(Id),
AssigneeId int not null foreign key references Users(Id))

create table Commits
(Id int primary key identity,
[Message] varchar(255) not null,
IssueId int foreign key references Issues(Id),
RepositoryId int not null foreign key references Repositories(Id),
ContributorId int not null foreign key references Users(Id))

create table Files
(Id int primary key identity,
[Name] varchar(100) not null,
Size decimal(15,2) not null,
ParentId int foreign key references Files(Id),
CommitId int not null foreign key references Commits(Id))