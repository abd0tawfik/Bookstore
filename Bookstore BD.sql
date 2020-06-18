
CREATE DATABASE BOOKSTORE;

USE BOOKSTORE;



 
CREATE TABLE Customers(
	Customer_ID varchar(55) NOT NULL,
	First_name varchar(55),
	Last_name varchar(55),
	Customer_City varchar(55),
	Customer_phone varchar(55) NOT NULL,
    Primary key (Customer_ID)
    )ENGINE = INNODB;



    
	INSERT INTO Customers (Customer_ID,First_name,Last_name,Customer_City,Customer_phone)
	VALUES ('1','Ahmed','Tawfik','Cairo','01234567891');

	INSERT INTO Customers (Customer_ID,First_name,Last_name,Customer_City,Customer_phone)
	VALUES ('2','Abdelrahman','Tawfik','Cairo','01234567892');

	INSERT INTO Customers (Customer_ID,First_name,Last_name,Customer_City,Customer_phone)
	VALUES ('3','Mohamed','Tawfik','Cairo','01234567893');

	INSERT INTO Customers (Customer_ID,First_name,Last_name,Customer_City,Customer_phone)
	VALUES ('4','Mostafa','Tawfik','Alexandria','01234567894');

	INSERT INTO Customers (Customer_ID,First_name,Last_name,Customer_City,Customer_phone)
	VALUES ('5','Adel','Tawfik','Alexandria','01234567895');

		



   
CREATE TABLE Orders(
	Order_ID varchar(55) NOT NULL,
	Customer_ID varchar(55) NOT NULL,
	Order_Date varchar(55),
    Primary key (Order_ID)
    )ENGINE = INNODB;
     

    
    INSERT INTO Orders (Order_Id,Customer_ID,Order_Date) 
    Values ('ORD01','1','13-03-2020');
    
	INSERT INTO Orders (Order_Id,Customer_ID,Order_Date) 
    Values ('ORD02','2','12-05-2020');
    
    INSERT INTO Orders (Order_Id,Customer_ID,Order_Date) 
    Values ('ORD03','3','13-04-2020');
    
    INSERT INTO Orders (Order_Id,Customer_ID,Order_Date) 
    Values ('ORD04','4','14-02-2020');
    
	INSERT INTO Orders (Order_Id,Customer_ID,Order_Date) 
    Values ('ORD05','5','1-01-2020');
    




    
 CREATE TABLE Order_Items (       
	Item_ID varchar(55) NOT NULL,
	Order_ID varchar(55) NOT NULL,
    Book_ID varchar(55) NOT NULL,
	isbn varchar (55) NOT NULL,
	Retail_Price varchar(55),
    Primary key (Item_ID)
     )ENGINE = INNODB;   

	INSERT INTO Order_Items (Item_Id, Order_ID, Book_ID,
    isbn, Retail_Price) 
    Values ('ITM01','ORD01','BK01','0-410-121-1','16.99');   
    
    INSERT INTO Order_Items (Item_Id, Order_ID, Book_ID,
    isbn, Retail_Price)  
    Values ('ITM02','ORD02','BK02','0-230-166-1','26.99');   
    
    INSERT INTO Order_Items (Item_Id, Order_ID, Book_ID,
    isbn, Retail_Price)  
    Values ('ITM03','ORD03','BK03','0-090-881-1','22.99');   
    
    INSERT INTO Order_Items (Item_Id, Order_ID, Book_ID,
    isbn, Retail_Price)  
    Values ('ITM04','ORD04','BK04','0-22-121-1','20.99');   
    
    INSERT INTO Order_Items (Item_Id, Order_ID, Book_ID,
    isbn, Retail_Price)  
    Values ('ITM05','ORD05','BK05','0-413-331-1','29.99');   
    
    
    
    
    CREATE TABLE Books(
	Book_ID varchar(55) NOT NULL,
    isbn varchar(55) NOT NULL,
	Author_name varchar(55),
	Title_name varchar(55),
	Publisher_name varchar(55),
	Retail_price varchar (55) NULL,
    Primary key (Book_ID)
    )ENGINE = INNODB;


   
    INSERT INTO Books (Book_ID,isbn,Author_name,
    Title_name, Publisher_name, Retail_price) 
    VALUES ('BK01','0-332-3233-4','J.R.R Tolken','The Hobbit',
    'Allen & Unwin', '16.99');
    
    INSERT INTO Books (Book_ID,isbn,Author_name,
    Title_name, Publisher_name, Retail_price) 
    VALUES ('BK02','0-3113-443-4','J.R.R Tolken','The Lord of the Rings : Fellowship of the ring',
    'Allen & Unwin','26.99');
    
    INSERT INTO Books (Book_ID,isbn,Author_name,
    Title_name, Publisher_name, Retail_price) 
    VALUES ('BK03','0-113-473-8','J.R.R Tolken','The Lord of the Rings : The two towers',
    'Allen & Unwin', '20.99');
    
    INSERT INTO Books (Book_ID,isbn,Author_name,
    Title_name, Publisher_name, Retail_price) 
    VALUES ('BK04','0-993-433-3','J.R.R Tolken','The Lord of the Rings : Return of the King',
    'Allen & Unwin', '29.99');
    
    INSERT INTO Books (Book_ID,isbn,Author_name,
    Title_name, Publisher_name, Retail_price) 
    VALUES ('BK05','0-293-333-6','Tanith Lee','The Castle of Dark',
    'Macmilla', '29.99');
    
    



    
