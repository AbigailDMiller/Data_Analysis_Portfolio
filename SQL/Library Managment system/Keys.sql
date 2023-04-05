Use LibrarymanagmentSystem

Alter Table Books
Alter Column SSNID int NOT NULL

Alter Table Borrowee
Alter Column ID int NOT NULL

Alter Table Books
Add Primary Key(SSNID)

Alter Table Borrowee
Add Primary Key(ID)

Alter Table BorrowedBook
Add Foreign Key (SSN) references Books(SSNID)

Alter Table BorrowedBook
Add Foreign key (BID) references Borrowee(ID)