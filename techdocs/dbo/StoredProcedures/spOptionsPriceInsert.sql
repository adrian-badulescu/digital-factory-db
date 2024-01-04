CREATE PROCEDURE [dbo].[spOptionsPriceInsert]	
	@HostingBasic DECIMAL(9, 2),
	@HostingStandard DECIMAL(9, 2),
	@HostingPremium DECIMAL(9, 2),
	@SslCertificate DECIMAL(9, 2),
	@Seo DECIMAL(9, 2),
	@Logo DECIMAL(9, 2),
	@CallFromPage DECIMAL(9, 2),
	@ContactForm DECIMAL(9, 2),
	@SocialNetworks DECIMAL(9, 2),
	@Maintenance3 DECIMAL(9, 2),
	@Maintenance6 DECIMAL(9, 2),
	@Maintenance12 DECIMAL(9, 2),
	@NumberOfEmailAddresses2 DECIMAL(9, 2),
	@NumberOfEmailAddresses5 DECIMAL(9, 2),
	@NumberOfEmailAddresses10 DECIMAL(9, 2)
	

AS
BEGIN
	INSERT INTO dbo.OptionsPrices( HostingBasic, HostingStandard, HostingPremium, SslCertificate, Seo, Logo, CallFromPage, ContactForm, SocialNetworks, Maintenance3, Maintenance6, Maintenance12, NumberOfEmailAddresses2, NumberOfEmailAddresses5, NumberOfEmailAddresses10)
	VALUES( @HostingBasic * 100, @HostingStandard * 100, @HostingPremium * 100, @SslCertificate * 100, @Seo * 100, @Logo * 100, @CallFromPage * 100, @ContactForm * 100, @SocialNetworks * 100, @Maintenance3 * 100, @Maintenance6 * 100, @Maintenance12 * 100, @NumberOfEmailAddresses2 * 100, @NumberOfEmailAddresses5 * 100, @NumberOfEmailAddresses10 * 100)
END
