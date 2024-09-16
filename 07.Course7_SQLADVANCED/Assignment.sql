use pubs
--Assignment(1)
--Create View 
create view [Products Less Than Average Price] as select ProductID, ProductName, UnitPrice from Products where UnitPrice < (select AVG(UnitPrice) from Products);

--Display results using View
select * from [Products Less Than Average Price]

--Renaming the view
Exec sp_rename 'Products Less Than Average Price', 'Low Cost Products';

select * from [Low Cost Products];

--Drop the view
drop view [Low Cost Products];

--Assignment(2)
--a.   Read required data from the Products table
--b.   Find the total amount of each product :  Consider UnitsOnOrder, UnitPrice
--c.   You need to display product name and total amount in the output	  
--d.   Also display grand total at the end. 
--e.   Display the total amounts with only two decimal points:
--			Eg:   128.50,  582.00, etc....
	
select * from Products

CREATE PROCEDURE ProductAmount AS
Begin
	DECLARE cursor_product CURSOR
	FOR SELECT ProductName, UnitsOnOrder,UnitPrice FROM  Products;

	DECLARE @ProductName VARCHAR(MAX),  @UnitsOnOrder int,@UnitPrice FLOAT, @su DECIMAL(18,2), @tot decimal(18,2);
	   
	OPEN cursor_product;

	FETCH NEXT FROM cursor_product INTO @ProductName, @UnitsOnOrder,@UnitPrice;
	select @su=0
	select @tot=0
	WHILE @@FETCH_STATUS = 0
		BEGIN
			select @tot=(@UnitsOnOrder)*(@UnitPrice)
			select @su+=@tot
			PRINT @ProductName + ' - ' +  CAST(@tot AS varchar);
			
			FETCH NEXT FROM cursor_product INTO @ProductName, @UnitsOnOrder,@UnitPrice;
		END;
	PRINT 'Total Amount - '+ CAST(@su as varchar)

	CLOSE cursor_product;
	DEALLOCATE cursor_product;
End;

Exec ProductAmount


drop procedure ProductAmount