CREATE PROCEDURE [dbo].[spCustomer_Delete]
	@Id uniqueidentifier
AS
BEGIN
	DELETE  
	FROM dbo.Customers
	WHERE CustomerId = @Id;
END