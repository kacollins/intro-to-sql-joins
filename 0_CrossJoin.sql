USE AdventureWorks2016
GO

SELECT *
FROM HumanResources.Department
--16 departments

SELECT *
FROM HumanResources.Shift
--3 shifts

SELECT DepartmentName = d.Name
	, ShiftName = s.Name
	--Number of employees for department and shift
FROM HumanResources.Department d
CROSS JOIN HumanResources.Shift s
--48 combinations

--comma syntax (don't use this)
SELECT DepartmentName = d.Name
	, ShiftName = s.Name
FROM HumanResources.Department d, HumanResources.Shift s
