CREATE PROCEDURE [dbo].[spCustomer_Get]
	@Id UNIQUEIDENTIFIER
AS
BEGIN
	SELECT CustomerId, OrderId, FullName, Email, Phone
	FROM dbo.Customers
	WHERE CustomerId = @Id;
END
