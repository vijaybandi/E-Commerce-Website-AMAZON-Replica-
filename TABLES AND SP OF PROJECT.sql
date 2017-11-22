USE MyAmazonDB
GO

---------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------
--------------------------------------------------------TABLES-------------------------------------------------
---------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------------------------------------------



--create table Category
--(
--CategoryID int primary key identity(1,1),
--CategoryName varchar(200)
--);

--create table Products
--(
--ProductID int primary key identity(1,1),
--[Name] varchar(100),
--[Description] varchar (1000),
--Price varchar(50),
--ImageUrl varchar(500),
--CategoryID int,
--ProductQuantity int 
--);



--	CREATE TABLE CustomerDetails
--	(
--[Id] [int] IDENTITY(1,1) NOT NULL primary key,
-- [CustomerName] [varchar](100) NULL,
--[CustomerEmailID] [varchar](100) NULL, 
--[CustomerPhoneNo] [varchar](20) NULL, 
--[CustomerAddress] [varchar](500),
--[TotalProducts] [int] NULL,
--[TotalPrice] [int] NULL,
--[OrderDateTime] [datetime] NULL default getdate(), 
--[PaymentMethod] [varchar](100) NULL
--);



--create table DeliveryStatus
--(
--Id int identity(1,1) primary key,
--TransactionNo int ,
--StatusMessage varchar(100),
--DataEntry datetime DEFAULT CURRENT_TIMESTAMP NOT NULL

--)





create table CustomerProducts
(
[CustomerID] [int] NULL,
 [ProductID] [int] NULL,
 [TotalProduct] [int] NULL
) ON [PRIMARY]




create table Members
(
    MemberID int primary key identity(1,1),
	FirstName varchar(30),
	LastName varchar (30),
	[Password] varchar (30),
	ConfirmPassword varchar (30),
	Email varchar (30),
	DateOfBirth date,
	Gender varchar (2),
)


---------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------
--------------------------------------------------------STORE PROCEDURES------------------------------------
------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------------------------------------------


----------------1


---------------------------------------------------------------------------------------------------------------------------------------------------------------------

																	----	Transaction in adding one and  SP_CheckLogin
---------------------------------------------------------------------------------------------------------------------------------------------------------------------


create  PROCEDURE [dbo].[SP_Addingone]
(
@ProductName varchar(300),
@ProductPrice int,
@ProductDescription varchar (1000),
@CategoryID int,
@ImageUrl varchar (500),
@ProductQuantity int

)
AS
BEGIN tran

if( @ProductName is not null and  @ProductPrice is not null and  @ProductDescription is not null and  @CategoryID is not null and  @ImageUrl is not null and @ProductQuantity is not null )
begin
Insert into Products (Name, Price, [Description], CategoryID, ImageUrl,ProductQuantity)
values(
@ProductName,@ProductPrice, @ProductDescription, @CategoryID, @ImageUrl,@ProductQuantity)

commit tran
end
else
begin
rollback tran
end





-----------------------------------  2

--create proc SP_AddNewCategory
--( 
--@CategoryName varchar(200)

--)    
--AS
--BEGIN
--BEGIN TRY
--	insert into Category 
--	values (@CategoryName)
--END TRY
--BEGIN CATCH

-- PRINT( 'Error occured' )
--END CATCH
--END





-------------------------------------  3


create PROCEDURE [dbo].[SP_GetAllCategories]
AS
BEGIN
BEGIN TRY
select * from getallcategory
 END TRY
BEGIN CATCH
-----INSERT INTO dbo.ErrorLog _VALUES(ERROR_HESSAGE(),'sp_GetAllData')
 PRINT( 'Error occured' )
END CATCH
END
   
   
   
   ------------------------------------------   4

--create proc SP_GetAllProducts
--(@CategoryID int)
--as begin
--begin try
--	if(@CategoryID <> 0)
--	begin

