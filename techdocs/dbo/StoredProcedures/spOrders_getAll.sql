CREATE PROCEDURE [dbo].[spOrders_getAll]


AS
BEGIN
	SELECT StripeOrderId, TemplateId, AcceptedTC, HostingPremium, HostingStandard, HostingBasic, Maintenance12, Maintenance6, Maintenance3, OTimeStampCreation, SslCertificate, NumberOfEmailAddresses2, NumberOfEmailAddresses5, NumberOfEmailAddresses10, TemplateTitle, Webdomain, Seo, Logo, ContactForm, CallFromPage, SocialNetworks
	FROM dbo.Orders;
END
