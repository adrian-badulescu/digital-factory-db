CREATE PROCEDURE [dbo].[spGetOptionsPrices]

AS
BEGIN
	SELECT PriceId, HostingBasic, HostingStandard, HostingPremium, Maintenance3, Maintenance6, Maintenance12, SslCertificate, Seo, Logo, CallFromPage, ContactForm, SocialNetworks, NumberOfEmailAddresses2, NumberOfEmailAddresses5, NumberOfEmailAddresses10
	FROM dbo.OptionsPrices;
END