SELECT
	TOP 10 PP.FirstName + ' ' + PP.LastName AS NomeCustomer,
	SOH.OrderDate,
	SOH.TotalDue
FROM Sales.SalesOrderHeader AS SOH
INNER JOIN Sales.Customer AS SC
ON SC.CustomerID = SOH.CustomerID
INNER JOIN Person.Person PP
ON PP.BusinessEntityID = SC.CustomerID;

--Maiores clientes com base nas vendas (Nome do cliente, valor total da venda por dia, m�s ou ano)