/****** Script for SelectTopNRows command from SSMS  ******/
USE [GoldblueUTC]
GO

/****** Object:  Table [dbo].[BetSelection]    Script Date: 01/09/2021 22:19:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
DROP TABLE IF EXISTS [GoldblueUTC].[dbo].[BetSelection]
GO
CREATE TABLE [GoldblueUTC].[dbo].[BetSelection](
	[BetId] [bigint] NOT NULL,
	[SelectionId] [bigint] NOT NULL,
	[Price] [decimal](8, 3) NOT NULL,
	[State] [smallint] NOT NULL,
	[IsLive] [bit] NULL,
	[MatchInfo] [varchar](255) NULL,
	[Stake] [decimal](18, 2) NULL,
	[Liability] [decimal](18, 2) NULL,
	[Winning] [decimal](18, 2) NULL,
	[StakePC] [decimal](18, 2) NULL,
	[LiabilityPC] [decimal](18, 2) NULL,
	[WinningPC] [decimal](18, 2) NULL,
	[MatchId] [int] NULL,
	[MarketId] [bigint] NULL,
	[IsVoid] [bit] NOT NULL,
	[VoidReason] [varchar](255) NULL,
	[Order] [int] NOT NULL,
	[ExtraInfo] [varchar](4000) NULL,
	[Modified] [datetime] NOT NULL,
	[SessionId] [int] NOT NULL,
	[HomeScore] [int] NULL,
	[AwayScore] [int] NULL,
	[OfferedPrice] [decimal](8, 3) NOT NULL,
	[ActualPrice] [decimal](8, 3) NOT NULL,
	[IsManualPrice] [bit] NOT NULL,
	[ExternalBookmakerId] [int] NULL,
	[CashOutPrice] [decimal](8, 3) NULL,
	[CashOutSelectionId] [bigint] NULL,
	[OriginalPrice] [decimal](19, 5) NULL,
	[PriceType] [int] NULL,
	[IsManuallySettled] [bit] NULL,
	[ArbitragePercent] [decimal](5, 2) NULL,
	[ExternalReasonNameId] [int] NULL,
	[ArbitrageName] [varchar](50) NULL,
	[IsBanker] [bit] NULL,
	[IsBOG] [bit] NULL,
 CONSTRAINT [PK_BetSelection] PRIMARY KEY CLUSTERED 
(
	[BetId] ASC,
	SelectionID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [GoldblueUTC].[dbo].[BetSelection] ADD  CONSTRAINT [DF_BetSelection_IsLive]  DEFAULT ((0)) FOR [IsLive]
GO

ALTER TABLE [GoldblueUTC].[dbo].[BetSelection] ADD  CONSTRAINT [DF_BetSelection_IsVoid]  DEFAULT ((0)) FOR [IsVoid]
GO

ALTER TABLE [GoldblueUTC].[dbo].[BetSelection] ADD  CONSTRAINT [DF_BetSelection_Order]  DEFAULT ((0)) FOR [Order]
GO

ALTER TABLE [GoldblueUTC].[dbo].[BetSelection] ADD  DEFAULT (sysdatetime()) FOR [Modified]
GO

ALTER TABLE [GoldblueUTC].[dbo].[BetSelection] ADD  DEFAULT ((1)) FOR [SessionId]
GO

ALTER TABLE [GoldblueUTC].[dbo].[BetSelection] ADD  DEFAULT ((0)) FOR [OfferedPrice]
GO

ALTER TABLE [GoldblueUTC].[dbo].[BetSelection] ADD  DEFAULT ((0)) FOR [ActualPrice]
GO

ALTER TABLE [GoldblueUTC].[dbo].[BetSelection] ADD  DEFAULT ((0)) FOR [IsManualPrice]
GO

insert into [GoldblueUTC].[dbo].[BetSelection]
SELECT DISTINCT
		[BetId]
      ,[SelectionId]
      ,[Price]
      ,[State]
      ,[IsLive]
      ,[MatchInfo]
      ,[Stake]
      ,[Liability]
      ,[Winning]
      ,[StakePC]
      ,[LiabilityPC]
      ,[WinningPC]
      ,[MatchId]
      ,[MarketId]
      ,[IsVoid]
      ,[VoidReason]
      ,[Order]
      ,[ExtraInfo]
      ,DATEADD(HOUR,-4,a.[Modified])
      ,[SessionId]
      ,[HomeScore]
      ,[AwayScore]
      ,[OfferedPrice]
      ,[ActualPrice]
      ,[IsManualPrice]
      ,[ExternalBookmakerId]
      ,[CashOutPrice]
      ,[CashOutSelectionId]
      ,[OriginalPrice]
      ,[PriceType]
      ,[IsManuallySettled]
      ,[ArbitragePercent]
      ,[ExternalReasonNameId]
      ,[ArbitrageName]
      ,[IsBanker]
      ,[IsBOG]
  FROM [Goldblue].[dbo].[BetSelection] a




