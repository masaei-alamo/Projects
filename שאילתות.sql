-- שאילתות 
-- שאלה 1 :
select top 5 p.[name],sum(sod.[UnitPrice]*sod.[OrderQty]) as sum_amount_sale
from [dbo].[Product] p inner join [dbo].[SalesOrderDetail] sod on p.productid = sod.productid
group by p.[Name]
order by sum_amount_sale desc


-- שאלה 2 :
select pc.[Name],AVG(sod.[UnitPrice])  as avg_unit_price
from [SalesOrderDetail] sod 
inner join Product p  on sod.ProductID = p.ProductID
inner join  ProductSubcategory psc on p.ProductSubcategoryID = psc.ProductSubcategoryID
inner join Productcategory pc on psc.[ProductCategoryID] = pc.[ProductCategoryID] 
where pc.[Name] in ('Bikes', 'Components')
group by pc.[Name]


-- שאלה 3:
select p.[Name] as productname, sum(sod.[OrderQty]) as total_qty_orders
from  SalesOrderDetail sod
inner join [Product] p on sod.ProductID = p.ProductID
inner join ProductSubcategory psc on psc.ProductSubcategoryID = P.ProductSubcategoryID
inner join ProductCategory pc on psc.ProductCategoryID = pc.ProductCategoryID
where pc.[Name] not in ('Clothing','Components')
group by p.[Name]
order by total_qty_orders desc

-- שאלה 4 :
select top 3 st.[Name] , sum (soh.[TotalDue])  as sum_totaldue
from SalesTerritory st inner join SalesOrderHeader soh on st.TerritoryID = soh.TerritoryID
group by  st.[Name]
order by sum_totaldue desc 

-- שאלה 5 :
select c.[CustomerID],c.[PersonID], p.[FirstName] + ' ' + p.[LastName] as full_name 
from Customer c 
left join person p on c.PersonID = p.BusinessEntityID 
left join SalesOrderHeader soh on c.CustomerID = soh.CustomerID
where soh.SalesOrderID is null

-- שאלה 6:
delete 
from SalesTerritory 
where TerritoryID not in (select distinct TerritoryID 
from SalesOrderHeader where TerritoryID is not null)

-- שאלה 7:

--identity_insert on
set identity_insert SalesTerritory on

insert into SalesTerritory ([TerritoryID],[Name],[CountryRegionCode],[Group],[SalesYTD],
[SalesLastYear],[CostYTD],[CostLastYear],[rowguid],[ModifiedDate])
select [TerritoryID],[Name],[CountryRegionCode],[Group],[SalesYTD],
[SalesLastYear],[CostYTD],[CostLastYear],[rowguid],[ModifiedDate]
from [AdventureWorks2022].[Sales].[SalesTerritory]
where TerritoryID not in ( select st.TerritoryID from SalesTerritory st)
-- identity_insert off
set identity_insert SalesTerritory off

-- שאלה 8:
--person id in customer we have 701 null 
-- if we use inner join , we can lose customers that have orders 
select p.FirstName + ' ' + p.LastName AS FullName, count(soh.SalesOrderID) as count_saleorder
from Customer c
left join Person p ON c.PersonID = p.BusinessEntityID
inner join SalesOrderHeader soh ON c.CustomerID = soh.CustomerID
group by c.CustomerID, p.FirstName, p.LastName
having count(soh.SalesOrderID) > 20;

-- שאלה 9:
select [GroupName], count(distinct [DepartmentID]) as totaldepartments
from [Department]
group by [GroupName]
having count(distinct [DepartmentID]) > 2


-- שאלה 10:
select p.[FirstName], d.[GroupName] as DepartmentName , s.[Name] as ShiftName 
from [Person] p inner join [Employee] e on p.BusinessEntityID = e.BusinessEntityID
inner join [EmployeeDepartmentHistory] edh on edh.BusinessEntityID = e.BusinessEntityID
inner join [Department] d on d.[DepartmentID] = edh.[DepartmentID]
inner join [Shift] s on s.[ShiftID] = edh.[ShiftID]
where year(edh.StartDate) > '2010' and d.[GroupName] in ('quality assurance' , 'Manufacturing')