--	---select * from products where categoryID=@CategoryID;
--	select * from (select P.CategoryID,
--		P.ProductID,P.Name,P.Price,
--		P.ImageUrl, C.CategoryName ,
--		P.ProductQuantity,
--		Isnull (Sum(CP.TotalProduct),0) As ProductSold,
--		(P.ProductQuantity- Isnull(Sum(CP.TotalProduct) ,0) )as AvailableStock
--		From Products P
--		inner join Category C
--		on C.CategoryID=P.CategoryID
--		left join CustomerProducts CP
--		on CP.ProductID=P.ProductID
--	group by
--	P.ProductID,P.Name,P.Price,
--	P.ImageUrl, 
--	C.CategoryName,
--	P.ProductQuantity,
--	P.CategoryID) StockTable
--	where AvailableStock>0
--	End
--	End try
--	BEGIN CATCH
-------INSERT INTO dbo.ErrorLog _VALUES(ERROR_HESSAGE(),'sp_GetAllData')
-- PRINT( 'Error occured' )
--END CATCH
--END




----------------------------------------------------- 5



--create PROCEDURE  SP_SaveCustomerDetails
--(
--@CustomerName varchar(100), 
--@CustomerEmailID varchar(100), 
--@CustomerPhoneNo varchar(20), 
--@CustomerAddress varchar(500), 
--@TotalProducts int,
--@TotalPrice int,
--@PaymentMethod varchar(100)
--)
--AS
--BEGIN
--BEGIN TRY
--insert into CustomerDetails(CustomerName,CustomerEmailID,CustomerPhoneNo,CustomerAddress,TotalProducts,TotalPrice,PaymentMethod)

-- values(@CustomerName,@CustomerEmailID,@CustomerPhoneNo,@CustomerAddress,@TotalProducts,@TotalPrice,@PaymentMethod)
----select Id as CustomerlD from CustomerOetails
----where CustomerName4rustomerName and CustomerEmailID4CustomerEmailID
--select @@IDENTITY as CustomerID
-- END TRY
--BEGIN CATCH
--PRINT( 'Error occured' )
-- END CATCH
--END







--------------------------------------------------------- 6

--create PROCEDURE SP_SaveCustomerProducts
--(
--@CustomerID int, 
--@ProductID int,
-- @TotalProduct int
-- )
--AS
--BEGIN
--BEGIN TRY
--insert into CustomerProducts( CustomerID,ProductID,TotalProduct) values (@CustomerID,@ProductID,@TotalProduct)
--END TRY 
--BEGIN CATCH
--PRINT ('Error occured' ) 
--END CATCH
--END





--select * from CustomerProducts;

--select * from Category;

--select * from Products ;

--------------------------------------------------------- 7

create proc [dbo].[SP_GetOrderList]
(

@Flag int
)
as
begin 


begin try
if(@flag<>0)
begin 
select * from CustomerDetails where id=@Flag;

end
else
begin 
select * from CustomerDetails
end
end try 

BEGIN CATCH
PRINT ('Error occured' ) 
END CATCH
END

select * from CustomerDetails




--------------------------------------------------------- 8


--create proc SP_GetAvailableStock
--(@StockType int,
--@CategoryID int)
--as
--begin

--begin try 
--declare @StartRange int;
--declare @EndRange int;

--	if(@StockType=0)
--	begin
--	set @StartRange=0;
--	set  @EndRange=0; 
--	end

--	if(@StockType=1)
--	begin
--	set @StartRange=1;
--	set  @EndRange=10; 
--	end


--	if(@StockType=2)
--	begin
--	set @StartRange=11;
--	set  @EndRange=10000; 
--	end


--	if(@CategoryID=0)
--	begin
--	select * from
--	(
--		select p.[name],p.price,p.imageurl,c.categoryname,
--		p.productquantity, ISNULL(SUM(cp.totalproduct),0) as Product_Sold,
--		( p.productquantity - ISNULL(SUM(cp.totalproduct),0) ) as AvailableStock
--		from products p
--		inner join Category c on c.CategoryID= p.CategoryID
--		left join CustomerProducts cp
--		on cp.ProductID = p.productid
--		group by cp.ProductID,
--		p.[name],p.price,p.imageurl,c.CategoryName,p.productquantity) StockTable
--	  where AvailableStock between @StartRange and @EndRange
--	end
--	else
--	begin
--	select * from
--	(
--		select p.[name],p.price,p.imageurl,c.categoryname,
--		p.productquantity, ISNULL(SUM(cp.totalproduct),0) as Product_Sold,
--		(p.productquantity - ISNULL(SUM(cp.totalproduct),0) ) as AvailableStock
--		from products p
--		inner join Category c on c.CategoryID= p.CategoryID
--		left join CustomerProducts cp
--		on cp.ProductID = p.productid
--		where c.CategoryID=@CategoryID
--		group by cp.ProductID,
--		p.[name],p.price,p.imageurl,c.CategoryName,p.productquantity) StockTable
--	  where AvailableStock between @StartRange and @EndRange

