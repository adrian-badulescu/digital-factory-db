CREATE PROCEDURE [dbo].[spOrders_Update]
	@Id UNIQUEIDENTIFIER,
	@OrderId uniqueidentifier ,
	@TemplateId uniqueidentifier,
	@AcceptedTC bit,
	@HostingPremium bit,
	@HostingStandard bit,
	@HostingBasic bit,
	@Maintenance12 bit,
	@Maintenance6 bit,
	@Maintenance3 bit,
	@OTimeStampLastUpdate datetime,
	@SslCertificate bit,
	@Seo bit,
	@Logo bit,
	@CallFromPage bit,
	@ContactForm bit,
	@SocialNetworks bit,
	@NumberOfEmailAddresses2 bit,
	@NumberOfEmailAddresses5 bit,
	@NumberOfEmailAddresses10 bit,
	@TemplateTitle nvarchar(40),
	@Webdomain nvarchar(60)
AS
SET @OTimestampLastUpdate = GETDATE();
BEGIN
	UPDATE dbo.Orders
	SET StripeOrderId = @OrderId, TemplateId = @TemplateId, HostingPremium  = @HostingPremium, HostingStandard = @HostingStandard, HostingBasic = @HostingBasic,
	Maintenance12 = @Maintenance12, Maintenance6 = @Maintenance6, Maintenance3 = @Maintenance3, OTimeStampLastUpdate = @OTimestampLastUpdate, SslCertificate = @SslCertificate,
	NumberOfEmailAddresses2 = @NumberOfEmailAddresses2, NumberOfEmailAddresses5 = @NumberOfEmailAddresses5, NumberOfEmailAddresses10 = @NumberOfEmailAddresses10,
	TemplateTitle = @TemplateTitle, Webdomain = @Webdomain, Seo = @Seo, Logo = @Logo, CallFromPage = @CallFromPage, ContactForm = @ContactForm, SocialNetworks = @SocialNetworks
	WHERE StripeOrderId = @OrderId;
END
