Create database LibrarymanagmentSystem 
Use LibrarymanagmentSystem

--The following code represents a Library Managemnt System
--There are two tables: Books, Boorks Borrowed and who 
--borrowed the book.

Create Table Books
(BookID int,
BookTitle varchar(70),
Author varchar(50),
Catergory varchar(50),
Copies int,
SSNID int
)
--The book table takes in information about each book
--like author, id number, title,number of copies and id the 
--uniquely identifies each copy of the book


Create Table BorrowedBook
(BookID int,
BID int,
SSN int,
IssueDuration varchar(50),
Fine int
)

Alter table BorrowedBook
Drop column BookID

--The Borrowed Book table takes information such as
--the id of books, the SSN, the duration of issue 
--and the fine amount charged

Create Table Borrowee
(ID int,
Firstname varchar(50),
Lastname varchar(50),
Occupation varchar(50)
)
--The Borrowee table takes in the information 
--of the people who borrow the specify book
--such as they id number, name and the occuption
--i.e. teacher or student


Insert into Books values
(18805,'It Ends with Us','Collen Hover','Romance',3,10010),
(18805,'It Ends with Us','Collen Hover','Romance',NULL,10011),
(18805,'It Ends with Us','Collen Hover','Romance',NULL,10012),
(18806,'Reminders of Him','Collen Hover','Romance',4,10013),
(18806,'Reminders of Him','Collen Hover','Romance',NULL,10014),
(18806,'Reminders of Him','Collen Hover','Romance',NULL,10015),
(18806,'Reminders of Him','Collen Hover','Romance',NULL,10016),
(18807,'Twisted Love','Ana Huang','Romance',5,10017),
(18807,'Twisted Love','Ana Huang','Romance',NULL,10018),
(18807,'Twisted Love','Ana Huang','Romance',NULL,10019),
(18807,'Twisted Love','Ana Huang','Romance',NULL,10020),
(18807,'Twisted Love','Ana Huang','Romance',NULL,10021),
(18808,'The Duke and I','julia Quinn','Romance',3,10022),
(18808,'The Duke and I','julia Quinn','Romance',NULL,10023),
(18808,'The Duke and I','julia Quinn','Romance',NULL,10024),
(18900,'Haunting Adeline','Howard Carlton','Romance',5,10030),
(18900,'Haunting Adeline','Howard Carlton','Romance',NULL,10031),
(18900,'Haunting Adeline','Howard Carlton','Romance',NULL,10032),
(18900,'Haunting Adeline','Howard Carlton','Romance',NULL,10033),
(18900,'Haunting Adeline','Howard Carlton','Romance',NULL,10034),
(18901,'Ghost Story','Peter Straub','Horror',3,10035),
(18901,'Ghost Story','Peter Straub','Horror',NULL,10036),
(18901,'Ghost Story','Peter Straub','Horror',NULL,10037),
(18902,'House of Leaves','Mark Daniel','Horror',3,10038),
(18902,'House of Leaves','Mark Daniel','Horror',NULL,10039),
(18902,'House of Leaves','Mark Daniel','Horror',NULL,10040),
(18903,'Mexican-Gothic','Siliva Moreno','Horror',4,10041),
(18903,'Mexican-Gothic','Siliva Moreno','Horror',NULL,10042),
(18903,'Mexican-Gothic','Siliva Moreno','Horror',NULL,10043),
(18903,'Mexican-Gothic','Siliva Moreno','Horror',NULL,10044),
(18904,'The Hunger','Alma Katsu','Horror',5,10045),
(18904,'The Hunger','Alma Katsu','Horror',NULL,10046),
(18904,'The Hunger','Alma Katsu','Horror',NULL,10047),
(18904,'The Hunger','Alma Katsu','Horror',NULL,10048),
(18904,'The Hunger','Alma Katsu','Horror',NULL,10049),
(18905,'Beloved','Toni Morrison','Horror',2,10050),
(18905,'Beloved','Toni Morrison','Horror',NULL,10051),
(18906,'The Deep','Alma Katsu','Horror',4,10052),
(18906,'The Deep','Alma Katsu','Horror',NULL,10053),
(18906,'The Deep','Alma Katsu','Horror',NULL,10054),
(18906,'The Deep','Alma Katsu','Horror',NULL,10055),
(18907,'Embracing Defeat','John Dower','History',7,10056),
(18907,'Embracing Defeat','John Dower','History',NULL,10057),
(18907,'Embracing Defeat','John Dower','History',NULL,10058),
(18907,'Embracing Defeat','John Dower','History',NULL,10059),
(18907,'Embracing Defeat','John Dower','History',NULL,10060),
(18907,'Embracing Defeat','John Dower','History',NULL,10061),
(18907,'Embracing Defeat','John Dower','History',NULL,10062),
(18908,'Orientalism','Edward Said','History',5,10063),
(18908,'Orientalism','Edward Said','History',NULL,10064),
(18908,'Orientalism','Edward Said','History',NULL,10065),
(18908,'Orientalism','Edward Said','History',NULL,10066),
(18908,'Orientalism','Edward Said','History',NULL,10067),
(18909,'1776','David mcCullough','History',7,10068),
(18909,'1776','David mcCullough','History',NULL,10069),
(18909,'1776','David mcCullough','History',NULL,10070),
(18909,'1776','David mcCullough','History',NULL,10071),
(18909,'1776','David mcCullough','History',NULL,10072),
(18909,'1776','David mcCullough','History',NULL,10073),
(18909,'1776','David mcCullough','History',NULL,10074),
(18910,'Precolonial black Africa','Cheikh Diop','History',NULL,10075),
(18910,'Precolonial black Africa','Cheikh Diop','History',NULL,10076),
(18910,'Precolonial black Africa','Cheikh Diop','History',NULL,10077),
(18910,'Precolonial black Africa','Cheikh Diop','History',NULL,10078),
(18911,'The Diary of a Young Girl','Anne Frank','History',7,10079),
(18911,'The Diary of a Young Girl','Anne Frank','History',7,10080),
(18911,'The Diary of a Young Girl','Anne Frank','History',7,10081),
(18911,'The Diary of a Young Girl','Anne Frank','History',7,10082),
(18911,'The Diary of a Young Girl','Anne Frank','History',7,10083),
(18911,'The Diary of a Young Girl','Anne Frank','History',7,10084),
(18912,'Dead Simple','Peter James','Crime',6,10085),
(18912,'Dead Simple','Peter James','Crime',NULL,10086),
(18912,'Dead Simple','Peter James','Crime',NULL,10087),
(18912,'Dead Simple','Peter James','Crime',NULL,10088),
(18912,'Dead Simple','Peter James','Crime',NULL,10089),
(18912,'Dead Simple','Peter James','Crime',NULL,10090),
(18913,'Exiles','Jane Harper','Crime',6,10091),
(18913,'Exiles','Jane Harper','Crime',NULL,10092),
(18913,'Exiles','Jane Harper','Crime',NULL,10093),
(18913,'Exiles','Jane Harper','Crime',NULL,10094),
(18913,'Exiles','Jane Harper','Crime',NULL,10095),
(18913,'Exiles','Jane Harper','Crime',NULL,10096),
(18914,'Mystic River','Dennis Lehane','Crime',2,10097),
(18914,'Mystic River','Dennis Lehane','Crime',NULL,10098),
(18915,'The Big Sleep','Raymond Chandler','Crime',4,10099),
(18915,'The Big Sleep','Raymond Chandler','Crime',NULL,10101),
(18915,'The Big Sleep','Raymond Chandler','Crime',NULL,10102),
(18915,'The Big Sleep','Raymond Chandler','Crime',NULL,10103),
(18916,'The Blood of Emmett Till','Timothy Tyson','Crime',6,10104),
(18916,'The Blood of Emmett Till','Timothy Tyson','Crime',NULL,10105),
(18916,'The Blood of Emmett Till','Timothy Tyson','Crime',NULL,10106),
(18916,'The Blood of Emmett Till','Timothy Tyson','Crime',NULL,10107),
(18916,'The Blood of Emmett Till','Timothy Tyson','Crime',NULL,10108),
(18916,'The Blood of Emmett Till','Timothy Tyson','Crime',NULL,10109),
(18916,'The Blood of Emmett Till','Timothy Tyson','Crime',NULL,10110)
--Information entered into the book table

