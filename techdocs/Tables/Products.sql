CREATE TABLE [dbo].[Products]
(
	[ProductId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(),
	[TemplateId] UNIQUEIDENTIFIER FOREIGN KEY (TemplateId) REFERENCES [dbo].[Templates](TemplateId) NOT NULL,
	[TemplateTitle] NVARCHAR(40) FOREIGN KEY ([TemplateTitle]) REFERENCES [dbo].[Templates](Title) NOT NULL UNIQUE,	
	[TemplatePrice] DECIMAL NOT NULL,
	[OptionsPrice] DECIMAL NOT NULL,
	[HostingBasic] BIT NULL,
	[HostingStandard] BIT NULL,
	[HostingPremium] BIT NULL,
	[Maintenance3] BIT NULL,
	[Maintenance6] BIT NULL,
	[Maintenance12] BIT NULL,
	[SslCertificate] BIT NULL,
	[NumberOfEmailAddresses2] BIT NULL,
	[NumberOfEmailAddresses5] BIT NULL,
	[NumberOfEmailAddresses10] BIT NULL, 
    [Seo] BIT NULL, 
    [Logo] BIT NULL, 
    [CallFromPage] BIT NULL, 
    [ContactForm] BIT NULL, 
    [SocialNetworks] BIT NULL,
	
)
