Select SSNID, BookTitle, Catergory,BID,IssueDuration
from Books
inner join BorrowedBook
on Books.SSNID=BorrowedBook.SSN
--Display the bookid, title, category, id of the 
--person who borrowed it and how long they 
--borrowed it from the joined tables of
--Books and Borrowed Books

Select SSNID, BookTitle, Catergory,BID,IssueDuration
from Books
left outer join BorrowedBook
on Books.SSNID=BorrowedBook.SSN
--Display the bookid, title, category, id of the 
--person who borrowed it and how long they 
--borrowed it from the joined tables of
--Books and Borrowed Books

Select Copies, AVG(Copies) as AverageCopy
from Books
join BorrowedBook
on BorrowedBook.SSN=Books.SSNID
Group by Copies
having Avg(Copies)>=3
order by Copies
--Demonstrating the use of the 
--having clause on a aggregate function

Select SSN,ID, Firstname, Lastname, Fine
from Borrowee
inner join BorrowedBook
on Borrowee.ID=BorrowedBook.BID
--Display all the SSN number, ID, name 
--fine attracted from the joined tables
--of Borrowee and Borrowed book table

Select SSN,ID, Firstname, Lastname, Fine
from BorrowedBook
right outer join Borrowee
on Borrowee.ID=BorrowedBook.BID
--Display all the SSN number, ID, name 
--fine attracted from the joined tables
--of Borrowee and Borrowed book table 

Insert into Borrowee values
(15621,'Andrea ','Warner','Student'),
(15622,'Filip','Meza','Student'),
(15623,'Joanna','Hudson','Student'),
(15624,'Ashley','Reeves','Teacher'),
(15625,'Yaseen','Mahoney','Student'),
(15626,'Carlos ','Bennett','Teacher'),
(15627,'Malik','Gentry','Student'),
(15628,'Faizan','Osborne','Teacher'),
(15629,'Ida','Bryan','Teacher'),
(15630,'Harriett','Chase','Student')
--Adding additional students/teachers
--who have not borrowed books

Select Fine, AVG(Fine) as AverageFine
from BorrowedBook
join Borrowee
on BorrowedBook.BID=Borrowee.ID
Group by Fine
having Avg(Fine)>=100
order by Fine
--Demonstrating the use of the 
--having clause on a aggregate function