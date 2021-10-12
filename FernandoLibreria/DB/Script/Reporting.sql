use FernandoLibreria;
go


-- VIEW BookData -- 
-- It shows the Book table but with a more user friendly representation for the user -- 
CREATE OR ALTER VIEW BookData AS
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

-- Usage for the BookData View --
SELECT * FROM BookData;

-- Shows the number of books published by Author in DESC Order --
SELECT	Author.Name+' '+Author.Lastname as Author, 
		COUNT(Book.IdBook) AS #ofBooks
		FROM Book
		INNER JOIN Author
			ON Book.Author = Author.IdAuthor
		GROUP BY Name,Lastname
		ORDER BY COUNT(Book.IdBook) DESC;
GO

-- Shows the number of books published by Publisher in DESC Order --
SELECT	P.Name AS Publisher, 
		COUNT(B.IdBook) AS #ofBooks
		FROM Book B
		INNER JOIN Publisher P
			ON B.Publisher = P.IdPublisher
		GROUP BY Name
		ORDER BY COUNT(B.IdBook) DESC;
GO

-- Shows the number of books published in a certain Address --
SELECT	P.Address AS AddressofBooks, 
		COUNT(B.IdBook) AS #ofBooks
		FROM Book B
		INNER JOIN Publisher P
			ON B.Publisher = P.IdPublisher
		GROUP BY P.Address
		ORDER BY COUNT(B.IdBook) DESC;
GO

-- Shows the number of Readers by Author so you know the most popular Author for the readers --
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

-- Shows the number of Readers by Publisher so you know the most popular Publisher for the readers --
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

-- Shows the number of readers by book showing first the most popular book --
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

-- Shows the number of pages that a readers has to read in order to finish the books he got, so you can know wich readers are the most active --
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
-- Shows basic book info per Reader --
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

-- VIEW StaffData -- 
-- It shows the Staff table but with a more user friendly representation for the user -- 
CREATE OR ALTER VIEW StaffData AS
SELECT	S.IdStaff,
		S.Name+' '+S.Lastname AS Employee,
		J.Roles AS Occupation FROM Staff S
		INNER JOIN Job J
			ON S.Occupation = J.IdJob;
GO

-- Usage for the StaffData View --
SELECT * FROM StaffData;


-- Show the number of employees per job in the library--
SELECT	J.Roles AS Occupation,
		COUNT(Distinct S.IdStaff) NumofEmployees
		FROM Staff S
		INNER JOIN Job J
			ON S.Occupation = J.IdJob
		GROUP BY J.Roles;
GO

-- VIEW BookLendingData -- 
-- It shows the BookLendingData table but with a more user friendly representation for the user -- 
CREATE OR ALTER VIEW BookLendingData AS
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

-- Usage for the BookLendingData View --
SELECT * FROM BookLendingData;

-- Show the number of Readers by address -- 
SELECT	R.Address,
		COUNT(Distinct BL.Reader) AS Readers
		FROM BookLending BL
		INNER JOIN Reader R
			ON BL.Reader = R.IdReader
		GROUP BY R.Address
		ORDER BY COUNT(BL.Reader) DESC;
GO

-- Show the number of Books that the employee has loaned to a reader --
SELECT	S.Name+' '+S.Lastname AS Employee,
		COUNT(Distinct BL.IdLending) AS Loans
		FROM BookLending BL
		INNER JOIN  Staff S
			ON BL.Employee = S.IdStaff
		GROUP BY S.Name,S.Lastname;
GO


-- Book loans that have a delivery deadline between dates '2021-9-21' and '2021-9-28'--
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

--Show Author Table--
SELECT * FROM Author;
GO

--Show Publisher Table--
SELECT * FROM Publisher;
GO

--Show Job Table--
SELECT * FROM Job;
GO

--Show Staff Table--
SELECT * FROM Staff
GO

--Show Book Table--
SELECT * FROM Book
GO

--Show Reader Table--
SELECT * FROM Reader
GO

--Show BookLending Table--
SELECT * FROM BookLending
GO