-- Create tables for STORE
use db_7398071f18;

CREATE TABLE Orders (
	SalesOrderID int primary key,
    CustomerID int NOT NULL,
	Status tinyint NOT NULL,
	TotalDue decimal(19,4) NOT NULL
	#FK Customer ID
);

CREATE TABLE Details(
	SalesOrderDetailID int Primary key,
    SalesOrderID int NOT NULL,
    ProductID int NOT NULL,
	OrderDate datetime NOT NULL,
	OrderQty smallint NOT NULL
	#FK SalesOrderID
    #FK ProductID
);

CREATE TABLE Customer(
	CustomerID int primary Key,
	FirstName nvarchar(50) NOT NULL,
	LastName nvarchar(50) NOT NULL
);

CREATE TABLE Inventory(
	LocationID smallint,
    ProductID int NOT NULL,
	Quantity smallint NOT NULL
);


CREATE TABLE Location(
	LocationID smallint Primary Key
);



CREATE TABLE Products(
	ProductID int Primary Key,
	ProductName nvarchar(50) NOT NULL,
	ListPrice decimal(19,4) NOT NULL
);

ALTER TABLE Orders
	ADD CONSTRAINT FK_CustomerID
	FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

ALTER TABLE Details
	ADD CONSTRAINT FK_SalesOrderID
	FOREIGN KEY (SalesOrderID) REFERENCES Orders(SalesOrderID)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

ALTER TABLE Details
	ADD CONSTRAINT FK_ProductID
	FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

ALTER TABLE Inventory
	ADD CONSTRAINT FK_ProductID_Inventory
	FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
    ON DELETE CASCADE
    ON UPDATE CASCADE;
    
ALTER TABLE Inventory
	ADD CONSTRAINT FK_LocationID_Inventory
	FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
    ON DELETE CASCADE
    ON UPDATE CASCADE;



	