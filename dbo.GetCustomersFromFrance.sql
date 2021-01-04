CREATE PROCEDURE GetCustomersFromFrance
AS
	SELECT * FROM Customers
	Where Country = 'France'
RETURN