-- פרויקט 
-- : שאלה מספר 1 

with cte as (
    select 
        year([OrderDate]) as orderyear,
        sum([Quantity] * [unitprice]) as yearlylinaerincome,
        sum(sil.[Quantity] * sil.[unitprice]) / count(distinct month(orderdate)) * 12 as lineryearlyincome,
        count(distinct month(orderdate)) as numberofdistmonth
    from [Sales].[Orders] so
    inner join [Sales].[Invoices] si on so.orderid = si.orderid
    inner join [Sales].[InvoiceLines] sil on si.invoiceid = sil.invoiceid
    group by year([OrderDate])
)
select 
    orderyear, 
    yearlylinaerincome,
    numberofdistmonth,
    lineryearlyincome,
    lag(lineryearlyincome) over (order by orderyear) as prev_kinearyearlyincome,
    (lineryearlyincome / lag(lineryearlyincome) over (order by orderyear) - 1) * 100 as growthrate
from cte 


-- : שאלה מספר 2 

with cte as (
    select 
        year(o.[orderdate]) as yeardate,
        datepart(quarter, o.[orderdate]) as quarterdate,
        c.[customername],
        sum(ol.[quantity] * ol.[unitprice]) as income,
        dense_rank() over (partition by year(o.[orderdate]), datepart(quarter, o.[orderdate]) order by sum(ol.[quantity] * ol.[unitprice]) desc) as dnr
    from [sales].[customers] c
    inner join [sales].[orders] o on c.customerid = o.customerid
    inner join [sales].[orderlines] ol on o.orderid = ol.orderid
    group by year(o.[orderdate]), datepart(quarter, o.[orderdate]), c.[customername]
)
select 
    yeardate, 
    quarterdate, 
    customername, 
    income, 
    dnr
from cte
where dnr <= 5
order by [yeardate], [quarterdate], dnr


-- : שאלה מספר 3 

with cte as (
    select 
        si.stockitemid,
        si.stockitemname,
        sum(ol.[quantity] * ol.[unitprice] - ol.[TaxRate]) as totalprofit
    from [warehouse].[stockitems] si
    inner join [sales].[orderlines] ol on si.stockitemid = ol.stockitemid
    group by si.stockitemid, si.stockitemname
)
select top 10 
    stockitemid,
    stockitemname,
    totalprofit
from cte
order by totalprofit desc


-- : שאלה מספר 4 

with cte as (
    select 
        si.stockitemid,
        si.stockitemname,
        si.unitprice,
        si.recommendedretailprice,
        (si.recommendedretailprice - si.unitprice) as nominalproductprofit,
        row_number() over (order by (si.recommendedretailprice - si.unitprice) desc) as rn,
        dense_rank() over (order by (si.recommendedretailprice - si.unitprice) desc) as dnr
    from [warehouse].[stockitems] si
)
select 
    rn,
    stockitemid,
    stockitemname,
    unitprice,
    recommendedretailprice,
    nominalproductprofit,
    dnr
from cte
order by nominalproductprofit desc


-- : שאלה מספר 5

with cte as (
    select 
        s.supplierid,
        concat(s.supplierid, ' - ', s.suppliername) as supplierdetails,
        concat(si.stockitemid, ' "', si.stockitemname, '"') as productdetails
    from [warehouse].[stockitems] si
    inner join [purchasing].[suppliers] s on si.supplierid = s.supplierid
)
select 
    supplierdetails,
    string_agg(productdetails, ' /, ') as productdetails
from cte
group by supplierid, supplierdetails
order by supplierid


-- : שאלה מספר 6

with cte as (
    select 
        c.customerid,
        sum(il.extendedprice) as totalpurchaseamount,
        ci.cityname as cityname,
        sp.stateprovincename as deliverystate,
        co.countryname as countryname,
        co.continent as continent,
        co.region as region
    from [sales].[invoicelines] il
    inner join [sales].[invoices] i on il.invoiceid = i.invoiceid
    inner join [sales].[customers] c on i.customerid = c.customerid
    inner join [application].[cities] ci on c.deliverycityid = ci.cityid
    inner join [application].[stateprovinces] sp on ci.stateprovinceid = sp.stateprovinceid
    inner join [application].[countries] co on sp.countryid = co.countryid
    group by c.customerid, ci.cityname, sp.stateprovincename, co.countryname, co.continent, co.region
),
rankedcustomers as (
    select 
        customerid,
        totalpurchaseamount,
        cityname,
        deliverystate,
        countryname,
        continent,
        region,
        dense_rank() over (order by totalpurchaseamount desc) as ran_k
    from cte
)
select 
    customerid,
    cityname,
    countryname,
    continent,
    region,
    format(totalpurchaseamount, 'n2') as totalpurchaseamount
