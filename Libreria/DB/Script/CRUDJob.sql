use Libreria;
go

CREATE PROCEDURE InsertJob
(
	@Roles varchar(50)
)
AS

	INSERT INTO dbo.Job (Roles)
	  VALUES
			 (@Roles);
GO

CREATE PROCEDURE SelectJob 
(
	@ID int
)
AS

	Select * from dbo.Job WHERE IdJob = @ID;
GO

CREATE PROCEDURE UpdateJob 
(
	@Roles varchar(50),
	@NewRoles varchar(50)
)
AS

	UPDATE dbo.Job
	SET Roles = @NewRoles
	WHERE Roles = @Roles;
GO

CREATE PROCEDURE DeleteJob
( 
	@ID int
)
AS

	DELETE FROM dbo.Job
	WHERE IdJob = @ID;
GO