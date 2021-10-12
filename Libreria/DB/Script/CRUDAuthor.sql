use Libreria;
go

CREATE PROCEDURE InsertAuthor
(
	@Name varchar(50), 
	@Lastname varchar(50)
)
AS

	INSERT INTO dbo.Author (Name,Lastname)
	  VALUES
			 (@Name,@Lastname);
GO

CREATE PROCEDURE SelectAuthor 
(
	@Name varchar(50)
)
AS

	Select * from dbo.Author WHERE Name = @Name;
GO

CREATE PROCEDURE UpdateAuthor 
(
	@Name varchar(50),
	@NewName varchar(50),
	@Lastname varchar(50)
)
AS

	UPDATE dbo.Author
	SET Name = @NewName,
		Lastname = @Lastname
	WHERE Name = @Name;
GO

CREATE PROCEDURE DeleteAuthor 
(
	@ID int
)
AS

	DELETE FROM dbo.Author
	WHERE IdAuthor = @ID;
GO