SELECT
	PP.FirstName + ' ' + PP.LastName,
	SOH.OrderDate,
	SOH.TotalDue
FROM Sales.SalesOrderHeader AS SOH
INNER JOIN Sales.Customer AS SC
ON SC.CustomerID = SOH.CustomerID
INNER JOIN Person.Person PP
ON PP.BusinessEntityID = SC.CustomerID;