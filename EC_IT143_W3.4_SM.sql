SELECT TOP 10
Name,
ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

SELECT BusinessEntityID, JobTitle
From HumanResources.Employee
WHERE JobTitle = 'Sales Representative';

SELECT
V.Name AS VendorName,
V.CreditRating,
p.Name AS ProductName
FROM Purchasing.Vendor V
JOIN Purchasing.ProductVendor pv
ON v.BusinessEntityID = pv.BusinessEntityID
JOIN Production.Product p
ON pv.ProductID = p.ProductID
WHERE p.Name LIKE '%Bolt%'
ORDER BY v.Name;

SELECT TOP 10
p.Name AS ProductName,
pc.Name AS CategoryName,
SUM(sod.OrderQty) AS TotalQuantitySold
FROM Sales.SalesOrderDetail sod
JOIN Production.Product p
ON sod.ProductID=p.ProductID
JOIN Production.ProductSubcategory ps
ON p.ProductSubcategoryID = ps.ProductSubcategoryID
JOIN Production.ProductCategory pc
ON ps.ProductCategoryID = pc.ProductCategoryID
GROUP BY p.Name, pc.Name
ORDER BY TotalQuantitySold DESC;

SELECT
P.Color AS FrameColour,
SUM(sod.orderQty) AS TotalQuantitySold,
AVG(sod.UnitPrice) AS AverageSalePrice,
SUM(sod.LineTotal) AS NetRevenue
FROM Sales.SalesOrderDetail sod
JOIN Production.Product p
ON sod.ProductID=p.ProductID
WHERE p.Name LIKE '%Road%'
GROUP BY p.Color
ORDER BY NetRevenue DESC;

SELECT
c.CustomerID,
AVG(soh.TotalDue) AS AverageOrderAmount
FROM Sales.Customer c
JOIN Sales.SalesOrderHeader soh
ON c.CustomerID = soh.CustomerID
WHERE soh.OrderDate >= DATEADD(YEAR, -3, GETDATE())
GROUP BY c.CustomerID
ORDER BY AverageOrderAmount DESC;

SELECT
TABLE_SCHEMA,
TABLE_NAME,
COLUMN_NAME
FROM Information_Schema.Columns
WHERE Column_Name = 'ProductID';

SELECT
TABLE_SCHEMA,
TABLE_NAME,
COLUMN_NAME
FROM Information_Schema.Columns
WHERE Column_Name IN ('CustomerID', 'AccountNumber');