CREATE TABLE Returnss(
	Return_ID varchar(55)NOT NULL,
	Item_ID varchar(55) NOT NULL,
    Book_ID varchar(55) NOT NULL,
    Retail_Price varchar(55),
    Primary key (Return_ID)
    )ENGINE = INNODB; 
    
   

  
	
    INSERT INTO Returnss (Return_Id, Item_ID,Book_ID, Retail_Price) 
    Values ('RTN01','ITM01','BK01','16.99'); 
    
    INSERT INTO Returnss (Return_Id, Item_ID, Book_ID, Retail_Price) 
    Values ('RTN02','ITM02','BK02','26.99');   
    
    INSERT INTO Returnss (Return_Id, Item_ID, Book_ID, Retail_Price) 
    Values ('RTN03','ITM03','BK03','22.99');   
    
    INSERT INTO Returnss (Return_Id, Item_ID, Book_ID, Retail_Price) 
    Values ('RTN04','ITM04','BK04','20.99');   
    
    INSERT INTO Returnss (Return_Id, Item_ID, Book_ID, Retail_Price) 
    Values ('RTN05','ITM05','BK05','29.99');  
    
    

	ALTER TABLE Orders	
	ADD FOREIGN KEY (Customer_id)
	REFERENCES Customers (Customer_Id)
    
    ALTER TABLE Order_items	
	ADD FOREIGN KEY (Order_ID)
	REFERENCES Orders (Order_Id)
    
    ALTER TABLE Order_items	
	ADD FOREIGN KEY (Book_ID)
	REFERENCES Books (Book_ID)
    

    ALTER TABLE Returns
	ADD FOREIGN KEY (Item_ID)
	REFERENCES Order_items (Item_ID)
    
	ALTER TABLE Returns
	ADD FOREIGN KEY (Book_ID)
	REFERENCES Books (Book_ID)
    
    
    
    Select * From Customers;
    
    Select * From Books;
    
    Select * From Orders;
    
    Select * From Order_Items;
    
    Select * From Returnss;
    
    Select * From Customers Where First_name like 'A%';
    
    Select Author_name From Books;
    
    Select First_name , Last_name From Customers order by desc;
    
    Select * From Orders where Customer_ID = '2' and Order_Date = '12-05-2020';
    
    Select * From Books where Book_ID = 'BK01';
    
    Select First_name , Last_name From Customers c ,Orders o where c.Customer_ID= o.Customer_ID;
    
    Select First_name , Last_name , Customer_City From Customers c ,Orders o where c.Customer_ID= o.Customer_ID and Order_Date = '12-05-2020';
    
    Select * From Orders where Order_Date = '12-05-2020' count by desc;
    
    Select * From Customers Where Last_name like 'T%';
    
    Select * From Customers Where Customer_City = 'Cairo';
    
    select count (*) from Customers;
    
    Select * From Customers c ,Orders o On c.Customer_ID= o.Customer_ID;
    
    Select * From Customers order by desc;
    
    Select Publisher_name From Books;
    
    Select First_name From Customers where First_name = 'Ahmed';
    
    Select Customer_City From Customers c ,Orders o where c.Customer_ID= o.Customer_ID;
    
    
    
    
    Select First_name , Last_name FROM Customers WHERE Customer_ID<(SELECT MAX(3) FROM Customers);
    
    Select Author_name FROM Books WHERE Book_ID<(SELECT MAX('BK02') FROM Books);
    
    


    Select count (Book_ID) from Books Group by Author_name Having count(Book_ID) >= 0;
    
    Select count (*)  From Customers Group by Customer_ID ;
    
    
    
    
    Select First_name , Last_name From Customers c join Orders o On c.Customer_ID= o.Customer_ID;
    
    Select Book_ID , Retail_Price From Order_Items oi join Returnss r On oi.Item_ID= r.Item_ID;
    
    
    
    
    Update Customers set First_name = 'Eslam' where Customer_ID = '3';
    
    Update Books set Author_name = 'Rechard' where Book_ID = 'BK01';
    
    Update Orders set Book_ID = 'BK01' where Order_ID = 'ORD02';
    
    Update Order_Items set Book_ID = 'BK04' where Item_ID = 'ITM05';
    
    Update Returnss set Retail_Price = '30.11' where Return_ID = 'RTN03';
    
    
    
    Delete from Customers where Customer_ID = '3';
    
    Delete from Books where Book_ID = 'BK01';
    
    Delete from Orders where Order_ID = 'ORD02';
    
    Delete from Order_Items where Item_ID = 'ITM05';
    
    Delete from Returnss where Return_ID = 'RTN03';