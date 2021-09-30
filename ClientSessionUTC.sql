USE [GoldblueUTC]
GO

/****** Object:  Table [GoldblueUTC].[dbo].[ClientSession]    Script Date: 01/09/2021 23:57:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
DROP TABLE IF EXISTS [GoldblueUTC].[dbo].[ClientSession]
GO

CREATE TABLE [GoldblueUTC].[dbo].[ClientSession](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NULL,
	[LoginIP] [varchar](50) NOT NULL,
	[Source] [int] NULL,
	[Token] [varchar](256) NOT NULL,
	[CashDeskId] [int] NULL,
	[LoginType] [int] NULL,
	[Product] [int] NULL,
	[DeviceId] [int] NULL,
	[UserId] [int] NULL,
	[LogoutSource] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_ClientSession] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientSession] ADD  DEFAULT ('') FOR [Token]
GO
SET IDENTITY_INSERT  [GoldblueUTC].[dbo].[ClientSession] ON
GO
INSERT INTO [GoldblueUTC].[dbo].[ClientSession]
([Id]
      ,[ClientId]
      ,[StartTime]
      ,[EndTime]
      ,[LoginIP]
      ,[Source]
      ,[Token]
      ,[CashDeskId]
      ,[LoginType]
      ,[Product]
      ,[DeviceId]
      ,[UserId]
      ,[LogoutSource]
      ,[Status])
SELECT DISTINCT
		[Id]
      ,[ClientId]
      ,DATEADD(HOUR,-4,[StartTime])
      ,DATEADD(HOUR,-4,[EndTime])
      ,[LoginIP]
      ,[Source]
      ,[Token]
      ,[CashDeskId]
      ,[LoginType]
      ,[Product]
      ,[DeviceId]
      ,[UserId]
      ,[LogoutSource]
      ,[Status]
  FROM [Goldblue].[dbo].[ClientSession]

SET IDENTITY_INSERT  [GoldblueUTC].[dbo].[ClientSession] OFF
GO
