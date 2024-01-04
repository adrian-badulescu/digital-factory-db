CREATE PROCEDURE [dbo].[spCustomer_Update]
	@CustomerId UNIQUEIDENTIFIER,
	@OrderId UNIQUEIDENTIFIER,	
	@FullName NVARCHAR(70),
	@Email NVARCHAR(50),
	@Phone NVARCHAR(15),
	@OtherDetails NVARCHAR(150),
	@CTimeStampLastUpdate DATETIME
AS
SET @CTimeStampLastUpdate = GETDATE();
BEGIN
	UPDATE dbo.Customers
	SET OrderId = @OrderId,	
	FullName = @FullName,
	Email = @Email,
	Phone = @Phone
	WHERE CustomerId = @CustomerId;
END
