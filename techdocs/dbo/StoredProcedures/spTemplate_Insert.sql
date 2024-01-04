CREATE PROCEDURE [dbo].[spTemplate_Insert]
	@TemplateId UNIQUEIDENTIFIER,
	@Title NVARCHAR(40),
	@TemplatePrice BIGINT,
	@Description NVARCHAR(150),		
	@CoverImgUrl NVARCHAR(250),
	@KeyWords NVARCHAR(300),
	@IndexUrl NVARCHAR(250)
AS
BEGIN
	INSERT INTO dbo.Templates (TemplateId, Title, TemplatePrice, [Description], CoverImgUrl, KeyWords, IndexUrl)
	VALUES (@TemplateId, @Title, @TemplatePrice * 100, @Description, @CoverImgUrl, @KeyWords, @IndexUrl);
END