from rankedcustomers
where ran_k <= 5
order by ran_k


-- : שאלה מספר 7 

with cte as (
    select 
        year(o.orderdate) as orderyear,
        month(o.orderdate) as ordermonth,
        sum(ol.quantity * ol.unitprice) as monthlytotal
    from sales.orders o 
    inner join sales.orderlines ol on o.orderid = ol.orderid
    group by year(o.orderdate), month(o.orderdate)
),
cumulativesales as (
    select 
        orderyear,
        ordermonth,
        monthlytotal,
        sum(monthlytotal) over (partition by orderyear order by ordermonth) as cumulativetotal
    from cte
),
yearlysummary as (
    select 
        orderyear,
        13 as ordermonth, -- חודש 13 עבור grand total
        sum(monthlytotal) as monthlytotal,
        sum(monthlytotal) as cumulativetotal
    from cte
    group by orderyear
)
select 
    orderyear,
    case 
        when ordermonth = 13 then 'grand total' -- מציג grand total כטקסט
        else cast(ordermonth as varchar) 
    end as ordermonth,
    format(monthlytotal, 'n2') as monthlytotal, 
    format(cumulativetotal, 'n2') as cumulativetotal
from (select * from cumulativesales 
      union all 
      select * from yearlysummary) as combineddata
order by orderyear,
    case 
        when ordermonth = 13 then 13 -- סדר את grand total בסוף
        else ordermonth 
    end


-- : שאלה מספר 8 

with cte as (
    select 
        year(orderdate) as orderyear,
        month(orderdate) as ordermonth,
        count(orderid) as ordercount
    from [sales].[orders]
    group by year(orderdate), month(orderdate)
),
pivotdata as (
    select 
        ordermonth,
        isnull([2013], 0) as [2013],
        isnull([2014], 0) as [2014],
        isnull([2015], 0) as [2015],
        isnull([2016], 0) as [2016]
    from cte
    pivot (sum(ordercount) for orderyear in ([2013], [2014], [2015], [2016])) as pivottable
)
select 
    ordermonth,
    [2013], 
    [2014], 
    [2015], 
    [2016]
from pivotdata
order by ordermonth


-- : שאלה מספר 9
with cte 
as 
(select o.CustomerID,c.CustomerName, OrderDate,
lag(orderDate) over (partition by o.customerID order by orderDate) as prevOrder,
max(orderDate) over (partition by o.customerID) as lastOrder,
max(orderDate) over () as LastAllOrder,
datediff(day,lag(orderDate) over (partition by o.customerID order by orderDate),orderDate) as daysSinceLastOrder,
datediff(day,max(orderDate) over(partition by o.customerID), max(orderDate) over()) as diff
from sales.Customers as c inner join Sales.Orders as o
	on c.CustomerID = o.CustomerID ) 

select CustomerID,CustomerName,OrderDate,prevOrder, diff,
avg(daysSinceLastOrder) over(partition by CustomerID) as avgDaysBetweenOrders,
case when avg(daysSinceLastOrder) over(partition by CustomerID) > diff then 'active' else 'potenial churn' end
from cte
order by 1


-- : שאלה מספר 10
with  cte
as (
    select customercategoryname,
           count(distinct customername) as customercount,
           sum(count(distinct customername)) over () as totalcustcount
    from (
        select cc.customercategoryname,
               case
                   when customername like 'wingtip%' then 'wingtip'
                   when customername like 'tailspin%' then 'tailspin'
                   else customername
               end as customername
        from sales.customercategories as cc
        inner join sales.customers as c
        on cc.customercategoryid = c.customercategoryid
    ) as a
    group by customercategoryname
)
select *,
       cast(customercount as decimal(5, 2)) / totalcustcount * 100.0 as customerpercentage
from cte
