CREATE PROCEDURE [dbo].[spTemplate_Get]
	@Id NVARCHAR(36)
AS
BEGIN
	SELECT TemplateId, Title, TemplatePrice, [Description], CoverImgUrl, IndexUrl
	FROM dbo.Templates
	WHERE TemplateId = @Id;
END
