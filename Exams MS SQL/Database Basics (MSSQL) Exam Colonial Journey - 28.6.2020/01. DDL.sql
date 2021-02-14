create table Planets
(Id int primary key identity,
[Name] varchar(30) not null)

create table Spaceports
(Id int primary key identity,
[Name] varchar(50) not null,
PlanetId int not null foreign key references Planets(Id))

create table Spaceships
(Id int primary key identity,
[Name] varchar(50) not null,
Manufacturer varchar(30) not null,
LightSpeedRate int default 0)

create table Colonists
(Id int primary key identity,
FirstName varchar(20) not null,
LastName varchar(20) not null,
Ucn varchar(10) not null unique,
BirthDate date not null)

create table Journeys
(Id int primary key identity,
JourneyStart datetime not null,
JourneyEnd datetime not null,
Purpose varchar(11) check(Purpose in ('Medical', 'Technical', 'Educational', 'Military')),
DestinationSpaceportId int not null foreign key references Spaceports(Id),
SpaceshipId int not null foreign key references Spaceships(Id))

create table TravelCards
(Id int primary key identity,
CardNumber varchar(10) not null check(len(CardNumber) = 10) unique,
JobDuringJourney varchar(8) check(JobDuringJourney in ('Pilot', 'Engineer', 'Trooper', 'Cleaner', 'Cook')),
ColonistId int not null foreign key references Colonists(Id),
JourneyId int not null foreign key references Journeys(Id))
