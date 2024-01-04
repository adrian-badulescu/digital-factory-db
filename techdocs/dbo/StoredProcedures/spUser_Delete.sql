CREATE PROCEDURE [dbo].[spUser_Delete]
	@Email NVARCHAR(32)
AS
BEGIN
	DELETE  
	FROM dbo.Users
	WHERE Email = @Email;
END
