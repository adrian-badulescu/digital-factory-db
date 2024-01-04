CREATE PROCEDURE [dbo].[spTemplate_Delete]
	@TemplateId uniqueidentifier
AS
BEGIN
	DELETE  
	FROM dbo.Templates
	WHERE TemplateId = @TemplateId;
END