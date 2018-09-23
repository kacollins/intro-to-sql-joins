USE AdventureWorks2016
GO

--Product subcategories
SELECT ProductName = P.Name
	, SubcategoryName = PSC.Name
FROM production.Product P
LEFT OUTER JOIN Production.ProductSubcategory PSC
ON p.ProductSubcategoryID = PSC.ProductSubcategoryID
ORDER BY P.Name

--Products that have never been sold
SELECT P.ProductNumber
	, P.Name
FROM Production.Product P
LEFT OUTER JOIN Sales.SalesOrderDetail SOD
ON P.ProductID = SOD.ProductID
WHERE SOD.ProductID IS NULL

