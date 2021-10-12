use Libreria;
go

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
	@Roles varchar(50),
	@NewRoles varchar(50)
)
AS

	UPDATE dbo.Job
	SET Roles = @NewRoles
	WHERE Roles = @Roles;
GO

CREATE OR ALTER PROCEDURE DeleteJob
( 
	@ID int
)
AS

	DELETE FROM dbo.Job
	WHERE IdJob = @ID;
GO