use Libreria;
go
INSERT INTO dbo.Author (Name,Lastname)
     VALUES
           ('Gabriel','Garcia'),
			('Juan','Rulfo'),
			('Boris','Strugatsky'),
			('Dante', 'Alligueri'),
			('Pablo','Neruda'),
			('Charles','Dickens'),
			('Oscar','Wilde'),
			('Julio','Cortazar'),
			('Franz','Kafka'),
			('Octavio','Paz'),
			('Mark','Twain'),
			('George','Orwell'),
			('J.R.R','Tolkien'),
			('Mario','Benedetti'),
			('Lewis','Caroll'),
			('Mario','Vargas'),
			('Agatha','Christie');
GO

INSERT INTO dbo.Publisher (Name,Address)
     VALUES
           ('Alias Editorial','CDMX'),
			('AM Editores','Miguel Hidalgo'),
			('Caligrama Editores','Alvaro Obregon'),
			('Ediciones Naranjo', 'San Jeronimo'),
			('Ediciones Era','Cuauhtemoc'),
			('CIDCLI','Coyoacan'),
			('Otro Tipo','Xochimilco'),
			('Dragon','Benito Juarez'),
			('Lectorum','Cuauhtemoc'),
			('Pax','Benito Juarez'),
			('Praxis','Cuauhtemoc'),
			('Santillana','Benito Juarez'),
			('Ficticia','Alvaro Obregon');
GO

INSERT INTO dbo.Book(Title, Author, Publisher,Pages)
     VALUES
           ('100 años de soledad',1,1,123),
		   ('El amor en tiempos de cólera',1,5,746),
		   ('Noticia de un secuestro',1,2,94),
		   ('Cronica de una Muerte Anunciada',1,3,354),
		   ('Noticia de un secuestro',1,1,102),
		   ('Pedro Paramo',2,2,203),
		   ('El llano en llamas',2,3,945),
		   ('Roadside Picnic',3,3,364),
		   ('Divina Comedia',4,2,800),
		   ('Veinte Poemas',5,5,120),
		   ('Canto general',5,1,200),
		   ('Los versos del Capitan',5,10,322),
		   ('Oliver Twist',6,5,185),
		   ('Dorian Grey',7,10,245),
		   ('Cuento en Navidad',6,2,231),
		   ('Rayuela',8,7,654),
		   ('Metamorfosis',9,8,100),
		   ('El castillo',9,2,59),
		   ('La condena',9,10,232),
		   ('El laberinto de la soledad',10,9,453),
		   ('Tom Sawyer',11,10,111),
		   ('Huckleberry Finn',11,3,561),
		   ('Rebelion en la granja',12,11,110),
		   ('1984',12,1,123),
		   ('El hobbit',13,12,456),
		   ('El Silmarillion',13,9,341),
		   ('El Senor de los anillos',13,5,150),
		   ('La Tregua',14,13,127),
		   ('Alicia en el pais de las maravillas',15,11,323),
		   ('La ciudad y los perros',16,11,211),
		   ('El hablador',16,9,199),
		   ('La casa Torcida',17,4,144);
GO



INSERT INTO dbo.Reader(Name,Lastname,Address,Phone,Email)
     VALUES
           ('Juan','Garcia','Miguel Hidalgo','123456789','gabrielgarcia@correo.com'),
			('Raul','Rulfo','Xochimilco','234567891','RRulfo@correo.com'),
			('Igor','Vladimir','CDMX','345678912','IVlad@correo.com'),
			('Daniel', 'Aleman','Coyoacan','456789123','danielaleman@correo.com'),
			('Pablo','Alamo','Coyoacan','567891234','Palamo@correo.com'),
			('Carlos','Dickens','CDMX','678912345','CarlosD@correo.com'),
			('Oscar','Ramirez','Miguel Hidalgo','789123456','oscar.ramirez@correo.com'),
			('Julio','Gomez','Cuauhtemoc','891234567','julio.gomez@correo.com'),
			('Franco','Jimenez','Cuauhtemoc','912345678','franKJ@correo.com'),
			('Octavio','Bronca','CDMX','012345678','octavio.bronca@correo.com'),
			('Marco','Perez','San Jeronimo','1234567890','marco.perez@correo.com'),
			('Jorge','Fierro','Coyoacan','11111111111','JFFM@correo.com'),
			('Angel','Rivera','Cuauhtemoc','2222222222','angelrivera@correo.com'),
			('Raul','Romero','Coyoacan','333333333','raul.romero@correo.com'),
			('Rodrigo','Vazquez','Miguel Hidalgo','444444444','rodvaz@correo.com'),
			('Mario','Vargas','Xochimilco','5555555555','MVargas@correo.com'),
			('Ted','Nuggent','CDMX','12345123','tdng@correo.com'),
			('Kirk','Hammert','Coyoacan','271234565','kikHam@correo.com'),
			('Mario','Gomez','Xochimilco','8882323139','mgomez123@correo.com'),
			('Isaac','Vargas','Margarita','2222133123','112Isaaac@correo.com'),
			('Daniel','Morales','Fortin','271123564876','evanesce@correo.com'),
			('Santiago','Mireles','Pedregal','55536172393','bisty@correo.com'),
			('Miriam','Perez','CDMX','66666666666','mriamperez@correo.com');
GO

INSERT INTO dbo.Job(Roles)
	VALUES
		('Librarian'),
		('Manager'),
		('Maintenance'),
		('Receptionist'),
		('Security'),
		('Apprentice');
GO

INSERT INTO dbo.Staff(Name,Lastname,Occupation)
     VALUES
			('Diana','Cessa',1),
			('Andrea','Villegas',1),
			('Jeronimo','Krause',1),
			('Marco','Subizar',1),
			('Marcos','Perez',2),
			('Luis','Campollo',2),
			('Fermin','Zilli',3),
			('Alvaro','Martinez',3),
			('Fernando','Polo',3),
			('Saul','Encarnacion',4),
			('Jared','Mendoza',5),
			('Alfonso','Cabrera',5),
			('Azael','Ruiz',5),
			('Jonathan','Gomez',4),
			('Rosario','Lopez',6),
			('Karen','Benitez',6);
GO


INSERT INTO dbo.BookLending(Book,Reader,Employee,IniDate,EndDate)
     VALUES
            (1,1,1,'2021-9-14','2021-9-14'),
			(8,1,1,'2021-9-14','2021-9-14'),
			(2,1,1,'2021-9-14','2021-9-14'),
			(2,2,2,'2021-9-14','2021-9-15'),
			(10,2,3,'2021-9-14','2021-9-15'),
			(3,3,3,'2021-9-14','2021-9-16'),
			(4,4,5,'2021-9-14','2021-9-17'),
			(11,4,6,'2021-9-14','2021-9-17'),
			(5,5,6,'2021-9-14','2021-9-18'),
			(6,6,6,'2021-9-14','2021-9-19'),
			(7,7,6,'2021-9-14','2021-9-20'),
			(8,8,4,'2021-9-14','2021-9-21'),
			(4,8,1,'2021-9-14','2021-9-21'),
			(3,8,2,'2021-9-14','2021-9-21'),
			(9,9,1,'2021-9-14','2021-9-22'),
			(10,10,6,'2021-9-14','2021-9-23'),
			(11,11,6,'2021-9-14','2021-9-24'),
			(12,12,3,'2021-9-14','2021-9-25'),
			(13,13,1,'2021-9-14','2021-9-26'),
			(14,14,1,'2021-9-14','2021-9-27'),
			(15,15,1,'2021-9-14','2021-9-28');
GO