use Libreria;
go

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