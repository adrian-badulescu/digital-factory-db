CREATE PROCEDURE [dbo].[spOrders_Delete]
	@OrderId NVARCHAR(150)
AS
BEGIN
	DELETE  
	FROM dbo.Orders
	WHERE StripeOrderId = @OrderId;
END
