CREATE TABLE [dbo].[Templates]
(
	[TemplateId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY    ,
	[Title] NVARCHAR(40) NULL UNIQUE,
	[TemplatePrice] BIGINT NOT NULL, 
	[Description] NVARCHAR(150),	
	[CoverImgUrl] NVARCHAR(250),
	[KeyWords] NVARCHAR(300),     
    [IndexUrl] NVARCHAR(250) NOT NULL,

)