/****** Script for SelectTopNRows command from SSMS  ******/
USE [GoldblueUTC]
GO

/****** Object:  Table [dbo].[Balance]    Script Date: 01/09/2021 14:53:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
drop table if exists [GoldblueUTC].[dbo].[Balance];
CREATE TABLE [GoldblueUTC].[dbo].[Balance](
	[AccountId] [varchar](30) NOT NULL,
	[BalanceDate] [date] NOT NULL,
	[Debit] [decimal](18, 2) NOT NULL,
	[Credit] [decimal](18, 2) NOT NULL,
	[BalanceAmount] [decimal](18, 2) NOT NULL,
	[Modified] [datetime] NOT NULL,
	[SessionId] [int] NOT NULL,
	[CurrencyId] [varchar](30) NOT NULL,
	[Rate] float NULL,
	[BalanceTypeId] [varchar](30) NOT NULL,
	[PartnerId] [bigint] NOT NULL,
	[ObjectType] [varchar] (30) NOT NULL,
	[ObjectId] [varchar](30) NOT NULL,
	[DebitEur] [decimal](18, 2)  NULL,
	[CreditEur] [decimal](18, 2)  NULL,
	[BalanceAmountEur] [decimal](18, 2)  NULL,
 CONSTRAINT [PK_Balance] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC,
	[BalanceDate] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Balance] ADD  DEFAULT (sysdatetime()) FOR [Modified]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Balance] ADD  DEFAULT ((1)) FOR [SessionId]
GO


insert into [GoldblueUTC].[dbo].[Balance]
SELECT DISTINCT 
		[AccountId]
      ,[BalanceDate]
      ,[Debit]
      ,[Credit]
      ,[BalanceAmount]
      ,DATEADD(HOUR,-4,a.[Modified])
      ,[SessionId]
	  ,reverse(substring(reverse([AccountId]),0,charindex('-',reverse([AccountId]))))  
	  ,cru.Rate
	,LEFT([AccountId], CHARINDEX('-', [AccountId]) - 1)
	,LEFT(RIGHT([AccountId], len([AccountId]) - charindex('-', [AccountId])), CHARINDEX('-', RIGHT([AccountId], len([AccountId]) - charindex('-', [AccountId]))) - 1)
	,LEFT(RIGHT(RIGHT([AccountId], len([AccountId]) - charindex('-', [AccountId])),LEN(RIGHT([AccountId], len([AccountId]) - charindex('-', [AccountId])))- charindex ('-',RIGHT([AccountId], len([AccountId]) - charindex('-', [AccountId])))), CHARINDEX('-', RIGHT(RIGHT([AccountId], len([AccountId]) - charindex('-', [AccountId])),LEN(RIGHT([AccountId], len([AccountId]) - charindex('-', [AccountId])))- charindex ('-',RIGHT([AccountId], len([AccountId]) - charindex('-', [AccountId]))))) - 1)
	,LEFT(RIGHT(RIGHT(RIGHT([AccountId], len([AccountId]) - charindex('-', [AccountId])),len(RIGHT([AccountId], len([AccountId]) - charindex('-', [AccountId]))) - charindex ('-' ,RIGHT([AccountId], len([AccountId]) - charindex('-', [AccountId])))),len(RIGHT(RIGHT([AccountId], len([AccountId]) - charindex('-', [AccountId])),len(RIGHT([AccountId], len([AccountId]) - charindex('-', [AccountId]))) - charindex ('-' ,RIGHT([AccountId], len([AccountId]) - charindex('-', [AccountId]))))) - charindex ('-',RIGHT(RIGHT([AccountId], len([AccountId]) - charindex('-', [AccountId])),len(RIGHT([AccountId], len([AccountId]) - charindex('-', [AccountId]))) - charindex ('-' ,RIGHT([AccountId], len([AccountId]) - charindex('-', [AccountId])))))) , charindex ('-',RIGHT(RIGHT(RIGHT([AccountId], len([AccountId]) - charindex('-', [AccountId])),len(RIGHT([AccountId], len([AccountId]) - charindex('-', [AccountId]))) - charindex ('-' ,RIGHT([AccountId], len([AccountId]) - charindex('-', [AccountId])))),len(RIGHT(RIGHT([AccountId], len([AccountId]) - charindex('-', [AccountId])),len(RIGHT([AccountId], len([AccountId]) - charindex('-', [AccountId]))) - charindex ('-' ,RIGHT([AccountId], len([AccountId]) - charindex('-', [AccountId]))))) - charindex ('-',RIGHT(RIGHT([AccountId], len([AccountId]) - charindex('-', [AccountId])),len(RIGHT([AccountId], len([AccountId]) - charindex('-', [AccountId]))) - charindex ('-' ,RIGHT([AccountId], len([AccountId]) - charindex('-', [AccountId])))))))-1)
	,case when reverse(substring(reverse([AccountId]),0,charindex('-',reverse([AccountId])))) = 'EUR' THEN a.[Debit] else a.[Debit]/cru.Rate end 
	,case when reverse(substring(reverse([AccountId]),0,charindex('-',reverse([AccountId])))) = 'EUR' THEN a.[Credit] else a.[Credit]/cru.Rate end 
	,case when reverse(substring(reverse([AccountId]),0,charindex('-',reverse([AccountId])))) = 'EUR' THEN a.[BalanceAmount] else a.[BalanceAmount]/cru.Rate end
FROM [Goldblue].[dbo].[Balance] a
	LEFT join [GoldblueUTC].[dbo].[CurrencyRateUpdate] cru on EOMONTH(DATEADD(HOUR,-4,a.[Modified]))= cru.CalendarDt and reverse(substring(reverse([AccountId]),0,charindex('-',reverse([AccountId])))) = cru.FromCurrency	


	
