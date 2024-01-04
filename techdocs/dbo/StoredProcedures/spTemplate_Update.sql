CREATE PROCEDURE [dbo].[spTemplate_Update]
	@TemplateId UNIQUEIDENTIFIER,
	@Title NVARCHAR(40),
	@TemplatePrice BIGINT,
	@Description NVARCHAR(150),		
	@KeyWords NVARCHAR(300)	
AS
BEGIN
	UPDATE dbo.Templates
	SET Title = @Title, TemplatePrice = @TemplatePrice * 100, [Description] = @Description, KeyWords = @KeyWords
	WHERE TemplateId = @TemplateId;
END
