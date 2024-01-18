CREATE TABLE [dbo].[Customers]
(
	[CustomerId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY default newid(),	
	[OrderId] NVARCHAR(255) FOREIGN KEY REFERENCES [dbo].[Orders](StripeOrderId) NOT NULL,	
	[FullName] NVARCHAR(100),
	[Email] nvarchar(60),
	[Phone] nvarchar(15)	
)