--	end

--	end try 

--BEGIN CATCH
--PRINT ('Error occured' ) 
--END CATCH
--END



exec SP_GetIncomeReport 3





--------------------------------------------------------- 9

--create proc SP_GetIncomeReport
--(
--@ReportType int
--)
--as
-- begin


--begin try
--Declare @Today varchar(50 )=Day(getdate());
--Declare @Month varchar(50)=Month(getdate());
--Declare @Year varchar(50)= year(getdate());;


----select @Today =Day(getdate()),@Month=(getdate()),@Year=(getdate())



--if (@ReportType=1)
--begin 
--		select * from (select *, Day(OrderDateTime) as TodayDay ,Month(OrderDateTime) as ThisMonth, YEAR(OrderDateTime) as ThisYear
--		from CustomerDetails) IncomeTable where @Today=TodayDay and @Month=ThisMonth and @Year = ThisYear

--end

--if (@ReportType=2)
--begin

--select * from (select *, Day(OrderDateTime) as TodayDay ,Month(OrderDateTime) as ThisMonth, YEAR(OrderDateTime) as ThisYear
--		from CustomerDetails) IncomeTable where  @Month=ThisMonth and @Year = ThisYear

--end

--if (@ReportType=3)
--begin
--select * from (select *, Day(OrderDateTime) as TodayDay ,Month(OrderDateTime) as ThisMonth, YEAR(OrderDateTime) as ThisYear
--		from CustomerDetails) IncomeTable where  @Year = ThisYear


--end


--end try 

--BEGIN CATCH
--PRINT ('Error occured' ) 
--END CATCH
--END


--select *  from CustomerDetails



--------------------------------------------------------- 10

--alter proc SP_GetTransactionDetails
--(

--@TransactionNo int
--)
--AS
--BEGIN	
--BEGIN TRY

--select P.[Name],P.ImageUrl,P.Price,CP.TotalProduct as

-- ProductQuantity from Products P inner join CustomerProducts CP

--on CP.ProductID=P.ProductID
--where CP.CustomerID=@TransactionNo
--END TRY
--BEGIN CATCH
-----INSERT INTO dbo.Errorlog
----VALUES(ERROR_HESSAGE(),'sp_GetAllDate')
--PRINT( ERROR_MESSAGE() )
--END CATCH
--END

   
   
   
   --------------------------------------------------------- 11


--create PROCEDURE Adding_orderstat
--(
--@TransactionNo int,
--@OrderStatus varchar(300),
--@Flag int
--)
--AS
--BEGIN
--BEGIN TRY

--if(@Flag=1)
--begin
--insert into DeliveryStatus(TransactionNo,StatusMessage ) values
--(
--@TransactionNo,
--@OrderStatus
--)
--end

--select StatusMessage as ShipmentStatus,DataEntry as UpdatedOn from DeliveryStatus where TransactionNo=@TransactionNo
 
-- END TRY
--BEGIN CATCH
-----INSERT INTO dbo.Errorlog
----VALUES(ERROR_HESSAGE(),'sp_GetAllDate')
--PRINT( ERROR_MESSAGE() )
--END CATCH
--END



--------------------------------------------------- tayyab and saeed updation







--------------------------------------------------------- 12

create PROCEDURE [dbo].[SP_AddingCustomer]
(
@FName varchar(30),
@LName varchar(30),
@Pwd1 varchar (30),
@Pwd2 varchar (30),
@Emailing varchar (30),
@DOB1 varchar (30),
@Gender varchar (2)


)
AS
BEGIN
BEGIN TRY
Insert into Members (FirstName,LastName, [Password], ConfirmPassword, Email,DateOfBirth,Gender)
values(
@FName,@LName,@Pwd1,@Pwd2,@Emailing,@DOB1,@Gender)
End try
BEGIN CATCH
-----INSERT INTO dbo.ErrorLog _VALUES(ERROR_HESSAGE(),'sp_GetAllData')
 PRINT( 'Error occured' )
END CATCH
END

-------------------------------------------------tran also used here ---------------------------------------------



--------------------------------------------------------- 13

create PROCEDURE [dbo].[SP_CheckLogin]
(

@Emailing varchar (100),
@Pwd1  varchar (100)

)
AS
BEGIN
BEGIN Tran


