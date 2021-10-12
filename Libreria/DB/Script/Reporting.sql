use Libreria;
go

--Ver Libros con los datos en lugar de indices--
SELECT	B.IdBook,
		B.Title,
		P.Name AS Publisher,
		A.Name+' '+A.Lastname AS Author,
		B.Pages FROM Book B
		INNER JOIN Publisher P
			ON B.Publisher = P.IdPublisher
		INNER JOIN Author A
			ON B.Author = A.IdAuthor;
GO


--Ver numero de libros publicados por Author (Mayor a Menor)--
SELECT	Author.Name+' '+Author.Lastname as Author, 
		COUNT(Book.IdBook) AS #ofBooks
		FROM Book
		INNER JOIN Author
			ON Book.Author = Author.IdAuthor
		GROUP BY Name,Lastname
		ORDER BY COUNT(Book.IdBook) DESC;
GO

--Ver numero de libros publicados por Editorial (Mayor a Menor)--
SELECT	P.Name AS Publisher, 
		COUNT(B.IdBook) AS #ofBooks
		FROM Book B
		INNER JOIN Publisher P
			ON B.Publisher = P.IdPublisher
		GROUP BY Name
		ORDER BY COUNT(B.IdBook) DESC;
GO

--Ver numero de libros publicados por Direccion (Mayor a Menor)--
SELECT	P.Address AS AddressofBooks, 
		COUNT(B.IdBook) AS #ofBooks
		FROM Book B
		INNER JOIN Publisher P
			ON B.Publisher = P.IdPublisher
		GROUP BY P.Address
		ORDER BY COUNT(B.IdBook) DESC;
GO

--Cantidad de Lectores por Autor(Menor a Mayor)--
SELECT	A.Name+' '+A.Lastname as Author,  
		COUNT(Distinct R.IdReader) AS Readers
		FROM Reader R
		INNER JOIN BookLending BL
			ON BL.Reader = R.IdReader
		INNER JOIN Book B
			ON BL.Book = B.IdBook
		INNER JOIN Author A
			ON B.Author = A.IdAuthor
		GROUP BY A.Name,A.Lastname
		ORDER BY COUNT(Distinct R.IdReader) ASC;
GO

--Cantidad de Lectores por Editorial(Menor a Mayor)--
SELECT	P.Name AS Publisher, 
		COUNT(Distinct R.IdReader) AS Readers
		FROM Reader R
		INNER JOIN BookLending BL
			ON BL.Reader = R.IdReader
		INNER JOIN Book B
			ON BL.Book = B.IdBook
		INNER JOIN Publisher P
			ON B.Publisher = P.IdPublisher
		GROUP BY P.Name
		ORDER BY COUNT(Distinct R.IdReader) ASC;
GO

--Cantidad de Lectores por Libro (Mayor a Menor)--
SELECT	B.Title AS Book,
		COUNT(Distinct R.IdReader) AS Readers
		FROM Reader R
		INNER JOIN BookLending BL
			ON BL.Reader = R.IdReader
		INNER JOIN Book B
			ON BL.Book = B.IdBook
		GROUP BY B.Title
		ORDER BY COUNT(R.IdReader) DESC;
GO

--Cantidad de Paginas leidas por Lector--

SELECT	R.Name+' '+R.Lastname AS Reader,
		SUM(B.Pages) AS PagesRead
		FROM BookLending BL
		INNER JOIN Book B
			ON BL.Book = B.IdBook
		INNER JOIN Reader R
			ON BL.Reader = R.IdReader
		GROUP BY R.Name,R.Lastname
		ORDER BY SUM(B.Pages) DESC;
GO

--Informacion del Libros por Lector--
SELECT	
		R.Name+' '+R.Lastname AS Reader, 
		A.Name+' '+A.Lastname AS Author,
		B.Title AS Book
		FROM Reader R
		INNER JOIN BookLending BL
			ON BL.Reader = R.IdReader
		INNER JOIN Book B
			ON BL.Book = B.IdBook
		INNER JOIN Author A
			ON B.Author = A.IdAuthor
		WHERE R.IdReader = 1
		GROUP BY B.Title,R.Name,R.Lastname,Book,A.Name,A.Lastname;
GO

--Ver Trabajadores con los datos en lugar de indices--
SELECT	S.IdStaff,
		S.Name+' '+S.Lastname AS Employee,
		J.Roles AS Occupation FROM Staff S
		INNER JOIN Job J
			ON S.Occupation = J.IdJob;
GO

--Ver numero de trabajadores por rol en la libreria--
SELECT	J.Roles AS Occupation,
		COUNT(Distinct S.IdStaff) NumofEmployees
		FROM Staff S
		INNER JOIN Job J
			ON S.Occupation = J.IdJob
		GROUP BY J.Roles;
GO

--Ver Prestamos con nombres de lectores y empleados que dieron el prestamo--
SELECT	BL.IdLending,
		B.Title AS Book,
		R.IdReader AS ReaderId,
		R.Name+' '+R.Lastname AS Reader,
		S.IdStaff AS EmployeeId,
		S.Name+' '+S.Lastname AS Employee,
		BL.IniDate,
		BL.EndDate FROM BookLending BL
		INNER JOIN Book B
			ON BL.Book = B.IdBook
		INNER JOIN Reader R
			ON BL.Reader = R.IdReader
		INNER JOIN Staff S
			ON BL.Employee = S.IdStaff;
GO

--Lectores por direccion--
SELECT	R.Address,
		COUNT(Distinct BL.Reader) AS Readers
		FROM BookLending BL
		INNER JOIN Reader R
			ON BL.Reader = R.IdReader
		GROUP BY R.Address
		ORDER BY COUNT(BL.Reader) DESC;
GO

--Numero de prestamos por empleado--
SELECT	S.Name+' '+S.Lastname AS Employee,
		COUNT(Distinct BL.IdLending) AS Loans
		FROM BookLending BL
		INNER JOIN  Staff S
			ON BL.Employee = S.IdStaff
		GROUP BY S.Name,S.Lastname;
GO


--Prestamos de libro que tienen una fecha limite de entrega entre fechas '2021-9-21' y '2021-9-28'--
SELECT	
		B.Title AS Book,
		R.Name+' '+R.Lastname AS Reader,
		BL.IniDate,
		BL.EndDate FROM BookLending BL
		INNER JOIN Book B
			ON BL.Book = B.IdBook
		INNER JOIN Reader R
			ON BL.Reader = R.IdReader
		INNER JOIN Staff S
			ON BL.Employee = S.IdStaff
		WHERE BL.EndDate BETWEEN '2021-9-21' AND '2021-9-28';
GO

--Ver Autores--
SELECT * FROM Author;
GO

--Ver Editoriales--
SELECT * FROM Publisher;
GO

--Ver Trabajos--
SELECT * FROM Job;
GO

--Ver Trabajadores--
SELECT * FROM Staff
GO

--Ver Libros--
SELECT * FROM Book
GO

--Ver Lectores--
SELECT * FROM Reader
GO

--Ver Prestamos--
SELECT * FROM BookLending
GO