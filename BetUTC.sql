USE [GoldblueUTC]
GO

/****** Object:  Table [dbo].[Bet]    Script Date: 01/09/2021 21:20:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
drop table if exists  [GoldblueUTC].[dbo].[Bet]
GO

CREATE TABLE [GoldblueUTC].[dbo].[Bet](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PartnerId] [int] NOT NULL,
	[DocumentId] [bigint] NOT NULL,
	[Type] [int] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[WinningAmount] [decimal](18, 2) NOT NULL,
	[Price] [decimal](9, 3) NOT NULL,
	[CurrencyId] [char](3) NOT NULL,
	[State] [int] NOT NULL,
	[Created] [datetime] NOT NULL,
	[Number] [bigint] NULL,
	[ClientId] [int] NULL,
	[CashDeskId] [int] NULL,
	[UpdateVersion] [binary](8) NOT NULL,
	[IsLive] [bit] NOT NULL,
	[CheckDate] [datetime] NULL,
	[CheckStatus] [int] NOT NULL,
	[CalcDate] [datetime] NULL,
	[Note] [nvarchar](250) NULL,
	[Source] [int] NULL,
	[InputMethod] [int] NOT NULL,
	[ExternalId] [bigint] NULL,
	[Details] [nvarchar](max) NULL,
	[SystemMinCount] [int] NULL,
	[BonusAmount] [decimal](18, 2) NOT NULL,
	[SettlementId] [bigint] NULL,
	[IsManuallySettled] [bit] NOT NULL,
	[PossibleWin] [decimal](18, 2) NOT NULL,
	[WinningBonus] [decimal](18, 2) NOT NULL,
	[ReviewedUserId] [int] NULL,
	[ReviewedStatus] [int] NULL,
	[ReviewedDate] [datetime] NULL,
	[SettlementError] [varchar](255) NULL,
	[ClientBonusId] [int] NULL,
	[FreeBetAmount] [decimal](18, 2) NOT NULL,
	[PaidDate] [datetime] NULL,
	[PaidCashdeskId] [int] NULL,
	[SelectionCount] [int] NULL,
	[NoteUpdatedBy] [int] NULL,
	[IsSuperBet] [bit] NOT NULL,
	[OldBetId] [bigint] NULL,
	[InfoCashDeskId] [int] NULL,
	[MannuallySettledUserId] [int] NULL,
	[WageringBonusId] [int] NULL,
	[Modified] [datetime] NOT NULL,
	[SessionId] [int] NOT NULL,
	[RealBetAmount] [decimal](18, 2) NOT NULL,
	[BonusBetAmount] [decimal](18, 2) NOT NULL,
	[WagerBonusWinAmount] [decimal](18, 2) NOT NULL,
	[OfferSessionId] [int] NULL,
	[LiveDelay] [int] NULL,
	[IsBonusMoney] [bit] NOT NULL,
	[TaxAmount] [decimal](18, 2) NULL,
	[DrawNumber] [varchar](50) NULL,
	[AmountInEUR] [decimal](18, 2) NULL,
	[WinningAmountInEUR] [decimal](18, 2) NULL,
	[IsMaxBet] [bit] NULL,
	[IsCounterOffer] [bit] NULL,
	[ChildBetId] [bigint] NULL,
	[TraderFlag] [int] NULL,
	[OddType] [int] NULL,
	[PossibleTaxAmount] [decimal](18, 2) NULL,
	[RejectedUserId] [int] NULL,
	[RecalculatedCount] [int] NULL,
	[TemplateId] [int] NULL,
	[IsCloudBet] [bit] NULL,
	[Hash] [varchar](256) NULL,
	[Tags] [int] NULL,
	[CloudBetAcceptedAmountInEUR] [decimal](18, 2) NULL,
	[IsEachWay] [bit] NULL,
	[ParentBetId] [bigint] NULL,
	[CashOutStake] [decimal](18, 2) NULL,
	[PromoType] [int] NULL,
	[IsAutoCashOut] [bit] NULL,
	[AdditionalInfo] [nvarchar](4000) NULL,
	[IsArbitrage] [bit] NULL,
	[IsGift] [bit] NULL,
	[StakeTaxAmount] [decimal](18, 2) NULL,
	[CashoutHistory] [varchar](2000) NULL,
	AmountEur [decimal](18, 2) NULL,
	WinningAmountEur [decimal](18, 2) NULL,
	BonusAmountEur [decimal](18, 2) NULL,
	PossibleWinEur [decimal](18, 2) NULL,
	WinningBonusEur [decimal](18, 2) NULL,
	FreeBetAmountEur [decimal](18, 2) NULL,
	RealBentAmountEur [decimal](18, 2) NULL,
	BonusBetAmountEur [decimal](18, 2) NULL,
	WagerBonusWinAmountEur [decimal](18, 2) NULL,
	TaxAmountEur [decimal](18, 2) NULL,
 CONSTRAINT [PK_Bet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Bet] ADD  DEFAULT ((0)) FOR [WinningAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Bet] ADD  DEFAULT ((0)) FOR [Price]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Bet] ADD  CONSTRAINT [DF_Bet_InputMethod]  DEFAULT ((1)) FOR [InputMethod]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Bet] ADD  CONSTRAINT [DF_Bet_BonusAmount]  DEFAULT ((0)) FOR [BonusAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Bet] ADD  CONSTRAINT [DF_Bet_IsManuallySettled]  DEFAULT ((0)) FOR [IsManuallySettled]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Bet] ADD  DEFAULT ((0)) FOR [PossibleWin]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Bet] ADD  DEFAULT ((0)) FOR [WinningBonus]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Bet] ADD  DEFAULT ((0)) FOR [FreeBetAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Bet] ADD  DEFAULT ((0)) FOR [IsSuperBet]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Bet] ADD  DEFAULT (sysdatetime()) FOR [Modified]
GO
ALTER TABLE [GoldblueUTC].[dbo].[Bet] ADD  DEFAULT ((1)) FOR [SessionId]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Bet] ADD  DEFAULT ((0)) FOR [RealBetAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Bet] ADD  DEFAULT ((0)) FOR [BonusBetAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Bet] ADD  DEFAULT ((0)) FOR [WagerBonusWinAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Bet] ADD  DEFAULT ((0)) FOR [IsBonusMoney]
GO


SET IDENTITY_INSERT  [GoldblueUTC].[dbo].[Bet] ON
GO

insert into [GoldblueUTC].[dbo].[Bet] 
([Id]
      ,[PartnerId]
      ,[DocumentId]
      ,[Type]
      ,[Amount]
      ,[WinningAmount]
      ,[Price]
      ,[CurrencyId]
      ,[State]
      ,[Created]
      ,[Number]
      ,[ClientId]
      ,[CashDeskId]
      ,[UpdateVersion]
      ,[IsLive]
      ,[CheckDate]
      ,[CheckStatus]
      ,[CalcDate]
      ,[Note]
      ,[Source]
      ,[InputMethod]
      ,[ExternalId]
      ,[Details]
      ,[SystemMinCount]
      ,[BonusAmount]
      ,[SettlementId]
      ,[IsManuallySettled]
      ,[PossibleWin]
      ,[WinningBonus]
      ,[ReviewedUserId]
      ,[ReviewedStatus]
      ,[ReviewedDate]
      ,[SettlementError]
      ,[ClientBonusId]
      ,[FreeBetAmount]
      ,[PaidDate]
      ,[PaidCashdeskId]
      ,[SelectionCount]
      ,[NoteUpdatedBy]
      ,[IsSuperBet]
      ,[OldBetId]
      ,[InfoCashDeskId]
      ,[MannuallySettledUserId]
      ,[WageringBonusId]
      ,[Modified]
      ,[SessionId]
      ,[RealBetAmount]
      ,[BonusBetAmount]
      ,[WagerBonusWinAmount]
      ,[OfferSessionId]
      ,[LiveDelay]
      ,[IsBonusMoney]
      ,[TaxAmount]
      ,[DrawNumber]
      ,[AmountInEUR]
      ,[WinningAmountInEUR]
      ,[IsMaxBet]
      ,[IsCounterOffer]
      ,[ChildBetId]
      ,[TraderFlag]
      ,[OddType]
      ,[PossibleTaxAmount]
      ,[RejectedUserId]
      ,[RecalculatedCount]
      ,[TemplateId]
      ,[IsCloudBet]
      ,[Hash]
      ,[Tags]
      ,[CloudBetAcceptedAmountInEUR]
      ,[IsEachWay]
      ,[ParentBetId]
      ,[CashOutStake]
      ,[PromoType]
      ,[IsAutoCashOut]
      ,[AdditionalInfo]
      ,[IsArbitrage]
      ,[IsGift]
      ,[StakeTaxAmount]
      ,[CashoutHistory]
		,AmountEur 
	,WinningAmountEur 
	,BonusAmountEur 
	,PossibleWinEur 
	,WinningBonusEur 
	,FreeBetAmountEur 
	,RealBentAmountEur 
	,BonusBetAmountEur 
	,WagerBonusWinAmountEur 
	,TaxAmountEur)
SELECT DISTINCT
		[Id]
      ,[PartnerId]
      ,[DocumentId]
      ,[Type]
      ,[Amount]
      ,[WinningAmount]
      ,[Price]
      ,[CurrencyId]
      ,[State]
      ,DATEADD(HOUR,-4,a.Created)
      ,[Number]
      ,[ClientId]
      ,[CashDeskId]
      ,[UpdateVersion]
      ,[IsLive]
      ,DATEADD(HOUR,-4,a.[CheckDate])
      ,[CheckStatus]
      ,DATEADD(HOUR,-4,a.[CalcDate])
      ,[Note]
      ,[Source]
      ,[InputMethod]
      ,[ExternalId]
      ,[Details]
      ,[SystemMinCount]
      ,[BonusAmount]
      ,[SettlementId]
      ,[IsManuallySettled]
      ,[PossibleWin]
      ,[WinningBonus]
      ,[ReviewedUserId]
      ,[ReviewedStatus]
      ,DATEADD(HOUR,-4,a.[ReviewedDate])
      ,[SettlementError]
      ,[ClientBonusId]
      ,[FreeBetAmount]
      ,DATEADD(HOUR,-4,a.[PaidDate])
      ,[PaidCashdeskId]
      ,[SelectionCount]
      ,[NoteUpdatedBy]
      ,[IsSuperBet]
      ,[OldBetId]
      ,[InfoCashDeskId]
      ,[MannuallySettledUserId]
      ,[WageringBonusId]
      ,DATEADD(HOUR,-4,a.[Modified])
      ,[SessionId]
      ,[RealBetAmount]
      ,[BonusBetAmount]
      ,[WagerBonusWinAmount]
      ,[OfferSessionId]
      ,[LiveDelay]
      ,[IsBonusMoney]
      ,[TaxAmount]
      ,[DrawNumber]
      ,[AmountInEUR]
      ,[WinningAmountInEUR]
      ,[IsMaxBet]
      ,[IsCounterOffer]
      ,[ChildBetId]
      ,[TraderFlag]
      ,[OddType]
      ,[PossibleTaxAmount]
      ,[RejectedUserId]
      ,[RecalculatedCount]
      ,[TemplateId]
      ,[IsCloudBet]
      ,[Hash]
      ,[Tags]
      ,[CloudBetAcceptedAmountInEUR]
      ,[IsEachWay]
      ,[ParentBetId]
      ,[CashOutStake]
      ,[PromoType]
      ,[IsAutoCashOut]
      ,[AdditionalInfo]
      ,[IsArbitrage]
      ,[IsGift]
      ,[StakeTaxAmount]
      ,[CashoutHistory]
	  ,case when a.CurrencyId = 'EUR' THEN a.Amount else a.Amount/cru.Rate end 
	  ,case when a.CurrencyId = 'EUR' THEN a.WinningAmount else a.WinningAmount/cru.Rate end 
	  ,case when a.CurrencyId = 'EUR' THEN a.BonusAmount else a.BonusAmount/cru.Rate end 
	  ,case when a.CurrencyId = 'EUR' THEN a.PossibleWin else a.PossibleWin/cru.Rate end 
	  ,case when a.CurrencyId = 'EUR' THEN a.WinningBonus else a.WinningBonus/cru.Rate end 
	  ,case when a.CurrencyId = 'EUR' THEN a.FreeBetAmount else a.FreeBetAmount/cru.Rate end 
	  ,case when a.CurrencyId = 'EUR' THEN a.RealBetAmount else a.RealBetAmount/cru.Rate end 
	  ,case when a.CurrencyId = 'EUR' THEN a.BonusBetAmount else a.BonusBetAmount/cru.Rate end
	  ,case when a.CurrencyId = 'EUR' THEN a.WagerBonusWinAmount else a.WagerBonusWinAmount/cru.Rate end 
	  ,case when a.CurrencyId = 'EUR' THEN a.TaxAmount else a.TaxAmount/cru.Rate end

  FROM [Goldblue].[dbo].[Bet] a
	 LEFT join [GoldblueUTC].[dbo].[CurrencyRateUpdate] cru on COALESCE(EOMONTH(DATEADD(HOUR,-4,a.CalcDate)),EOMONTH(DATEADD(HOUR,-4,a.Created)))= cru.CalendarDt and a.CurrencyId = cru.FromCurrency	

SET IDENTITY_INSERT  [GoldblueUTC].[dbo].[Bet] OFF
GO