if (exists(
select Email, [Password] from Members
where Email = @Emailing and [Password] = @Pwd1)
)

begin
	commit tran
end

else
begin
	rollback tran
	end


end

----------------------------------------------------------------

--------------------------------------------------------- 14



create proc [dbo].[SP_DeleteCategory]
( 
@CategoryName varchar(200)

)
AS
BEGIN
BEGIN TRY
	delete from Category
	where CategoryName=@CategoryName
END TRY
BEGIN CATCH

 PRINT( 'Error occured' )
END CATCH
END

-------------------------------------------------------------------------


--------------------------------------------------------- 15


create  proc [dbo].[SP_DeleteTheProduct]
( 
@ProductName varchar(200)

)
AS
BEGIN
BEGIN TRY
	delete from Products
	where [Name]=@ProductName
END TRY
BEGIN CATCH

 PRINT( 'Error occured' )
END CATCH
END
------------------------------------------------------------------



--------------------------------------------------------- 16


create proc [dbo].[SP_UpdateCategory]
( 
@CategoryName varchar(200),
@CategoryName2 varchar(200)

)
AS
BEGIN
BEGIN TRY
	update Category
	set CategoryName = @CategoryName2
	where CategoryName=@CategoryName
END TRY
BEGIN CATCH

 PRINT( 'Error occured' )
END CATCH
END







-----------------------------------------------------transactions



create  PROCEDURE [dbo].[SP_Addingone]
(
@ProductName varchar(300),
@ProductPrice int,
@ProductDescription varchar (1000),
@CategoryID int,
@ImageUrl varchar (500),
@ProductQuantity int

)
AS
BEGIN tran

if( @ProductName is not null and  @ProductPrice is not null and  @ProductDescription is not null and  @CategoryID is not null and  @ImageUrl is not null and @ProductQuantity is not null )
begin
Insert into Products (Name, Price, [Description], CategoryID, ImageUrl,ProductQuantity)
values(
@ProductName,@ProductPrice, @ProductDescription, @CategoryID, @ImageUrl,@ProductQuantity)

commit tran
end
else
begin
rollback tran
end



select * from Products





---------------------------------------------------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------VIEWS-----------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------------------------------------------



create view GettingProductsAll
as
select * from (
	
	select P.CategoryID,


		P.ProductID,P.Name,P.Price,
		P.ImageUrl, C.CategoryName ,
		P.ProductQuantity,
		Isnull (Sum(CP.TotalProduct),0) As ProductSold,
		(P.ProductQuantity- Isnull(Sum(CP.TotalProduct) ,0) )as AvailableStock
		From Products P
		inner join Category C
		on C.CategoryID=P.CategoryID
		left join CustomerProducts CP
		on CP.ProductID=P.ProductID
	group by
	P.ProductID,P.Name,P.Price,
	P.ImageUrl, 
	C.CategoryName,
	P.ProductQuantity,
	P.CategoryID)as   StockTable
	
	where AvailableStock>0

	
		--------------------------------------------------------------------------------------------------------------
		------------------------------------------------2----------------------------------------------------------
		--------------------------------------------------------------------------------------------------------------
	
	
CREATE VIEW getallcategory AS
select * from Category



---------------------------------------------------------------------------------------------------------------









select  * from Members





-------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------- Triggers-----------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------





----------------------------------------------------------                 -------------------------------------------
----------------------------------------------------------         1  	   -------------------------------------------
----------------------------------------------------------                 -------------------------------------------

CREATE TRIGGER trig_insert_products
ON Products
after INSERT
AS
begin
Print 'Product inserted!';
END
select * from Products

insert into Products([Name],[Description],Price,ImageUrl,CategoryID,ProductQuantity) 
values	('ABCV','good','200','ABC',8,60)



----------------------------------------------------------                 -------------------------------------------
----------------------------------------------------------         2  	   -------------------------------------------
----------------------------------------------------------                 -------------------------------------------

CREATE TRIGGER trig_insert_Category
ON Category
after INSERT
AS
begin
Print 'New Category inserted!';
END






----------------------------------------------------------                 -------------------------------------------
----------------------------------------------------------         3   	   -------------------------------------------
----------------------------------------------------------                 -------------------------------------------



CREATE TRIGGER trig_insert_Members
ON Members
after INSERT
AS
begin
Print 'New Member Added!';
END

















