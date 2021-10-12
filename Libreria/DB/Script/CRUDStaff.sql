use Libreria;
go

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