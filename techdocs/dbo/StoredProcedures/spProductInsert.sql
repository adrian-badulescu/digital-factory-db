CREATE PROCEDURE [dbo].[spProductInsert]
	@TemplateId UNIQUEIDENTIFIER,
	@TemplatePrice DECIMAL,
	@TemplateTitle NVARCHAR(40),	
	@OptionsPrice DECIMAL,
	@HostingBasic BIT,
	@HostingStandard BIT,
	@HostingPremium BIT,
	@SslCertificate BIT,
	@Seo BIT,
	@Logo BIT,
	@CallFromPage BIT,
	@ContactForm BIT,
	@SocialNetworks BIT,
	@Maintenance3 BIT,
	@Maintenance6 BIT,
	@Maintenance12 BIT,
	@NumberOfEmailAddresses2 BIT,
	@NumberOfEmailAddresses5 BIT,
	@NumberOfEmailAddresses10 BIT
	

AS
BEGIN
	INSERT INTO dbo.Products(TemplateId, TemplatePrice, TemplateTitle, OptionsPrice, HostingBasic, HostingStandard, HostingPremium, SslCertificate, Seo, Logo, CallFromPage, ContactForm, SocialNetworks, Maintenance3, Maintenance6, Maintenance12, NumberOfEmailAddresses2, NumberOfEmailAddresses5, NumberOfEmailAddresses10)
	VALUES(@TemplateId, @TemplatePrice, @TemplateTitle,  @OptionsPrice, @HostingBasic, @HostingStandard, @HostingPremium, @SslCertificate, @Seo, @Logo, @CallFromPage, @ContactForm, @SocialNetworks, @Maintenance3, @Maintenance6, @Maintenance12, @NumberOfEmailAddresses2, @NumberOfEmailAddresses5, @NumberOfEmailAddresses10)
END
