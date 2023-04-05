--The following code snippet represents different queries 
--ran on all tables in the Library Management System

Select *
from LibrarymanagmentSystem.dbo.Books
where Catergory='Horror'
--Show all information from the book table 
--where catergory is horror

Select Catergory,Count(Catergory) as CountRomance
from LibrarymanagmentSystem.dbo.Books
group by Catergory
--Count the different catergories from the book
--table

Select SSNID, BookTitle
from LibrarymanagmentSystem.dbo.Books
where Author
like '%a%'
--Only show the SSn number and Title 
--where there is a in the Author's name

Select *
from LibrarymanagmentSystem.dbo.BorrowedBook
where Fine>=250
--Show all column from the Borrowed Book
--table where the fine is greater than and
--equal to 250

Select AVG(Fine) as AverageFine
from LibrarymanagmentSystem.dbo.BorrowedBook
--Perform the Average for the fine column
--for the Borrowed Book

Select*
from LibrarymanagmentSystem.dbo.BorrowedBook
where Fine is NULL
--Displays all records in Borrowed Book 
--table who does not have a fine

Select*
from LibrarymanagmentSystem.dbo.BorrowedBook
order by SSN desc
--Display all column from Borrowed book 
--but arrange them by the SSn number in
--descending order

Select Occupation, COUNT(Occupation) as CountOccuption
from LibrarymanagmentSystem.dbo.Borrowee
group by Occupation
--Count the number of occuptions in the borrowee
--table 

Select *
from LibrarymanagmentSystem.dbo.Borrowee
where Firstname
like 'k%'
--Display all colums from the Borrowee table 
--who's firstname begins with k 

Select top 10*
from LibrarymanagmentSystem.dbo.Borrowee
--Select the top 10 records from the borrowee 
--table 