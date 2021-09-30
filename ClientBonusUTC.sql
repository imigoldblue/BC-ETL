USE [GoldblueUTC]
GO

/****** Object:  Table[GoldblueUTC].[dbo].[ClientBonus]    Script Date: 01/09/2021 22:53:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
DROP TABLE IF EXISTS  [GoldblueUTC].[dbo].[ClientBonus]
GO

CREATE TABLE [GoldblueUTC].[dbo].[ClientBonus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[PartnerBonusId] [int] NOT NULL,
	[AcceptanceType] [int] NOT NULL,
	[AcceptanceDate] [datetime] NULL,
	[ResultType] [int] NOT NULL,
	[ResultDate] [datetime] NULL,
	[Count] [int] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[ExpirationDate] [datetime] NULL,
	[ExternalId] [int] NULL,
	[RealAmount] [decimal](18, 2) NOT NULL,
	[WinAmount] [decimal](18, 2) NOT NULL,
	[WageredAmount] [decimal](18, 2) NOT NULL,
	[ToWagerAmount] [decimal](18, 2) NOT NULL,
	[PaidAmount] [decimal](18, 2) NOT NULL,
	[Note] [nvarchar](255) NULL,
	[CreatedBySessionId] [int] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NOT NULL,
	[SessionId] [int] NOT NULL,
	[DocumentId] [bigint] NULL,
	[PaymentDocumentId] [bigint] NULL,
	[UpdateVersion] [binary](8) NOT NULL,
	[PromoCodeId] [int] NULL,
	[CancellationNote] [nvarchar](255) NULL,
	[CampainId] [varchar](255) NULL,
	[AmountEur] [decimal](18, 2)  NULL,
	[RealAmountEur] [decimal](18, 2)  NULL,
	[WinAmountEur] [decimal](18, 2)  NULL,
	[WageredAmountEur] [decimal](18, 2)  NULL,
	[ToWagerAmountEur] [decimal](18, 2)  NULL,
	[PaidAmountEur] [decimal](18, 2)  NULL,
 CONSTRAINT [PK_ClientBonus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientBonus] ADD  DEFAULT ((0)) FOR [AcceptanceType]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientBonus] ADD  DEFAULT ((0)) FOR [ResultType]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientBonus] ADD  DEFAULT ((0)) FOR [Count]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientBonus] ADD  DEFAULT ((0)) FOR [Amount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientBonus] ADD  DEFAULT ((0)) FOR [RealAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientBonus] ADD  DEFAULT ((0)) FOR [WinAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientBonus] ADD  DEFAULT ((0)) FOR [WageredAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientBonus] ADD  DEFAULT ((0)) FOR [ToWagerAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientBonus] ADD  DEFAULT ((0)) FOR [PaidAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientBonus] ADD  DEFAULT (sysdatetime()) FOR [Modified]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientBonus] ADD  DEFAULT ((1)) FOR [SessionId]
GO

SET IDENTITY_INSERT  [GoldblueUTC].[dbo].[ClientBonus] ON
GO
insert into [GoldblueUTC].[dbo].[ClientBonus]
([Id]
      ,[ClientId]
      ,[PartnerBonusId]
      ,[AcceptanceType]
      ,[AcceptanceDate]
      ,[ResultType]
      ,[ResultDate]
      ,[Count]
      ,[Amount]
      ,[ExpirationDate]
      ,[ExternalId]
      ,[RealAmount]
      ,[WinAmount]
      ,[WageredAmount]
      ,[ToWagerAmount]
      ,[PaidAmount]
      ,[Note]
      ,[CreatedBySessionId]
      ,[Created]
      ,[Modified]
      ,[SessionId]
      ,[DocumentId]
      ,[PaymentDocumentId]
      ,[UpdateVersion]
      ,[PromoCodeId]
      ,[CancellationNote]
      ,[CampainId]
	  ,[AmountEur] 
	,[RealAmountEur] 
	,[WinAmountEur] 
	,[WageredAmountEur] 
	,[ToWagerAmountEur] 
	,[PaidAmountEur])
SELECT DISTINCT a.[Id]
      ,[ClientId]
      ,[PartnerBonusId]
      ,[AcceptanceType]
      ,DATEADD(HOUR,-4,[AcceptanceDate])
      ,[ResultType]
      ,DATEADD(HOUR,-4,[ResultDate])
      ,[Count]
      ,[Amount]
      ,DATEADD(HOUR,-4,[ExpirationDate])
      ,a.[ExternalId]
      ,[RealAmount]
      ,[WinAmount]
      ,[WageredAmount]
      ,[ToWagerAmount]
      ,[PaidAmount]
      ,[Note]
      ,[CreatedBySessionId]
      ,DATEADD(HOUR,-4,a.[Created])
      ,DATEADD(HOUR,-4,a.[Modified])
      ,a.[SessionId]
      ,[DocumentId]
      ,[PaymentDocumentId]
      ,[UpdateVersion]
      ,[PromoCodeId]
      ,[CancellationNote]
      ,[CampainId]
	  ,case when cl.CurrencyId = 'EUR' THEN a.Amount else a.Amount/cru.Rate end  
	  ,case when cl.CurrencyId = 'EUR' THEN a.RealAmount else a.RealAmount/cru.Rate end 
	  ,case when cl.CurrencyId = 'EUR' THEN a.WinAmount else a.WinAmount/cru.Rate end
	  ,case when cl.CurrencyId = 'EUR' THEN a.WageredAmount else a.WageredAmount/cru.Rate end 
	  ,case when cl.CurrencyId = 'EUR' THEN a.ToWagerAmount else a.ToWagerAmount/cru.Rate end 
	  ,case when cl.CurrencyId = 'EUR' THEN a.PaidAmount else a.PaidAmount/cru.Rate end 
  FROM [Goldblue].[dbo].[ClientBonus] a
	join [Goldblue].[dbo].[Client] cl on a.ClientId = cl.Id 
	LEFT join [GoldblueUTC].[dbo].[CurrencyRateUpdate] cru on EOMONTH(DATEADD(HOUR,-4,a.AcceptanceDate))= cru.CalendarDt and cl.currencyid = cru.FromCurrency	

SET IDENTITY_INSERT  [GoldblueUTC].[dbo].[ClientBonus] OFF
GO
