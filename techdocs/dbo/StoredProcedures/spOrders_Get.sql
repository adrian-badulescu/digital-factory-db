CREATE PROCEDURE [dbo].[spOrders_Get]
	@OrderId NVARCHAR(150)
AS
BEGIN
	SELECT StripeOrderId, TemplateId, AcceptedTC, HostingPremium, HostingStandard, HostingBasic, Maintenance12, Maintenance6, Maintenance3, OTimeStampCreation, SslCertificate, NumberOfEmailAddresses2, NumberOfEmailAddresses5, NumberOfEmailAddresses10, TemplateTitle, Webdomain
	FROM dbo.Orders
	WHERE StripeOrderId = @OrderId;
END
