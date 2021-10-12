use Libreria;
go

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