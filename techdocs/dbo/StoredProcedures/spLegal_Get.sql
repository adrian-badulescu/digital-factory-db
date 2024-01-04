CREATE PROCEDURE [dbo].[spLegal_Get]
	@FileName NVARCHAR(60),
	@FileType NVARCHAR(60)
AS
BEGIN
	SELECT  [FileName], [FileType], [Document]
	FROM dbo.Legal
	WHERE FileName = @FileName AND FileType = @FileType;
END
