/*a. Consider the Products table and Cart table 
	b. Write a Query to display the results from the above two tables:
			CartId,  ProductName, Quantity, UnitPrice
			
		Hint :  Quantity should takes from Cart table
			
	c.  Try to appy inner join,  right outer join , left outer join and full outer join on the above tables.*/

select CartId, Name, Quantity, UnitPrice from Products p inner join Cart c on p.Productid=c.ProductId;
select CartId, Name, Quantity, UnitPrice from Products p right outer join Cart c on p.Productid=c.ProductId;
select CartId, Name, Quantity, UnitPrice from Products p left outer join Cart c on p.Productid=c.ProductId;
select CartId, Name, Quantity, UnitPrice from Products p full outer join Cart c on p.Productid=c.ProductId;

select * from Products p full outer join Cart c on p.Productid=c.ProductId;

/*Write the sql queries for the following requirements  by using Group By concept:

	Hint :   -->   Create a table Called "Student"  table with the following columns:
							StudentId,  StudentName,  CourseName,  City Name, ContactNumber
					-->   Insert some 10 rows in the above table. 
	
*/

create table Student(StudentId varchar(10) PRIMARY KEY, StudentName varchar(20) NOT NULL, CourseName varchar(20), City varchar(20), ContactNumber bigint);

insert into Student values(507, 'Hari', 'Angular', 'BZA', 4757938935);
insert into Student values(543, 'Pavan', 'Angular', 'Guntur', 4784377398);
insert into Student values(541, 'Anil', 'React', 'Ongole', 1879738974);
insert into Student values(558, 'Venna', 'Java', 'HYD', 487289710888);
insert into Student values(524, 'AJ', 'React', 'BZA', 4264982984);
insert into Student values(511, 'Kalyan', 'Angular', 'HYD', 9370937838);
insert into Student values(539, 'Varun', 'Python', 'HYD', 8888888888);
insert into Student values(519, 'Veera', 'Python', 'HYD', 3289613988);
insert into Student values(530, 'Manikanta', 'Java', 'HYD', 8732979288);
insert into Student values(529, 'Viswa', 'React', 'BZA', 3987371939);


--	a.   Find out how many Students are joined for "Angular"  Course
select count(*) as 'Number of Students in Angular', CourseName from Student where CourseName='Angular' group by CourseName;

--	b.   Find out how many Students are joined from  "Hyderabad"  City
select count(*) as 'Number of Students in Hyderabad', City from Student where City='HYD' group by City;

/*c.    Display No. of Students are join from each  City based 
	
			Sample Output:
						Hyderabad    10
						Mumbai   20
						Pune   5
						.....*/
select City, count(*) as 'Total Students' from Student group by City order by City; 

/*d.    Display No. of Students are join from each  Course  based 
			Sample Outupt:
					Angular    10
					React       20
					.NET        30
					....... 
					*/
select CourseName, count(*) as 'Total Students' from Student group by CourseName order by CourseName; 

--	e.     Display the counts  by grouping based on  city, course 
select City, CourseName, count(*) as 'Total Students' from Student group by City, CourseName order by City;

--Prepare the sql queries for the following requirements (use subqueries):		
--a.   Display the products if any items exists in the cart table
select * from Products where Productid  IN (select ProductId from Cart);

--b.   Display the cart items whoe product price greater than 5000 
select * from Products where UnitPrice>5000 and Productid IN (select ProductId from Cart);



