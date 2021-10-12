
USE [GoldblueUTC]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
drop table if exists [GoldblueUTC].[dbo].[Document]
CREATE TABLE [GoldblueUTC].[dbo].[Document](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PartnerId] [int] NOT NULL,
	[TypeId] [int] NOT NULL,
	[GameId] [int] NULL,
	[CurrencyId] [char](3) NOT NULL,
	[State] [int] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[TransactionDate] [date] NOT NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
	[SessionId] [int] NOT NULL,
	[AmountExpression] [varchar](255) NULL,
	[CashDeskId] [int] NULL,
	[PaymentSystemId] [int] NULL,
	[ClientId] [int] NULL,
	[Note] [nvarchar](500) NULL,
	[ParentId] [bigint] NULL,
	[ExternalId] [varchar](50) NULL,
	[ExternalTypeId] [int] NULL,
	[ClientSessionId] [int] NULL,
	[UpdateVersion] [binary](8) NOT NULL,
	[IsProcessed] [bit] NULL,
	[PaidCashDeskId] [int] NULL,
	[ThirdPartyId] [varchar](64) NULL,
	[IsReviewed] [bit] NULL,
	[AmountEur] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET IDENTITY_INSERT  [GoldblueUTC].[dbo].[Document] ON
GO
Declare @id bigint
Set @id = (select MAX(id) from [GoldblueUTC].[dbo].[Document])
-- truncate table [GoldblueUTC].[dbo].[Document];
insert into [GoldblueUTC].[dbo].[Document]
	([Id]       ,[PartnerId]      ,[TypeId]      ,[GameId]      ,[CurrencyId]      ,[State]      ,[Amount]      ,[TransactionDate]      ,[Created]      ,[Modified]    	,[SessionId]      ,[AmountExpression]      ,[CashDeskId]
      ,[PaymentSystemId]      ,[ClientId]      ,[Note]      ,[ParentId]      ,[ExternalId]      ,[ExternalTypeId]      ,[ClientSessionId]      ,[UpdateVersion]      ,[IsProcessed]      ,[PaidCashDeskId]      ,[ThirdPartyId]      ,[IsReviewed]	  ,[AmountEur] )
SELECT DISTINCT 
		[Id]
      ,[PartnerId]
      ,[TypeId]
      ,[GameId]
      ,[CurrencyId]
      ,[State]
      ,[Amount]
      ,convert(date,DATEADD(HOUR,-4,[Created]))
	  ,DATEADD(HOUR,-4,[Created])
      ,DATEADD(HOUR,-4,d.[Modified])
      ,[SessionId]
      ,[AmountExpression]
      ,[CashDeskId]
      ,[PaymentSystemId]
      ,[ClientId]
      ,[Note]
      ,[ParentId]
      ,[ExternalId]
      ,[ExternalTypeId]
      ,[ClientSessionId]
      ,[UpdateVersion]
      ,[IsProcessed]
      ,[PaidCashDeskId]
      ,[ThirdPartyId]
      ,[IsReviewed]
	  ,case when d.CurrencyId = 'EUR' THEN d.Amount else d.Amount/cru.Rate end [AmountEur]

FROM [GBU].[Goldblue].[dbo].[Document] d
	LEFT join [GoldblueUTC].[dbo].[CurrencyRateUpdate] cru on convert(date,DATEADD(MONTH, DATEDIFF(MONTH, -1, DATEADD(HOUR,-4,d.Created))-1, -1))= cru.CalendarDt and d.CurrencyId = cru.FromCurrency
where d.id > @id
SET IDENTITY_INSERT  [GoldblueUTC].[dbo].[Document] OFF
GO


