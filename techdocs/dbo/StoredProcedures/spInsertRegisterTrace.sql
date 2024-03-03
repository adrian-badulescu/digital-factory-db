CREATE PROCEDURE [dbo].[spInsertRegisterTrace]		
	@Ip NVARCHAR(18),    
	@Status NVARCHAR(100),
	@Continent NVARCHAR(60),
	@Country NVARCHAR(120),
    @RegionName NVARCHAR(120),
    @City NVARCHAR(120),
    @District NVARCHAR(120),
    @Zip NVARCHAR(15),
    @Lat FLOAT,
    @Lon FLOAT,
    @Isp NVARCHAR(100)

AS
BEGIN
	INSERT INTO dbo.RegisterTraces (Ip, [Status], Continent, Country, RegionName, City, District, Zip, Lat, Lon, Isp)
	VALUES (@Ip, @Status, @Continent, @Country, @RegionName, @City, @District, @Zip, @Lat, @Lon, @Isp);
END