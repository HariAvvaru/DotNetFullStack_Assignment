create database ShoppingCartDb

use ShoppingCartDb

Create table Users
(
	Userid int IDENTITY, UserName varchar(20), Password varchar(20), ContactNumber bigint, City varchar(20)
);

drop table Users
	 
Select * from Users;

Create table Products
(
	Productid int NOT NULL, Name varchar(20) NOT NULL, QuantityInStock int NOT NULL, UnitPrice int NOT NULL, Category varchar(20) NOT NULL,
	constraint PK_PROD_PID Primary Key(Productid),
	constraint CHK_PROD_QUANT CHECK(QuantityInStock>0),
	constraint CHK_PROD_UNIT CHECK(UnitPrice>0)
);

select * from Products;


create table Cart
(
	Id int PRIMARY KEY, CartId int NOT NULL, ProductId int, Quantity int NOT NULL,
	constraint CHK_Cart_QUANT CHECK(Quantity>0),
	constraint FK_CART_PID Foreign Key(ProductId) 
	references Products(Productid)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

DROP table Cart
insert into Users(UserName, Password, ContactNumber, City) values('Hari', 'Hari123', 8458593749, 'BZA');
insert into Users(UserName, Password, ContactNumber, City) values('Pavan', 'Pavan123', 8247385852, 'Guntur');
insert into Users(UserName, Password, ContactNumber, City) values('Anil', 'Anil123', 7680009175, 'Ongole');
insert into Users(UserName, Password, ContactNumber, City) values('Venna', 'Venna123', 9392592292, 'HYD');
insert into Users(UserName, Password, ContactNumber, City) values('AJ', 'AJ123', 9440669344, 'BZA');

Select * from Users;

insert into Products values(1526, 'Dell Laptop', 30, 70000, 'Laptop');
insert into Products values(1383, 'Asus Laptop', 28, 80000, 'Laptop');
insert into Products values(1111, 'Oneplus Mobile', 50, 30000, 'Mobile');
insert into Products values(1223, 'Apple Mobile', 20, 50000, 'Mobile');
insert into Products values(1826, 'Realme Watch', 10, 5000, 'Watch');
insert into Products values(2837, 'LG TV', 50, 200000, 'Television');


-- Constraint Violation
insert into Products values(2837, NULL, 50, 200000, 'Television');
insert into Products values(2882, 'MI TV', 0, 100000, 'Television');



insert into Cart values(1, 1039, 1526, 5);
insert into Cart values(2, 1139, 1383, 2);
insert into Cart values(3, 1239, 1111, 1);
insert into Cart values(4, 1339, 2837, 8);
insert into Cart values(5, 1439, 1223, 1);

-- Constraint Violation
insert into Cart values(1, 1439, 1772, 1);

select * from Products

select * from Cart

--Product Operations
--a.   Display all Products
SELECT * from Products
--b.   Display Products belongs to particular category
select * from Products where Category='Mobile'
--c.   Display out of stock products (means quantity is zero)
select * from Products where QuantityInStock=0;
--d.   Display the products which price between 1000 to 10000 
select * from Products where UnitPrice between 1000 and 10000;
						--OR
select * from Products where UnitPrice>1000 and UnitPrice<10000;
--e.   Display the product details based on the ProductId
select * from Products order by Productid;
--   On Cart Table:
--a.  Display data based on the given CartId
select * from Cart where CartId=1239;

--b.  Check is there any products added in Cart based on the ProductId
select * from Cart where ProductId=1526
					--OR
select p.Productid, p.Name, c.Quantity, (p.QuantityInStock-c.Quantity) as 'Stock Available after cart' from Cart c, Products p where c.ProductId = p.Productid;
					--Sub Query
select p.Productid, p.Name, c.Quantity, (p.QuantityInStock-c.Quantity) as 'Stock Available after cart' from Cart c, Products p where c.ProductId IN (select Productid from Products);


--On Users Table
--a. Display All users 
select * from Users;
--b. Display user details based on ContactNumber
select * from Users where ContactNumber=8247385852;
--c. Display user details based on UserId
select * from Users where Userid=2;





