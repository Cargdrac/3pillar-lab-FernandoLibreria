use FernandoLibreria;
go

EXEC InsertAuthor @Name = 'J.K', @Lastname = 'Rowling' ;
EXEC UpdateAuthor @Name = 'Boris', @NewName = 'Zeus', @Lastname = 'Cerna';
EXEC SelectAuthor @Name = 'Pablo';
EXEC DeleteAuthor @ID = 18;
Select * from dbo.Author;

EXEC InsertPublisher @Name = 'Jarocha publicaciones', @Address = 'Veracruz' ;
EXEC UpdatePublisher @Name = 'Otro Tipo', @NewName = 'Publicaciones Disintas', @Address = 'Veracruz';
EXEC SelectPublisher @Name = 'Pablo';
EXEC DeletePublisher @ID = 14;
Select * from dbo.Publisher;

EXEC InsertBook @Title = 'Fishing Village', @Publisher = 2, @Author = 3, @Pages = 346 ;
EXEC UpdateBook @Title = 'Pedro Paramo', @NewTitle = 'Pedro Paramo y El Llano en llamas', @Publisher = 4, @Author = 5, @Pages = 123 ;
EXEC SelectBook @Title = 'Fishing Village';
EXEC DeleteBook @ID = 33;
Select * from dbo.Book;

EXEC InsertReader @Name = 'Fernando',@Lastname = 'Cerna',@Address = 'Cordoba',@Phone = '2717298078',@Email = 'ferceperez@gmail.com';
EXEC UpdateReader @ID = 2,@Name = 'Abel',@Lastname = 'Gonzales',@Address = 'Puebla',@Phone = '123123133',@Email = 'Agonzales@correo.com';
EXEC SelectReader @ID = 23;
EXEC DeleteReader @ID = 23;
Select * from dbo.Reader;

EXEC InsertJob @Roles = 'Becario';
EXEC UpdateJob @Roles = 'Maintenance', @NewRoles = 'Cleaning';
EXEC SelectJob @ID = 7;
EXEC DeleteJob @ID = 7;
Select * from dbo.Job;

EXEC InsertStaff @Name = 'Mauricio', @Lastname = 'Cerna', @Occupation = 2;
EXEC UpdateStaff @ID = 5 , @Name = 'Marcos', @Lastname = 'Sydney', @Occupation = 1;
EXEC SelectStaff @ID = 17;
EXEC DeleteStaff @ID = 17;
Select * from dbo.Staff;

EXEC InsertBookLending @Book = 2,@Reader = 3,@Employee = 4,@IniDate = '2021-9-14' ,@EndDate = '2021-9-14';
EXEC UpdateBookLending @ID = 9, @Book = 6,@Reader = 2,@Employee = 2,@IniDate = '2021-9-14' ,@EndDate = '2021-9-20';
EXEC SelectBookLending @ID = 22;
EXEC DeleteBookLending @ID = 15;
Select * from dbo.BookLending;