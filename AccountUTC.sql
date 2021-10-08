
USE [GoldblueUTC]
GO

/****** Object:  Table [dbo].[Account]    Script Date: 01/09/2021 13:57:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
DROP TABLE IF EXISTS [GoldblueUTC].[dbo].[Account];
CREATE TABLE [GoldblueUTC].[dbo].[Account](
	[Id] [varchar](30) NOT NULL,
	[PartnerId] [int] NOT NULL,
	[BalanceTypeId] [varchar](5) NOT NULL,
	[ObjectId] [bigint] NOT NULL,
	[ObjectType] [int] NOT NULL,
	[CurrencyId] [char](3) NOT NULL,
	[Balance] [decimal](18, 2) NOT NULL,
	[CreditLimit] [decimal](18, 2) NOT NULL,
	[IsUsingCredit] [bit] NOT NULL,
	[PreliminaryBalance] [decimal](18, 2) NOT NULL,
	[Modified] [datetime] NOT NULL,
	[SessionId] [int] NOT NULL,
	[BalanceEur] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Account] ADD  DEFAULT ((0)) FOR [CreditLimit]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Account] ADD  DEFAULT ((0)) FOR [IsUsingCredit]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Account] ADD  DEFAULT ((0)) FOR [PreliminaryBalance]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Account] ADD  DEFAULT (sysdatetime()) FOR [Modified]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Account] ADD  DEFAULT ((1)) FOR [SessionId]
GO

insert into [GoldblueUTC].[dbo].[Account]
SELECT DISTINCT
	   [Id]
      ,[PartnerId]
      ,[BalanceTypeId]
      ,[ObjectId]
      ,[ObjectType]
      ,[CurrencyId]
      ,[Balance]
      ,[CreditLimit]
      ,[IsUsingCredit]
      ,[PreliminaryBalance]
      ,DATEADD(HOUR,-4,a.[Modified])
      ,[SessionId]
	  ,case when a.CurrencyId = 'EUR' THEN a.Balance else a.Balance/cru.Rate end [BalaceEur]
--	 ,LEFT(RIGHT(Id, len(Id) - charindex('-', Id)), CHARINDEX('-', RIGHT(Id, len(Id) - charindex('-', Id))) - 1)
--	 ,LEFT([Id], CHARINDEX('-', [Id]) - 1)
--	,LEFT(RIGHT([Id], len([Id]) - charindex('-', [Id])), CHARINDEX('-', RIGHT([Id], len([Id]) - charindex('-', [Id]))) - 1)
--	,LEFT(RIGHT(RIGHT([Id], len([Id]) - charindex('-', [Id])),LEN(RIGHT([Id], len([Id]) - charindex('-', [Id])))- charindex ('-',RIGHT([Id], len([Id]) - charindex('-', [Id])))), CHARINDEX('-', RIGHT(RIGHT([Id], len([Id]) - charindex('-', [Id])),LEN(RIGHT([Id], len([Id]) - charindex('-', [Id])))- charindex ('-',RIGHT([Id], len([Id]) - charindex('-', [Id]))))) - 1)
--	,LEFT(RIGHT(RIGHT(RIGHT([Id], len([Id]) - charindex('-', [Id])),len(RIGHT([Id], len([Id]) - charindex('-', [Id]))) - charindex ('-' ,RIGHT([Id], len([Id]) - charindex('-', [Id])))),len(RIGHT(RIGHT([Id], len([Id]) - charindex('-', [Id])),len(RIGHT([Id], len([Id]) - charindex('-', [Id]))) - charindex ('-' ,RIGHT([Id], len([Id]) - charindex('-', [Id]))))) - charindex ('-',RIGHT(RIGHT([Id], len([Id]) - charindex('-', [Id])),len(RIGHT([Id], len([Id]) - charindex('-', [Id]))) - charindex ('-' ,RIGHT([Id], len([Id]) - charindex('-', [Id])))))) , charindex ('-',RIGHT(RIGHT(RIGHT([Id], len([Id]) - charindex('-', [Id])),len(RIGHT([Id], len([Id]) - charindex('-', [Id]))) - charindex ('-' ,RIGHT([Id], len([Id]) - charindex('-', [Id])))),len(RIGHT(RIGHT([Id], len([Id]) - charindex('-', [Id])),len(RIGHT([Id], len([Id]) - charindex('-', [Id]))) - charindex ('-' ,RIGHT([Id], len([Id]) - charindex('-', [Id]))))) - charindex ('-',RIGHT(RIGHT([Id], len([Id]) - charindex('-', [Id])),len(RIGHT([Id], len([Id]) - charindex('-', [Id]))) - charindex ('-' ,RIGHT([Id], len([Id]) - charindex('-', [Id])))))))-1)
  FROM [Goldblue].[dbo].[Account] a
	LEFT join [GoldblueUTC].[dbo].[CurrencyRateUpdate] cru on convert(date,DATEADD(MONTH, DATEDIFF(MONTH, -1, DATEADD(HOUR,-4,a.[Modified]))-1, -1))= cru.CalendarDt and a.CurrencyId = cru.FromCurrency		

	