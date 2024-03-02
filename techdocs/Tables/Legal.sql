CREATE TABLE [dbo].[Legal]
(
	[LegalId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(),
	[RoHtmlStringForPdfContract] NVARCHAR(MAX) NOT NULL,
	[EnHtmlStringForPdfContract] NVARCHAR(MAX) NULL,
	[RoHtmlStringEmailContent] NVARCHAR(MAX) NOT NULL,
	[EnHtmlStringEmailContent] NVARCHAR(MAX) NULL,
	[RoHtmlStringPrecontractualTC] NVARCHAR(MAX) NULL,
	[EnHtmlStringPrecontractualTC] NVARCHAR(MAX) NULL
)
