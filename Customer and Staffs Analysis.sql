USE [master]
GO

if not exists(select * from sys.databases where name = 'SalesDB')
CREATE DATABASE [SqlTrainingOnlineSimpleDB]
GO

USE [SalesDB]
GO
/****** Object:  Table [dbo].[customer]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customer](
	[customer_number] [int] NOT NULL,
	[customer_name] [varchar](10) NULL,
	[customer_company] [varchar](10) NULL,
	[saleman_employee_number] [decimal](5, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[department]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[department](
	[department_number] [decimal](2, 0) NOT NULL,
	[department_name] [varchar](14) NULL,
	[location] [varchar](13) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[employee]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee](
	[employee_number] [decimal](4, 0) NOT NULL,
	[employee_name] [varchar](10) NULL,
	[job] [varchar](9) NULL,
	[manager] [decimal](4, 0) NULL,
	[hire_date] [datetime] NULL,
	[salary] [decimal](7, 2) NULL,
	[commision] [decimal](7, 2) NULL,
	[department_number] [decimal](2, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[customer] ([customer_number], [customer_name], [customer_company], [saleman_employee_number]) VALUES (1, N'Bill', N'Dell', CAST(7499 AS Decimal(5, 0)))
GO
INSERT [dbo].[customer] ([customer_number], [customer_name], [customer_company], [saleman_employee_number]) VALUES (2, N'Diana', N'Dell', CAST(7499 AS Decimal(5, 0)))
GO
INSERT [dbo].[customer] ([customer_number], [customer_name], [customer_company], [saleman_employee_number]) VALUES (3, N'Bob', N'HP', CAST(7521 AS Decimal(5, 0)))
GO
INSERT [dbo].[customer] ([customer_number], [customer_name], [customer_company], [saleman_employee_number]) VALUES (4, N'Jill', N'Asus', CAST(7654 AS Decimal(5, 0)))
GO
INSERT [dbo].[customer] ([customer_number], [customer_name], [customer_company], [saleman_employee_number]) VALUES (5, N'Jack', N'Best Buy', NULL)
GO
INSERT [dbo].[customer] ([customer_number], [customer_name], [customer_company], [saleman_employee_number]) VALUES (6, N'Erin', N'Walmart', NULL)
GO
INSERT [dbo].[department] ([department_number], [department_name], [location]) VALUES (CAST(10 AS Decimal(2, 0)), N'ACCOUNTING', N'NEW YORK')
GO
INSERT [dbo].[department] ([department_number], [department_name], [location]) VALUES (CAST(20 AS Decimal(2, 0)), N'RESEARCH', N'DALLAS')
GO
INSERT [dbo].[department] ([department_number], [department_name], [location]) VALUES (CAST(30 AS Decimal(2, 0)), N'SALES', N'CHICAGO')
GO
INSERT [dbo].[department] ([department_number], [department_name], [location]) VALUES (CAST(40 AS Decimal(2, 0)), N'OPERATIONS', N'BOSTON')
GO
INSERT [dbo].[employee] ([employee_number], [employee_name], [job], [manager], [hire_date], [salary], [commision], [department_number]) VALUES (CAST(7369 AS Decimal(4, 0)), N'SMITH', N'CLERK', CAST(7902 AS Decimal(4, 0)), CAST(0x000095C000000000 AS DateTime), CAST(800.00 AS Decimal(7, 2)), NULL, CAST(20 AS Decimal(2, 0)))
GO
INSERT [dbo].[employee] ([employee_number], [employee_name], [job], [manager], [hire_date], [salary], [commision], [department_number]) VALUES (CAST(7499 AS Decimal(4, 0)), N'ALLEN', N'SALESMAN', CAST(7698 AS Decimal(4, 0)), CAST(0x0000960100000000 AS DateTime), CAST(1600.00 AS Decimal(7, 2)), CAST(300.00 AS Decimal(7, 2)), CAST(30 AS Decimal(2, 0)))
GO
INSERT [dbo].[employee] ([employee_number], [employee_name], [job], [manager], [hire_date], [salary], [commision], [department_number]) VALUES (CAST(7521 AS Decimal(4, 0)), N'WARD', N'SALESMAN', CAST(7698 AS Decimal(4, 0)), CAST(0x0000960300000000 AS DateTime), CAST(1250.00 AS Decimal(7, 2)), CAST(500.00 AS Decimal(7, 2)), CAST(30 AS Decimal(2, 0)))
GO
INSERT [dbo].[employee] ([employee_number], [employee_name], [job], [manager], [hire_date], [salary], [commision], [department_number]) VALUES (CAST(7566 AS Decimal(4, 0)), N'JONES', N'MANAGER', CAST(7839 AS Decimal(4, 0)), CAST(0x0000962A00000000 AS DateTime), CAST(2975.00 AS Decimal(7, 2)), NULL, CAST(20 AS Decimal(2, 0)))
GO
INSERT [dbo].[employee] ([employee_number], [employee_name], [job], [manager], [hire_date], [salary], [commision], [department_number]) VALUES (CAST(7654 AS Decimal(4, 0)), N'MARTIN', N'SALESMAN', CAST(7698 AS Decimal(4, 0)), CAST(0x000096DD00000000 AS DateTime), CAST(1250.00 AS Decimal(7, 2)), CAST(1400.00 AS Decimal(7, 2)), CAST(30 AS Decimal(2, 0)))
GO
INSERT [dbo].[employee] ([employee_number], [employee_name], [job], [manager], [hire_date], [salary], [commision], [department_number]) VALUES (CAST(7698 AS Decimal(4, 0)), N'BLAKE', N'MANAGER', CAST(7839 AS Decimal(4, 0)), CAST(0x0000964700000000 AS DateTime), CAST(2850.00 AS Decimal(7, 2)), NULL, CAST(30 AS Decimal(2, 0)))
GO
INSERT [dbo].[employee] ([employee_number], [employee_name], [job], [manager], [hire_date], [salary], [commision], [department_number]) VALUES (CAST(7782 AS Decimal(4, 0)), N'CLARK', N'MANAGER', CAST(7839 AS Decimal(4, 0)), CAST(0x0000966E00000000 AS DateTime), CAST(2450.00 AS Decimal(7, 2)), NULL, CAST(10 AS Decimal(2, 0)))
GO
INSERT [dbo].[employee] ([employee_number], [employee_name], [job], [manager], [hire_date], [salary], [commision], [department_number]) VALUES (CAST(7788 AS Decimal(4, 0)), N'SCOTT', N'ANALYST', CAST(7566 AS Decimal(4, 0)), CAST(0x00009ECA00000000 AS DateTime), CAST(3000.00 AS Decimal(7, 2)), NULL, CAST(20 AS Decimal(2, 0)))
GO
INSERT [dbo].[employee] ([employee_number], [employee_name], [job], [manager], [hire_date], [salary], [commision], [department_number]) VALUES (CAST(7839 AS Decimal(4, 0)), N'KING', N'PRESIDENT', NULL, CAST(0x0000970F00000000 AS DateTime), CAST(5000.00 AS Decimal(7, 2)), NULL, CAST(10 AS Decimal(2, 0)))
GO
INSERT [dbo].[employee] ([employee_number], [employee_name], [job], [manager], [hire_date], [salary], [commision], [department_number]) VALUES (CAST(7844 AS Decimal(4, 0)), N'TURNER', N'SALESMAN', CAST(7698 AS Decimal(4, 0)), CAST(0x000096C900000000 AS DateTime), CAST(1500.00 AS Decimal(7, 2)), CAST(0.00 AS Decimal(7, 2)), CAST(30 AS Decimal(2, 0)))
GO
INSERT [dbo].[employee] ([employee_number], [employee_name], [job], [manager], [hire_date], [salary], [commision], [department_number]) VALUES (CAST(7876 AS Decimal(4, 0)), N'ADAMS', N'CLERK', CAST(7788 AS Decimal(4, 0)), CAST(0x00009EEC00000000 AS DateTime), CAST(1100.00 AS Decimal(7, 2)), NULL, CAST(20 AS Decimal(2, 0)))
GO
INSERT [dbo].[employee] ([employee_number], [employee_name], [job], [manager], [hire_date], [salary], [commision], [department_number]) VALUES (CAST(7900 AS Decimal(4, 0)), N'JAMES', N'CLERK', CAST(7698 AS Decimal(4, 0)), CAST(0x0000971F00000000 AS DateTime), CAST(950.00 AS Decimal(7, 2)), NULL, CAST(30 AS Decimal(2, 0)))
GO
INSERT [dbo].[employee] ([employee_number], [employee_name], [job], [manager], [hire_date], [salary], [commision], [department_number]) VALUES (CAST(7902 AS Decimal(4, 0)), N'FORD', N'ANALYST', CAST(7566 AS Decimal(4, 0)), CAST(0x0000971F00000000 AS DateTime), CAST(3000.00 AS Decimal(7, 2)), NULL, CAST(20 AS Decimal(2, 0)))
GO
INSERT [dbo].[employee] ([employee_number], [employee_name], [job], [manager], [hire_date], [salary], [commision], [department_number]) VALUES (CAST(7934 AS Decimal(4, 0)), N'MILLER', N'CLERK', CAST(7782 AS Decimal(4, 0)), CAST(0x0000975200000000 AS DateTime), CAST(1300.00 AS Decimal(7, 2)), NULL, CAST(10 AS Decimal(2, 0)))
GO

use [SalesDb]
 
select * from dbo.employee where employee_number=7521

select customer.customer_name, employee.employee_name as salesMan, *
from dbo.customer inner join dbo.employee on customer.saleman_employee_number=employee.employee_number;

select c.customer_name, e.employee_name, c.* 
from customer as c inner join employee as e on c.saleman_employee_number=e.employee_number

select c.customer_name, e.employee_name, * 
from customer as c left outer join employee as e on c.saleman_employee_number=e.employee_number

select * from dbo.department
select * from employee

select d.department_name, avg(e.salary) as Average_Salary
from employee e inner join department d on e.department_number=d.department_number where e.job !='President'
group by department_name
having avg(e.salary)>1700
order by avg(e.salary)desc

select * from employee inner join department on employee.department_number=department.department_number;
select * from employee left outer join department on employee.department_number=department.department_number;

select employee.employee_name as TheEmployee, * 
from employee right outer join department on employee.department_number=department.department_number 
where employee.job !='President'
order by employee.employee_name


create view dbo.Vcustomer_sales_man
AS 
select customer.customer_number,
	customer.customer_name,
	customer.customer_number as Number,
	customer.saleman_employee_number as salesman_employee_number,
	convert (varchar, employee.hire_date,101) as SalesManHireDate,
	employee.employee_name as salesman_employee_name, 
	employee.department_number as salesman_department_number
from dbo.customer left outer join employee on customer.saleman_employee_number=employee.employee_number;

CREATE VIEW  dbo.CustomerSalesDepartment
AS
select cs.*
,department.department_name
, department.location as Salesman_location
from dbo.Vcustomer_sales_man as cs left outer join department on cs.salesman_department_number=department.department_number;

drop view dbo.Vcustomer_sales_man
create view dbo.Vcustomer_sales_man
AS 
select customer.customer_number,
	customer.customer_name,
	customer.customer_number as Number,
	customer.saleman_employee_number as salesman_employee_number,
	convert (varchar, employee.hire_date,101) as SalesManHireDate,
	employee.employee_name as salesman_employee_name, 
	employee.department_number as salesman_department_number
from dbo.customer left outer join employee on customer.saleman_employee_number=employee.employee_number;

CREATE VIEW  dbo.CustomerSalesDepartment
AS
select cs.*
,department.department_name
, department.location as Salesman_location
from dbo.Vcustomer_sales_man as cs left outer join department on cs.salesman_department_number=department.department_number;

use [SalesDb]

create procedure dbo.spHireDate
AS
select max(hire_date) Max_date from employee
execute dbo.spHireDate

declare @job varchar(9)
set @job='SALESMAN'
select * from employee where job=@job;

CREATE PROCEDURE DBO.spAddNumbers
(
		@number1 int
		,@number2 int
		,@number3 int
)
AS
BEGIN
declare @result int, @biggest int, @secondbiggest int;
if
	@number1 > number2 @biggest=@number1;
else 
	@biggest=@number2;

set @result=@number1 + @number2;
set @result=@result + @number3;
select @result;
END

CREATE PROCEDURE DBO.spRankNumbers
(
		@number1 int
		,@number2 int
)
AS
BEGIN
declare @biggest int, @smallest int;
if
	@number1 > @number2 
	BEGIN
		set @biggest=@number1;
		set @smallest=@number2;
	END
else 
	BEGIN
		set @smallest=@number1;
		set @biggest=@number2;
	END
	SELECT @biggest as largeNumber, @smallest as SmallNumbers
END

execute dbo.spRankNumbers 1,6




