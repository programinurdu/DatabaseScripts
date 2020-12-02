CREATE DATABASE TestDB2Join2
Go

Use TestDB2Join2
Go

CREATE TABLE [dbo].[Students]
(
	[StudentId] [int] NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[DateOfBirth] [datetime] NULL,
	[Notes] [nvarchar](max) NULL,
)
Go

CREATE TABLE [dbo].[StudentsAddresses]
(
	[AddressId] [int] NOT NULL,
	[StudentId] [int] NULL,
	[Address1] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[PostCode] [nvarchar](50) NULL,
)
Go

-- Data 
INSERT [dbo].[Students] ([StudentId], [FullName], [Email], [Mobile], [DateOfBirth], [Notes]) VALUES (1, N'John Smith', N'j.smith@gmail.com', N'0762589632', CAST(N'2001-11-20T00:00:00.000' AS DateTime), N'x')
GO
INSERT [dbo].[Students] ([StudentId], [FullName], [Email], [Mobile], [DateOfBirth], [Notes]) VALUES (2, N'Adam Wilson', N'adam.w@abc.com', N'0778523698', CAST(N'1999-12-21T00:00:00.000' AS DateTime), N'x')
GO
INSERT [dbo].[Students] ([StudentId], [FullName], [Email], [Mobile], [DateOfBirth], [Notes]) VALUES (3, N'James Taylor', N'james.taylor@abc.com', N'0748523698', CAST(N'1996-11-02T00:00:00.000' AS DateTime), N'x')
GO
INSERT [dbo].[Students] ([StudentId], [FullName], [Email], [Mobile], [DateOfBirth], [Notes]) VALUES (4, N'Tony Griag', N'Tony.g@abc.com', N'0745896325', CAST(N'1995-11-02T00:00:00.000' AS DateTime), N'x')
GO
INSERT [dbo].[StudentsAddresses] ([AddressId], [StudentId], [Address1], [City], [Country], [PostCode]) VALUES (1, 1, N'123 ABC Road', N'London', N'United Kingdom', N'SW32 2AL')
GO
INSERT [dbo].[StudentsAddresses] ([AddressId], [StudentId], [Address1], [City], [Country], [PostCode]) VALUES (2, 2, N'34A Jones Street', N'Leeds', N'United Kingdom', N'LE34 3BA')
GO
INSERT [dbo].[StudentsAddresses] ([AddressId], [StudentId], [Address1], [City], [Country], [PostCode]) VALUES (3, 3, N'45 Taylor Road', N'Aylesburry', N'United Kingdom', N'HE3 3AL')
GO
INSERT [dbo].[StudentsAddresses] ([AddressId], [StudentId], [Address1], [City], [Country], [PostCode]) VALUES (4, 5, N'23 XYZ Street', N'Glassgow', N'United Kingdom', N'GL2 3MN')
GO