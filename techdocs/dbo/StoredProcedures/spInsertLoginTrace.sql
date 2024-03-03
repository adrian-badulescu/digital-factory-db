CREATE PROCEDURE [dbo].[spInsertLoginTrace]		
	@Ip NVARCHAR(18),    
	@Status NVARCHAR(100),
	@Continent NVARCHAR(60),
	@County NVARCHAR(120),
    @RegionName NVARCHAR(120),
    @City NVARCHAR(120),
    @District NVARCHAR(120),
    @Zip NVARCHAR(15),
    @Lat FLOAT,
    @Lon FLOAT,
    @Isp NVARCHAR(100)

AS
BEGIN
	INSERT INTO dbo.LoginTraces (Ip, [Status], Continent, County, RegionName, City, District, Zip, Lat, Lon, Isp)
	VALUES (@Ip, @Status, @Continent, @County, @RegionName, @City, @District, @Zip, @Lat, @Lon, @Isp);
END