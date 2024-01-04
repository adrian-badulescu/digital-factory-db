CREATE TABLE [dbo].[OptionsPrices]
(
	[PriceId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(),	 
	[HostingBasic] DECIMAL(9,2),
	[HostingStandard] DECIMAL(9,2),
	[HostingPremium] DECIMAL(9,2),
	[Maintenance3] DECIMAL(9,2),
	[Maintenance6] DECIMAL(9,2),
	[Maintenance12] DECIMAL(9,2),
	[SslCertificate] DECIMAL(9,2),
	[NumberOfEmailAddresses2] DECIMAL(9,2),
	[NumberOfEmailAddresses5] DECIMAL(9,2),
	[NumberOfEmailAddresses10] DECIMAL(9,2), 
    [Seo] DECIMAL(9, 2) NULL, 
    [Logo] DECIMAL(9, 2) NULL, 
    [CallFromPage] DECIMAL(9, 2) NULL, 
    [ContactForm] DECIMAL(9, 2) NULL, 
    [SocialNetworks] DECIMAL(9, 2) NULL,
)

