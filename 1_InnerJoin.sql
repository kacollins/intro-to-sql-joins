USE AdventureWorks2016
GO

SELECT *
FROM Production.ProductSubcategory
--ProductCategoryID is meaningless to us

SELECT *
FROM Production.ProductCategory
--Show the ProductCategory Name instead of the ID

SELECT SubcategoryName = PSC.Name
	, CategoryName = PC.Name
FROM Production.ProductSubcategory PSC
INNER JOIN Production.ProductCategory PC
ON PSC.ProductCategoryID = PC.ProductCategoryID
--ProductCategoryID is the primary key in the ProductCategory table
--ProductCategoryID is a foreign key in the ProductSubcategory table

