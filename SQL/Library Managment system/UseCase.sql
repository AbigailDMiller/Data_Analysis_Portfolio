Select ID, Firstname, Lastname,SSN,
Case
	when SSN is NULL then 'No Book borrowed'
	else 'Book Borrowed'
End
from Borrowee
full join BorrowedBook
on Borrowee.ID=BorrowedBook.BID

--Display only the ID, firstname, lastname
--SSN number, whether or not they borrow
--by joining the Borrowed and Borrowee 
--table 


Select BookTitle, Catergory,
Case
	when SSN is NULL then 'Not Lend'
	else 'Lend'
End
from Books
full join BorrowedBook
on Books.SSNID=BorrowedBook.SSN

--Display only the Book Title, Category
--whether or not the book was lend
--by joining the Book and Borrowed Book
--table 
