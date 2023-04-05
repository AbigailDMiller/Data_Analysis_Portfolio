Update Books
Set Copies= NULL
where BookID=18911
--Set all the cnumber of copies of each 
--book with the ID number of 18911 to 
--NUll

Select SSN,BookTitle,Catergory,
Count(Catergory) over (Partition by BookTitle) as TotalBooks
from LibrarymanagmentSystem.dbo.Books
join LibrarymanagmentSystem.dbo.BorrowedBook
on Books.SSNID=BorrowedBook.SSN

--Display the range of records that are used 
--for each group within the function

Select Catergory, COUNT(Catergory)
from LibrarymanagmentSystem.dbo.Books
join LibrarymanagmentSystem.dbo.BorrowedBook
on Books.SSNID=BorrowedBook.SSN
group by(Catergory)

Select Firstname,Lastname, SSN,Occupation,
Count(Occupation) over(Partition by SSN) as TotalOccupation
from Borrowee
join BorrowedBook
on Borrowee.ID=BorrowedBook.BID
--Display the range of records that are used 
--for each group within the function

Select Occupation, Count(Occupation) as TotalOccupation
from Borrowee
join BorrowedBook
on Borrowee.ID=BorrowedBook.BID
group by Occupation

