CREATE TABLE [dbo].[Legal]
(
	[LegalId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(),
	FileName nvarchar(60),
    FileType nvarchar(60),
    Document varbinary(max)
)
