SELECT
	PP.Name,
	SOH.OrderDate,
	SOD.LineTotal
FROM Sales.SalesOrderDetail AS SOD
INNER JOIN Production.Product AS PP
ON SOD.ProductID = PP.ProductID
INNER JOIN Sales.SalesOrderHeader SOH
ON SOD.SalesOrderID = SOH.SalesOrderID;

--Produtos mais vendidos com base no valor das vendas (Nome do produto, valor vendido por dia, mês ou ano).

CREATE VIEW SalesProduct AS
SELECT
	PP.Name,
	SOH.OrderDate,
	SOD.LineTotal
FROM Sales.SalesOrderDetail AS SOD
INNER JOIN Production.Product AS PP
ON SOD.ProductID = PP.ProductID
INNER JOIN Sales.SalesOrderHeader SOH
ON SOD.SalesOrderID = SOH.SalesOrderID;

---------------

UPDATE Production.Product
SET Name = 'Sport-100 Helmet, Blue'
WHERE ProductID = 711;

SELECT * FROM Production.Product;