CREATE PROCEDURE [dbo].[spCustomer_Insert]
	@OrderId NVARCHAR(150),	
	@Name NVARCHAR(70),
	@Email NVARCHAR(50),
	@Phone NVARCHAR(15)	
	
AS
BEGIN
	INSERT INTO dbo.Customers(OrderId, FullName, Email, Phone)	
	VALUES (@OrderId, @Name, @Email, @Phone);
END
 