use FernandoLibreria;
go

-- Stored Procedures --
-- All Stored Procedures have the same Structure, the only diferences are the parameters used --

-- INSERT --
-- This SP receives a number of parameters equal to the number of columns in the table, then inserts the data --

-- SELECT --
-- This SP receives an ID (Primary key of the table) then searches for the Id and return the record --

-- UPDATE --
-- This SP receives an ID (Primary key of the table), and also receives a number of parameters equal to the number of columns in the table, then searches for the Id, then updates the record with the received data --

-- DELETE --
-- This SP receives an ID (Primary key of the table) then searches for the Id and deletes the record, but only if the record is not constraint by a relation with another table --


CREATE OR ALTER PROCEDURE InsertAuthor
(
	@Name varchar(50), 
	@Lastname varchar(50)
)
AS
	
	INSERT INTO dbo.Author (Name,Lastname)
	  VALUES
			 (@Name,@Lastname);
	
GO

CREATE OR ALTER PROCEDURE SelectAuthor 
(
	@ID int
)
AS

	Select * from dbo.Author WHERE IdAuthor = @ID;
GO

CREATE OR ALTER PROCEDURE UpdateAuthor 
(
	@ID int,
	@NewName varchar(50),
	@Lastname varchar(50)
)
AS
	
	UPDATE dbo.Author
	SET Name = @NewName,
		Lastname = @Lastname
	WHERE IdAuthor = @ID;
GO

CREATE OR ALTER PROCEDURE DeleteAuthor 
(
	@ID int
)
AS
	
	DELETE FROM dbo.Author
	WHERE IdAuthor = @ID;
GO

CREATE OR ALTER PROCEDURE InsertBook
(
	@Title varchar(50),
	@Publisher int,
	@Author int,
	@Pages int
)
AS
	
	INSERT INTO dbo.Book(Title, Author, Publisher,Pages)
     VALUES
           (@Title,@Publisher,@Author,@Pages)
GO

CREATE OR ALTER PROCEDURE SelectBook 
(
	@Title varchar(50)
)
AS

	Select * from dbo.Book WHERE Title = @Title;
GO

CREATE OR ALTER PROCEDURE UpdateBook 
(
	@ID int,
	@NewTitle varchar(50),
	@Publisher int,
	@Author int,
	@Pages int
)
AS
		
	UPDATE dbo.Book
	SET Title = @NewTitle,
		Publisher = @Publisher,
		Author = @Author,
		Pages = @Pages

	WHERE IdBook = @ID;
GO

CREATE OR ALTER PROCEDURE DeleteBook
( 
	@ID int
)
AS
	
	DELETE FROM dbo.Book
	WHERE IdBook = @ID;
GO

CREATE OR ALTER PROCEDURE InsertPublisher
(
	@Name varchar(50),
	@Address varchar(50)
)
AS

	INSERT INTO dbo.Publisher (Name,Address)
	  VALUES
			 (@Name,@Address);
GO

CREATE OR ALTER PROCEDURE SelectPublisher 
(
	@ID int
)
AS

	Select * from dbo.Publisher WHERE IdPublisher = @ID;
GO

CREATE OR ALTER PROCEDURE UpdatePublisher 
(
	@ID int,
	@NewName varchar(50),
	@Address varchar(50)
)
AS

	UPDATE dbo.Publisher
	SET Name = @NewName,
		Address = @Address
	WHERE IdPublisher = @ID;
GO

CREATE OR ALTER PROCEDURE DeletePublisher
( 
	@ID int
)
AS

	DELETE FROM dbo.Publisher
	WHERE IdPublisher = @ID;
GO

CREATE OR ALTER PROCEDURE InsertBookLending
(
	@Book int,
	@Reader int,
	@Employee int,
	@IniDate date,
	@EndDate date
)
AS

	INSERT INTO dbo.BookLending(Book,Reader,Employee,IniDate,EndDate)
     VALUES
           (@Book,@Reader,@Employee,@IniDate,@EndDate)
