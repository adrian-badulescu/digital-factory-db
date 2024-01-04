CREATE PROCEDURE  [dbo].[spTemplate_searchTemplate]

@searchString NVARCHAR(100)


AS
BEGIN
DECLARE @divisor DECIMAL(7,2)
SET @divisor = 0.01

SELECT [TemplateId], [Title], ([TemplatePrice] * @divisor) AS [TemplatePrice], [Description], [CoverImgUrl], [KeyWords], [IndexUrl], (SELECT COUNT(TemplateId) FROM dbo.Templates WHERE CHARINDEX(@searchString COLLATE Latin1_General_BIN, [KeyWords] COLLATE Latin1_General_BIN)>0 ) AS NumberOfTemplates
FROM dbo.Templates
WHERE CHARINDEX(@searchString COLLATE Latin1_General_BIN, [KeyWords] COLLATE Latin1_General_BIN)>0 
ORDER BY NumberOfTemplates DESC
END
