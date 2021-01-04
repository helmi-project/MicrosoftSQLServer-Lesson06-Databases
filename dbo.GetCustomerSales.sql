CREATE PROCEDURE [dbo].[GetCustomerSales]
	(
	@CustomerId char(5),
	@TotalSales money OUTPUT
	)
AS
	SELECT @TotalSales = SUM(Quantity * UnitPrice)
	FROM (Customers INNER JOIN Orders
	ON Customers.CustomerId = Orders.CustomerId)
	INNER JOIN [Order Details]
	ON Orders.OrderId = [Order Details].OrderId
	WHERE Customers.CustomerId = @CustomerId
RETURN