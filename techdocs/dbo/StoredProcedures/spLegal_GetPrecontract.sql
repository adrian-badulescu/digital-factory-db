CREATE PROCEDURE [dbo].[spLegal_GetPrecontract]

AS
BEGIN
	SELECT TOP (1) [RoHtmlStringPrecontractualTC] FROM dbo.Legal
END