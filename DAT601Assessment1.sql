--Assessment 1 part 2
use business_database;
go
--Adding Foreign Keys
ALTER TABLE OrderEntry
ADD CONSTRAINT FK_OrderEntry_Customer
FOREIGN KEY (CustID) REFERENCES Customer(CustID);

ALTER TABLE OrderItem
ADD CONSTRAINT FK_OrderItem_OrderEntry
FOREIGN KEY (OrderID) REFERENCES OrderEntry(OrderID);

ALTER TABLE OrderItem
ADD CONSTRAINT FK_OrderItem_Product
FOREIGN KEY (ProductID) REFERENCES Product(ProductID);

ALTER TABLE Product
ADD CONSTRAINT FK_Product_Vendor
FOREIGN KEY (VendorID) REFERENCES Vendor(VendorID);

--1. List all products not made by vendor DLL01
select VendorID, ProductName
from Product
where VendorID != 'DLL01';
--2. List all the products with a price between $5.00 and $10.00
select ProductName, format(ProductPrice,'N4')as ProductPrice
from Product
where ProductPrice between $5.00 and $10.00;
--3. List any products made by either vendor DLL01 or vendor BRS01 costing $10.00 or greater
select ProductName, format(ProductPrice,'N4')as ProductPrice
from Product
where (VendorID = 'DLL01' or VendorID = 'BRS01') and ProductPrice >= $10.00;
--4. Return the average price of all the products in the Products table
select format(avg(ProductPrice),'N4') as AveragePrice
from product;
--5. Return the total number of customers in the Customers table
select count(*)as TotalCustomers 
from Customer;
--6. Return the number of customers in the Customers table with an e-mail address
select count(CustEmail)as TotalCustomerEmail 
from Customer;
--7. Return the number of product types, minimum, maximum and average product price from the products table
select count(ProductName)as TotalProducts, format(min(ProductPrice),'N4')as MinimumPrice,format(max(ProductPrice),'N4')as MaximumPrice, format(avg(ProductPrice),'N4')as AveragePrice
from Product;
--8. Return the vendor name, product price and product name from the vendors and products tables
select VendorName, ProductName,format(ProductPrice,'N4')as ProductPrice
from Vendor, Product;
--9. Return the product name, vendor name, product price and quantity for each item in order number 20007
