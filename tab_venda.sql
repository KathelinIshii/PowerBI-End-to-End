SELECT
	PP.FirstName + ' ' + PP.LastName,
	SOH.OrderDate,
	SOH.TotalDue
FROM Sales.SalesOrderHeader AS SOH
INNER JOIN Sales.Customer AS SC
ON SC.CustomerID = SOH.CustomerID
INNER JOIN Person.Person PP
ON PP.BusinessEntityID = SC.CustomerID;

--Maiores clientes com base nas vendas (Nome do cliente, valor total da venda por dia, mês ou ano)