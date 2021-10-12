drop database if exists Libreria;
go
create database Libreria;
go
use Libreria;
go

create table Author(
	IdAuthor int identity (1,1) primary key,
	Name varchar(50),
	Lastname varchar(50)
);



create table Publisher(
	IdPublisher int identity (1,1) primary key,
	Name varchar(50),
	Address varchar(50)
);


create table Book(
	IdBook int identity (1,1) primary key,
	Title varchar(50),
	Publisher int,
	Author int,
	Pages int,
	CONSTRAINT fk_Author FOREIGN KEY (Author) REFERENCES Author (IdAuthor),
	CONSTRAINT fk_Publisher FOREIGN KEY (Publisher) REFERENCES Publisher (IdPublisher)
);

create table Reader(
	IdReader int identity (1,1) primary key,
	Name varchar(50),
	Lastname varchar(50),
	Address varchar(50),
	Phone varchar(50),
	Email varchar(50)
);

create table Job(
	IdJob int identity (1,1) primary key,
	Roles varchar(50),
);

create table Staff(
	IdStaff int identity (1,1) primary key,
	Name varchar(50),
	Lastname varchar(50),
	Occupation int,
	CONSTRAINT fk_Job FOREIGN KEY (Occupation) REFERENCES Job (IdJob)
);


create table BookLending(
	IdLending int identity (1,1) primary key,
	Book int,
	Reader int,
	Employee int,
	IniDate date,
	EndDate date,
	CONSTRAINT fk_BookLending FOREIGN KEY (Book) REFERENCES Book (IdBook),
	CONSTRAINT fk_User FOREIGN KEY (Reader) REFERENCES Reader (IdReader),
	CONSTRAINT fk_Employee FOREIGN KEY (Employee) REFERENCES Staff (IdStaff)
);