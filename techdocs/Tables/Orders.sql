CREATE TABLE [dbo].[Orders]
(
	[StripeOrderId] NVARCHAR(255) NOT NULL  PRIMARY KEY,	
    [TemplateId] UNIQUEIDENTIFIER FOREIGN KEY REFERENCES [dbo].[Templates](TemplateId) NOT NULL, 
    [TemplateTitle] NVARCHAR(40),
    [TemplateDescription] NVARCHAR(100),
    [AcceptedTC] BIT NOT NULL, 
    [HostingPremium] BIT NULL, 
    [HostingStandard] BIT NULL, 
    [HostingBasic] BIT NULL, 
    [Maintenance12] BIT NULL, 
    [Maintenance6] BIT NULL, 
    [Maintenance3] BIT NULL, 
    [OTimeStampCreation] DATETIME NULL DEFAULT(GETDATE()),  
    [SslCertificate] BIT NULL, 
    [NumberOfEmailAddresses2] BIT NULL, 
    [NumberOfEmailAddresses5] BIT NULL, 
    [NumberOfEmailAddresses10] BIT NULL,    
    [Webdomain] NVARCHAR(60) NOT NULL, 
    [Seo] BIT NULL, 
    [Logo] BIT NULL, 
    [CallFromPage] BIT NULL, 
    [ContactForm] BIT NULL, 
    [SocialNetworks] BIT NULL, 
    [OTimeStampLastUpdate] DATETIME NULL
)

