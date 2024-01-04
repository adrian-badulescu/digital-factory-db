CREATE PROCEDURE [dbo].[spCustomers_getAll]

AS
BEGIN
	SELECT CustomerId, OrderId, FullName, Email, Phone
	from dbo.Customers;
END
