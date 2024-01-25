CREATE PROCEDURE [dbo].[spLegal_Get]

AS
BEGIN
	SELECT TOP (1) [RoHtmlStringForPdfContract], [RoHtmlStringEmailContent] FROM dbo.Legal
END

