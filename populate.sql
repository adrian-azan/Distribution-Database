use db_7398071f18;
INSERT INTO Products(ProductID,ProductName,ListPrice)
SELECT distinct d.ProductID, d.Name, d.ListPrice
FROM db_CSC484.Orders AS d;


INSERT INTO Customer(CustomerID, FirstName, LastName)
SELECT c.CustomerID, c.FirstName, c.LastName 
FROM db_CSC484.Customer as c;


INSERT INTO Orders(SalesOrderID,CustomerID, Status ,TotalDue)
SELECT DISTINCt o.SalesOrderID, o.CustomerID , o.Status, o.TotalDue
FROM db_CSC484.Orders as o;


INSERT INTO Details(SalesOrderDetailID, SalesOrderID, ProductID, OrderDate, OrderQty)
SELECT o.SalesOrderDetailID, o.SalesOrderID, o.ProductID, o.OrderDate, o.OrderQty
FROM db_CSC484.Orders as o;


INSERT INTO Location(LocationID)
SELECT DISTINCT i.LocationID
FROM db_CSC484.Inventory as i;


INSERT INTO Inventory (ProductID, LocationID,Quantity)
Select i.ProductID, i.LocationID, i.Quantity
FROM db_CSC484.Inventory as i;

