use Libreria;
go

CREATE PROCEDURE InsertPublisher
(
	@Name varchar(50),
	@Address varchar(50)
)
AS

	INSERT INTO dbo.Publisher (Name,Address)
	  VALUES
			 (@Name,@Address);
GO

CREATE PROCEDURE SelectPublisher 
(
	@Name varchar(50)
)
AS

	Select * from dbo.Publisher WHERE Name = @Name;
GO

CREATE PROCEDURE UpdatePublisher 
(
	@Name varchar(50),
	@NewName varchar(50),
	@Address varchar(50)
)
AS

	UPDATE dbo.Publisher
	SET Name = @NewName,
		Address = @Address
	WHERE Name = @Name;
GO

CREATE PROCEDURE DeletePublisher
( 
	@ID int
)
AS

	DELETE FROM dbo.Publisher
	WHERE IdPublisher = @ID;
GO