CREATE PROCEDURE [dbo].[spLegal_Get]

AS
BEGIN
	SELECT TOP (1) HtmlString FROM dbo.Legal
END

