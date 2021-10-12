use Libreria;
go

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
	@Title varchar(50),
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

	WHERE Title = @Title;
GO

CREATE OR ALTER PROCEDURE DeleteBook
( 
	@ID int
)
AS

	DELETE FROM dbo.Book
	WHERE IdBook = @ID;
GO