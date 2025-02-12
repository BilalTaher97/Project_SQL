

--Create Database Project_Library;

--create Table Categories(ID int Primary Key , Name varchar(50) , Description varchar(50)) 

--create Table Books(ID int Primary Key , Title varchar(50) , Author varchar(50) , Genre varchar(50) ,
--Publication_Year Date , vailability_Status varchar(50) , Categorie_ID int foreign key References Categories(ID))


--create Table Members(ID int Primary Key , Name varchar(50) , Contact_Information varchar(50) , Membership_Type varchar(50),
--Registration_Date varchar(50))

--create Table library_Staff(ID int Primary Key , Name varchar(50) ,
--Contact_Info varchar(50) , Assigned_Section varchar(50) , Employment_Date Date)

--Create Table borrowing(ID int Primary Key , Borrowing_Date date , Due_Date date , Return_Date date , 
--Book_ID  int foreign key References Books(ID),
--Member_ID int foreign key References Members(ID))



--Create Table Reservations(ID int Primary Key , Reservation_Date date ,Status varchar(50),
--Book_ID  int foreign key References Books(ID),
--Member_ID int foreign key References Members(ID))

--Insert Into Categories values('History','Books that talk about ancient history and previous events'),('Science', 'Books that explore scientific concepts and discoveries'), 
--('Philosophy', 'Books that discuss philosophical thoughts and theories'),('Technology', 'Books that cover advancements in technology and innovation'), 
--('Literature', 'Books that include classic and modern literary works');  


--Insert Books values('Contemporary ancient','Ali','History','2006','Available',1)
--,('The Rise of Civilizations', 'John Smith', 'History', '2010', 'Available',1) 
--,('Philosophical Foundations', 'Emily Carter', 'Philosophy', '2015', 'Checked Out',3)
--,('The Future of AI', 'David Johnson', 'Technology', '2022', 'Available',4)  
--,('Masterpieces of Literature', 'Sophia Lee', 'Literature', '1998', 'Reserved',5) 

--Insert Members values('Bilal','+962775346754','Student','2010'),
--('Amina', '+962791234567', 'Student', '2012'), 
--('Omar', '+962785678910', 'Teacher', '2005') , 
--('Laila', '+962770987654', 'Visitor', '2018'),
--('Khaled', '+962776543210', 'Visitor', '2000');



--Insert Into library_Staff values('Omar','Omar@gmail.com','Warehouse department','2020-03-12'),
--('Aisha', 'Aisha@gmail.com', 'Customer Service', '2018-07-25'), 
--('Kareem', 'Kareem@gmail.com', 'Administration', '2015-09-10'),  
--('Fatima', 'Fatima@gmail.com', 'Technical Support', '2021-01-05') , 
--('Yusuf', 'Yusuf@gmail.com', 'Acquisitions', '2017-11-30')


--Insert Into borrowing values('2025-03-12','2025-03-15','2025-03-15',1,3),
--('2025-04-01', '2025-04-10', '2025-04-10', 2, 5),  
--('2025-05-05', '2025-05-12', '2025-05-11', 3, 3), 
--('2025-06-15', '2025-06-20', '2025-06-19', 4, 2),
--('2025-07-22', '2025-07-30', '2025-07-29', 5, 4);  


--Insert Into Reservations values('2025-03-12','Completed',1,3),
--('2025-04-05', 'Pending', 2, 5), 
--('2025-05-10', 'Completed', 3, 4),  
--('2025-06-18', 'Cancelled', 4, 2),  
--('2025-07-25', 'Pending', 5, 1)  



--Q1 :
--select * From Members Where Registration_Date = '2005';

--Q2:
--select * From Books Where Title = 'The Future of AI';

--Q3:
--ALTER TABLE Members
--ADD Email varchar(255);

--Q4:
--INSERT INTO Members VALUES('Talal', '+962776543210', 'Librarian', '2000','Talal@gmail.com'); 

--Q5:
--select * From Members Inner Join  Reservations
--on Members.ID = Reservations.Member_ID

--Q6:
--select * From Members Inner Join  borrowing
--on Members.ID = borrowing.Member_ID Where borrowing.Book_ID = 4

--Q7:
--	select * From Members Inner Join  borrowing
--on Members.ID = borrowing.Member_ID Inner Join Books
--on borrowing.Book_ID = Books.ID Where Books.Title = 'The Future of AI'

--Q8:
--select * From Books Inner Join borrowing 
--on Books.ID = borrowing.Book_ID where  borrowing.Return_Date > borrowing.Due_Date 

--Q9:
--select Books.ID,Books.Title,Count(borrowing.ID) as B_Count From Books Inner Join borrowing
--on Books.ID = borrowing.Book_ID  Group by Books.ID ,Books.Title 
--Having Count(borrowing.ID) > 3

--Q10:
--select * From Members Inner Join borrowing
--on Members.ID = borrowing.Member_ID where borrowing.Due_Date between '2025-04-01' and '2025-04-10'

--Q11
--select Count(*) as NumberOfBooks From Books




