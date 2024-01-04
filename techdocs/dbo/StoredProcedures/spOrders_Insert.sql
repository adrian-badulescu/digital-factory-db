CREATE PROCEDURE [dbo].[spOrders_Insert]
	@OrderId NVARCHAR(150) ,
	@TemplateId UNIQUEIDENTIFIER,
	@TemplateTitle NVARCHAR(40),
	@TemplateDescription NVARCHAR(100),
	@AcceptedTC BIT,
	@HostingPremium BIT,
	@HostingStandard BIT,
	@HostingBasic BIT,
	@Maintenance12 BIT,
	@Maintenance6 BIT,
	@Maintenance3 BIT,
	@SslCertificate BIT,
	@Seo BIT,
	@Logo BIT,
	@CallFromPage BIT,
	@ContactForm BIT,
	@SocialNetworks BIT,
	@NumberOfEmailAddresses2 BIT,
	@NumberOfEmailAddresses5 BIT,
	@NumberOfEmailAddresses10 BIT,	
	@Webdomain NVARCHAR(60)

AS
BEGIN
	INSERT INTO dbo.Orders(StripeOrderId, TemplateId, TemplateTitle, TemplateDescription, AcceptedTC, HostingPremium, HostingStandard, HostingBasic, Maintenance12, Maintenance6, Maintenance3, SslCertificate, Seo, Logo, CallFromPage, ContactForm, SocialNetworks, NumberOfEmailAddresses2, NumberOfEmailAddresses5, NumberOfEmailAddresses10, Webdomain)
	VALUES (@OrderId, @TemplateId, @TemplateTitle, @TemplateDescription, @AcceptedTC, @HostingPremium, @HostingStandard, @HostingBasic, @Maintenance12, @Maintenance6, @Maintenance3, @SslCertificate, @Seo, @Logo, @CallFromPage, @ContactForm, @SocialNetworks, @NumberOfEmailAddresses2, @NumberOfEmailAddresses5, @NumberOfEmailAddresses10, @Webdomain);
END
