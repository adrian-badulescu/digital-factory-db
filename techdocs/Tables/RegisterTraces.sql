CREATE TABLE [dbo].[RegisterTraces]
(
	[LoginId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT newid(),	
	[Ip] NVARCHAR(18) NOT NULL,	
    [TimeStamp] DATETIME DEFAULT(GETDATE()) NOT NULL,
	[Status] NVARCHAR(100) NULL,
	[Continent] NVARCHAR(60) NULL,
	[County] NVARCHAR(120) NULL,
    [RegionName] NVARCHAR(120) NULL,
    [City] NVARCHAR(120) NULL,
    [District] NVARCHAR(120) NULL,
    [Zip] NVARCHAR(15) NULL,
    [Lat] FLOAT NULL,
    [Lon] FLOAT NULL,
    [Isp] NVARCHAR(100) NULL
)