GO

CREATE OR ALTER PROCEDURE SelectBookLending 
(
	@ID int
)
AS

	Select * from dbo.BookLending WHERE IdLending = @ID;
GO

CREATE OR ALTER PROCEDURE UpdateBookLending 
(
	@ID int,
	@Book int,
	@Reader int,
	@Employee int,
	@IniDate date,
	@EndDate date
)
AS

	UPDATE dbo.BookLending
	SET Book = @Book,
		Reader = @Reader,
		Employee = @Employee,
		IniDate = @IniDate,
		EndDate = @EndDate

	WHERE IdLending = @ID;
GO

CREATE OR ALTER PROCEDURE DeleteBookLending
( 
	@ID int
)
AS

	DELETE FROM dbo.BookLending
	WHERE IdLending = @ID;
GO

CREATE OR ALTER PROCEDURE InsertJob
(
	@Roles varchar(50)
)
AS

	INSERT INTO dbo.Job (Roles)
	  VALUES
			 (@Roles);
GO

CREATE OR ALTER PROCEDURE SelectJob 
(
	@ID int
)
AS

	Select * from dbo.Job WHERE IdJob = @ID;
GO

CREATE OR ALTER PROCEDURE UpdateJob 
(
	@ID int,
	@NewRoles varchar(50)
)
AS

	UPDATE dbo.Job
	SET Roles = @NewRoles
	WHERE IdJob = @ID;
GO

CREATE OR ALTER PROCEDURE DeleteJob
( 
	@ID int
)
AS

	DELETE FROM dbo.Job
	WHERE IdJob = @ID;
GO

CREATE OR ALTER PROCEDURE InsertReader
(
	@Name varchar(50),
	@Lastname varchar(50),
	@Address varchar(50),
	@Phone varchar(50),
	@Email varchar(50)
)
AS

	INSERT INTO dbo.Reader(Name,Lastname,Address,Phone,Email)
     VALUES
           (@Name,@Lastname,@Address,@Phone,@Email)
GO

CREATE OR ALTER PROCEDURE SelectReader 
(
	@ID int
)
AS

	Select * from dbo.Reader WHERE IdReader = @ID;
GO

CREATE OR ALTER PROCEDURE UpdateReader 
(
	@ID int,
	@Name varchar(50),
	@Lastname varchar(50),
	@Address varchar(50),
	@Phone varchar(50),
	@Email varchar(50)
)
AS

	UPDATE dbo.Reader
	SET Name = @Name,
		Lastname = @Lastname,
		Address = @Address,
		Phone = @Phone,
		Email = @Email

	WHERE IdReader = @ID;
GO

CREATE OR ALTER PROCEDURE DeleteReader
( 
	@ID int
)
AS

	DELETE FROM dbo.Reader
	WHERE IdReader = @ID;
GO

CREATE OR ALTER PROCEDURE InsertStaff
(
	@Name varchar(50), 
	@Lastname varchar(50),
	@Occupation varchar(50)
)
AS

	INSERT INTO dbo.Staff (Name,Lastname,Occupation)
	  VALUES
			 (@Name,@Lastname,@Occupation);
GO

CREATE OR ALTER PROCEDURE SelectStaff 
(
	@ID int
)
AS

	Select * from dbo.Staff WHERE IdStaff = @ID;
GO

CREATE OR ALTER PROCEDURE UpdateStaff 
(
	@ID int,
	@Name varchar(50),
	@Lastname varchar(50),
	@Occupation varchar(50)
)
AS

	UPDATE dbo.Staff
	SET Name = @Name,
		Lastname = @Lastname,
		Occupation = @Occupation
	WHERE IdStaff = @ID;
GO

CREATE OR ALTER PROCEDURE DeleteStaff 
(
	@ID int
)
AS

	DELETE FROM dbo.Staff
	WHERE IdStaff = @ID;
GO
