USE [GoldblueUTC]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
DROP TABLE IF EXISTS [GoldblueUTC].[dbo].[MatchState]
GO

CREATE TABLE [GoldblueUTC].[dbo].[MatchState](
	[MatchId] [int] NOT NULL,
	[SportId] [int] NOT NULL,
	[MatchData] [varchar](max) NOT NULL,
	[UpdateVersion] [binary](8) NOT NULL,
	[IsVisible] [bit] NOT NULL,
	[IsMatchSuspended] [bit] NOT NULL,
	[IsMatchAutoSuspended] [bit] NOT NULL,
	[IsAutoFeedRequested] [bit] NOT NULL,
	[IsAutoFeedConnected] [bit] NOT NULL,
	[SessionId] [int] NOT NULL,
	[Modified] [datetimeoffset](3) NOT NULL,
	[IsLive] [bit] NOT NULL,
	[ActualStartTime] [datetime] NULL,
	[MatchShortInfo] [nvarchar](1000) NULL,
	[Duration] [int] NULL,
	[SuspensionLiveDuration] [int] NULL,
	[SuspensionTime] [datetime] NULL,
	[SuspensionPreMatchDuration] [int] NULL,
	[SuspensionDuration] [int] NULL,
	[StartTradingTime] [datetime] NULL,
	[AutoConfirmMatchResultEnabled] [bit] NOT NULL,
	[MarketFactorsCorrectionEnabled] [bit] NOT NULL,
	[ExternalBookmakerId] [int] NULL,
	[IsOddServiceRequested] [bit] NULL,
	[OddServiceMatchId] [int] NULL,
	[IsPrematchMarketUpdateDisabled] [bit] NULL,
	[LiveDuration] [int] NULL,
	[LiveTime] [datetime] NULL,
 CONSTRAINT [PK_MatchState] PRIMARY KEY CLUSTERED 
(
	[MatchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [GoldblueUTC].[dbo].[MatchState] ADD  DEFAULT ((1)) FOR [IsVisible]
GO

ALTER TABLE [GoldblueUTC].[dbo].[MatchState] ADD  DEFAULT ((0)) FOR [IsMatchSuspended]
GO

ALTER TABLE [GoldblueUTC].[dbo].[MatchState] ADD  DEFAULT ((0)) FOR [IsMatchAutoSuspended]
GO

ALTER TABLE [GoldblueUTC].[dbo].[MatchState] ADD  DEFAULT ((0)) FOR [IsAutoFeedRequested]
GO

ALTER TABLE [GoldblueUTC].[dbo].[MatchState] ADD  DEFAULT ((0)) FOR [IsAutoFeedConnected]
GO

ALTER TABLE [GoldblueUTC].[dbo].[MatchState] ADD  DEFAULT ((0)) FOR [IsLive]
GO

ALTER TABLE [GoldblueUTC].[dbo].[MatchState] ADD  CONSTRAINT [DF_MatchState_AutoConfirmMatchResultEnabled]  DEFAULT ((1)) FOR [AutoConfirmMatchResultEnabled]
GO

ALTER TABLE [GoldblueUTC].[dbo].[MatchState] ADD  DEFAULT ((0)) FOR [MarketFactorsCorrectionEnabled]
GO


INSERT INTO [GoldblueUTC].[dbo].[MatchState]
SELECT TOP (1000) [MatchId]
      ,[SportId]
      ,[MatchData]
      ,[UpdateVersion]
      ,[IsVisible]
      ,[IsMatchSuspended]
      ,[IsMatchAutoSuspended]
      ,[IsAutoFeedRequested]
      ,[IsAutoFeedConnected]
      ,[SessionId]
      ,DATEADD(HOUR,-4,[Modified])
      ,[IsLive]
      ,DATEADD(HOUR,-4,[ActualStartTime])
      ,[MatchShortInfo]
      ,[Duration]
      ,[SuspensionLiveDuration]
      ,DATEADD(HOUR,-4,[SuspensionTime])
      ,[SuspensionPreMatchDuration]
      ,[SuspensionDuration]
      ,DATEADD(HOUR,-4,[StartTradingTime])
      ,[AutoConfirmMatchResultEnabled]
      ,[MarketFactorsCorrectionEnabled]
      ,[ExternalBookmakerId]
      ,[IsOddServiceRequested]
      ,[OddServiceMatchId]
      ,[IsPrematchMarketUpdateDisabled]
      ,[LiveDuration]
      ,DATEADD(HOUR,-4,[LiveTime])
  FROM [Goldblue].[dbo].[MatchState]