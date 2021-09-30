USE [GoldblueUTC]
GO

/****** Object:  Table [GoldblueUTC].[dbo].[Match]    Script Date: 02/09/2021 00:32:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [GoldblueUTC].[dbo].[Match]
GO

CREATE TABLE [GoldblueUTC].[dbo].[Match](
	[Id] [int] NOT NULL,
	[CompetitionId] [int] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[ResultKind] [int] NOT NULL,
	[UpdateVersion] [binary](8) NOT NULL,
	[MatchInfo] [varchar](4000) NULL,
	[LiveStatus] [int] NOT NULL,
	[CancelReasonId] [int] NULL,
	[Source] [int] NULL,
	[VideoProvider] [int] NULL,
	[VideoId] [int] NULL,
	[SeasonId] [int] NULL,
	[Order] [int] NULL,
	[Round] [int] NULL,
	[CancelReason] [nvarchar](4000) NULL,
	[Modified] [datetime] NOT NULL,
	[SessionId] [int] NOT NULL,
	[ScoutId] [bigint] NULL,
	[ScoutProvider] [int] NULL,
	[BetradarId] [int] NULL,
	[SuspensionTime] [datetime] NULL,
	[LiveDelay] [int] NULL,
	[LimitPercentage] [decimal](8, 2) NULL,
	[MultipleMinValue] [int] NULL,
	[ResultingNote] [nvarchar](255) NULL,
	[LinkGroupId] [int] NULL,
	[ResultingUserId] [int] NULL,
	[IsStatAvailable] [bit] NULL,
	[IsOutright] [bit] NULL,
	[ShortId] [int] NULL,
	[IsArchived] [bit] NOT NULL,
	[NoteId] [int] NULL,
	[VideoConfig] [varchar](255) NULL,
	[LiveUserId] [int] NULL,
	[Info] [nvarchar](255) NULL,
	[MobileVideoId] [int] NULL,
	[InternalNote] [nvarchar](255) NULL,
	[VideoId2] [int] NULL,
	[OldLiveDelay] [int] NULL,
	[DisplayType] [int] NULL,
	[Duration] [int] NULL,
	[SetAvailableUserId] [int] NULL,
	[VideoData] [varchar](2000) NULL,
	[HasStartTimeChanged] [bit] NULL,
	[CreationOrigin] [int] NULL,
	[IsNeutralVenue] [bit] NOT NULL,
	[StrongSide] [smallint] NULL,
	[VirtualInfo] [varchar](4000) NULL,
	[RiskLevel] [smallint] NULL,
	[IsVoid] [bit] NULL,
	[ExactBooking] [bit] NULL,
	[MatchTVInfo] [nvarchar](255) NULL,
	[MarketCreationTemplateId] [int] NULL,
	[IsFinalScoreConfirmed] [bit] NULL,
	[IsStreamAvailable] [bit] NULL,
	[MatchInfoId] [int] NULL,
	[CalculationBlockedUserId] [int] NULL,
	[IsCalculationBlocked] [bit] NULL,
	[ExternalProviderInfo] [nvarchar](4000) NULL,
	[DoNotShowScores] [bit] NULL,
	[BetOnLineups] [bit] NULL,
	[ParentId] [int] NULL,
	[IsManualTime] [bit] NOT NULL,
	[LiveSessionId] [int] NULL,
	[ActualAutofeedProvider] [int] NULL,
	[GameInfo] [nvarchar](4000) NULL,
	[AdmEventId] [int] NULL,
	[AdmSportsBookId] [int] NULL,
	[IsPrematchMultipleBetIndexDisabled] [bit] NULL,
	[IsCashOutDisabled] [bit] NULL,
 CONSTRAINT [PK_Match] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Match] ADD  CONSTRAINT [DF_Event_ResultKind]  DEFAULT ((0)) FOR [ResultKind]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Match] ADD  CONSTRAINT [DF_Match_LiveStatus]  DEFAULT ((0)) FOR [LiveStatus]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Match] ADD  DEFAULT (sysdatetime()) FOR [Modified]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Match] ADD  DEFAULT ((0)) FOR [IsNeutralVenue]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Match] ADD  DEFAULT ((0)) FOR [IsCalculationBlocked]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Match] ADD  DEFAULT ((0)) FOR [IsManualTime]
GO


INSERT INTO [GoldblueUTC].[dbo].[Match]
SELECT DISTINCT
		[Id]
      ,[CompetitionId]
      ,DATEADD(HOUR,-4,[StartTime])
      ,[ResultKind]
      ,[UpdateVersion]
      ,[MatchInfo]
      ,[LiveStatus]
      ,[CancelReasonId]
      ,[Source]
      ,[VideoProvider]
      ,[VideoId]
      ,[SeasonId]
      ,[Order]
      ,[Round]
      ,[CancelReason]
      ,DATEADD(HOUR,-4,[Modified])
      ,[SessionId]
      ,[ScoutId]
      ,[ScoutProvider]
      ,[BetradarId]
      ,DATEADD(HOUR,-4,[SuspensionTime])
      ,[LiveDelay]
      ,[LimitPercentage]
      ,[MultipleMinValue]
      ,[ResultingNote]
      ,[LinkGroupId]
      ,[ResultingUserId]
      ,[IsStatAvailable]
      ,[IsOutright]
      ,[ShortId]
      ,[IsArchived]
      ,[NoteId]
      ,[VideoConfig]
      ,[LiveUserId]
      ,[Info]
      ,[MobileVideoId]
      ,[InternalNote]
      ,[VideoId2]
      ,[OldLiveDelay]
      ,[DisplayType]
      ,[Duration]
      ,[SetAvailableUserId]
      ,[VideoData]
      ,[HasStartTimeChanged]
      ,[CreationOrigin]
      ,[IsNeutralVenue]
      ,[StrongSide]
      ,[VirtualInfo]
      ,[RiskLevel]
      ,[IsVoid]
      ,[ExactBooking]
      ,[MatchTVInfo]
      ,[MarketCreationTemplateId]
      ,[IsFinalScoreConfirmed]
      ,[IsStreamAvailable]
      ,[MatchInfoId]
      ,[CalculationBlockedUserId]
      ,[IsCalculationBlocked]
      ,[ExternalProviderInfo]
      ,[DoNotShowScores]
      ,[BetOnLineups]
      ,[ParentId]
      ,[IsManualTime]
      ,[LiveSessionId]
      ,[ActualAutofeedProvider]
      ,[GameInfo]
      ,[AdmEventId]
      ,[AdmSportsBookId]
      ,[IsPrematchMultipleBetIndexDisabled]
      ,[IsCashOutDisabled]
  FROM [Goldblue].[dbo].[Match]