Select *
from Books

Insert into BorrowedBook values
(15600,10053,'3 weeks',150),
(15600,10036,'5 weeks',250),
(15601,10099,'7 weeks',350),
(15601,10089,'9 weeks',450),
(15602,10030,'4 days',NULL),
(15603,10016,'3 weeks',150),
(15604,10022,'2 weeks',100),
(15604,10031,'6 days',NULL),
(15605,10044,'3 weeks',150),
(15606,10104,'5 weeks',250),
(15607,10052,'6 weeks',300),
(15607,10101,'1 week',50),
(15607,10063,'6 weeks',300),
(15608,10050,'5 days',NULL),
(15609,10048,'8 weeks',400),
(15609,10065,'7 weeks',200),
(15610,10024,'2 weeks',200),
(15610,10064,'9 weeks',450),
(15611,10013,'9 days',NULL),
(15612,10021,'5 weeks',200),
(15612,10073,'8 days',NULL),
(15612,10079,'7 weeks',350),
(15612,10057,'3 days',NULL),
(15613,10020,'6 weeks',200),
(15614,10049,'2 weeks',200),
(15615,10015,'3 weeks',200),
(15616,10018,'1 week',50),
(15617,10033,'4 weeks',200),
(15617,10056,'2 weeks',100),
(15618,10039,'6 days',NULL),
(15619,10046,'1 week',50),
(15619,10011,'3 weeks',200),
(15620,10019,'6 days',NULL),
(15620,10093,'7 weeks',350),
(15620,10087,'4 weeks',200)
--Information entered into the Borrowed book table

Select*
from LibrarymanagmentSystem.dbo.BorrowedBook

Insert into Borrowee values
(15600,'Maryam','Webb','Student'),
(15601,'Phoenix','Contreras','Student'),
(15602,'Katie','Jimenez','Student'),
(15603,'Aaminah','Ali','Student'),
(15604,'Ricky','Walker','Teacher'),
(15605,'Albert','Nelson','Student'),
(15606,'Szymon','Mills','Teacher'),
(15607,'Virginia','Boyd','Student'),
(15608,'Malachy','May','Student'),
(15609,'Priya','Hood','Student'),
(15610,'Stevie','Mcmillan','Teacher'),
(15611,'James','Hudson','Student'),
(15612,'Mason','Mclaughlin','Student'),
(15613,'Amanda','Lopez','Teacher'),
(15614,'Mathilda','Kemp','Teacher'),
(15615,'Ifan','Humphrey','Student'),
(15616,'Cohen','Levy','Teacher'),
(15617,'Anjali','Ortega','Student'),
(15618,'Leyla','Guzman','Teacher'),
(15619,'Kyle','Todd','Student'),
(15620,'Tyler','Brown','Teacher')
--Information entered into the Borrowee table

Select *
from LibrarymanagmentSystem.dbo.Borrowee