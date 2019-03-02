
ALTER TABLE Orders
	DROP Foreign Key FK_CustomerID;

ALTER TABLE Details
	DROP Foreign Key FK_SalesOrderID;
	
ALTER TABLE Details
	DROP Foreign Key FK_ProductID;

ALTER TABLE Inventory
	DROP foreign key FK_ProductID_Inventory;
    
ALTER TABLE Inventory
	DROP foreign key FK_LocationID_Inventory;

DROP TABLE Orders;
DROP TABLE Location;
DROP TABLE Details;
DROP TABLE Customer;
DROP TABLE Inventory;
DROP TABLE Products;

	


