USE [GoldblueUTC]
GO

/****** Object:  Table [GoldblueUTC].[dbo].[Market]    Script Date: 02/09/2021 00:21:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
DROP TABLE IF EXISTS [GoldblueUTC].[dbo].[Market] 
GO
CREATE TABLE [GoldblueUTC].[dbo].[Market](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[MatchId] [int] NOT NULL,
	[NameId] [int] NOT NULL,
	[Handicap] [decimal](8, 2) NOT NULL,
	[Sequence] [int] NOT NULL,
	[PointSequence] [int] NOT NULL,
	[IsAutoSuspended] [bit] NOT NULL,
	[IsPrematchAutoSuspended] [bit] NOT NULL,
	[IsManualSuspended] [bit] NOT NULL,
	[IsVisible] [bit] NOT NULL,
	[IsPrematchVisible] [bit] NOT NULL,
	[IsManualVisible] [bit] NOT NULL,
	[MarketTypeId] [int] NOT NULL,
	[Profitness] [decimal](8, 4) NOT NULL,
	[Modified] [datetime] NOT NULL,
	[SessionId] [int] NOT NULL,
	[MatchResultId] [int] NULL,
	[ExternalId] [bigint] NULL,
	[IsManualResulted] [bit] NULL,
	[UpdateVersion] [BINARY](8) NOT NULL,
	[IsManual] [bit] NULL,
	[MarketOrder] [int] NULL,
	[WinCount] [int] NULL,
	[IsMain] [bit] NOT NULL,
	[SelectionsModified] [datetime] NULL,
	[ExtraInfo] [varchar](4000) NULL,
	[HomeScore] [int] NULL,
	[AwayScore] [int] NULL,
	[MainOrder] [int] NULL,
	[ResultingDate] [datetime] NULL,
	[IsSuspendByLimiting] [bit] NULL,
	[IsInVisiblePriceRange] [bit] NULL,
	[EachWayType] [int] NULL,
	[SuspendedUserId] [int] NULL,
	[IsSelectionsOrderedByPrice] [bit] NULL,
	[MultipleBetIndex] [int] NULL,
	[EachWayHistory] [varchar](4000) NULL,
	[Rule4] [varchar](4000) NULL,
	[IsWithoutDelay] [bit] NULL,
	[ExactBooked] [bit] NULL,
	[SuspensionTime] [datetime] NULL,
	[IsManualLive] [bit] NULL,
	[ADMListId] [int] NULL,
 CONSTRAINT [PK_Market] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [AK_Market_Match_MarketType_Sequence_Handicap] UNIQUE CLUSTERED 
(
	[MatchId] ASC,
	[MarketTypeId] ASC,
	[Sequence] ASC,
	[PointSequence] ASC,
	[Handicap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Market] ADD  CONSTRAINT [DF_Market_Handicap]  DEFAULT ((0)) FOR [Handicap]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Market] ADD  CONSTRAINT [DF_Market_Sequence]  DEFAULT ((0)) FOR [Sequence]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Market] ADD  CONSTRAINT [DF_Market_PointSequence]  DEFAULT ((0)) FOR [PointSequence]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Market] ADD  CONSTRAINT [DF_Market_IsAutoSuspended]  DEFAULT ((0)) FOR [IsAutoSuspended]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Market] ADD  CONSTRAINT [DF_Market_IsPreAutoSuspended]  DEFAULT ((0)) FOR [IsPrematchAutoSuspended]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Market] ADD  CONSTRAINT [DF_Market_IsManualSuspended]  DEFAULT ((0)) FOR [IsManualSuspended]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Market] ADD  CONSTRAINT [DF_Market_IsVisible]  DEFAULT ((1)) FOR [IsVisible]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Market] ADD  CONSTRAINT [DF_Market_IsPrematchVisible]  DEFAULT ((1)) FOR [IsPrematchVisible]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Market] ADD  CONSTRAINT [DF_Market_IsManualVisible]  DEFAULT ((1)) FOR [IsManualVisible]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Market] ADD  CONSTRAINT [DF_Market_Profitness]  DEFAULT ((0)) FOR [Profitness]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Market] ADD  DEFAULT (sysdatetime()) FOR [Modified]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Market] ADD  CONSTRAINT [DF_Market_IsMain]  DEFAULT ((0)) FOR [IsMain]
GO


SET IDENTITY_INSERT  [GoldblueUTC].[dbo].[Market] ON
GO

INSERT INTO [GoldblueUTC].[dbo].[Market] 
([Id]
      ,[MatchId]
      ,[NameId]
      ,[Handicap]
      ,[Sequence]
      ,[PointSequence]
      ,[IsAutoSuspended]
      ,[IsPrematchAutoSuspended]
      ,[IsManualSuspended]
      ,[IsVisible]
      ,[IsPrematchVisible]
      ,[IsManualVisible]
      ,[MarketTypeId]
      ,[Profitness]
      ,[Modified]
      ,[SessionId]
      ,[MatchResultId]
      ,[ExternalId]
      ,[IsManualResulted]
      ,[UpdateVersion]
      ,[IsManual]
      ,[MarketOrder]
      ,[WinCount]
      ,[IsMain]
      ,[SelectionsModified]
      ,[ExtraInfo]
      ,[HomeScore]
      ,[AwayScore]
      ,[MainOrder]
      ,[ResultingDate]
      ,[IsSuspendByLimiting]
      ,[IsInVisiblePriceRange]
      ,[EachWayType]
      ,[SuspendedUserId]
      ,[IsSelectionsOrderedByPrice]
      ,[MultipleBetIndex]
      ,[EachWayHistory]
      ,[Rule4]
      ,[IsWithoutDelay]
      ,[ExactBooked]
      ,[SuspensionTime]
      ,[IsManualLive]
      ,[ADMListId])
SELECT DISTINCT
		[Id]
      ,[MatchId]
      ,[NameId]
      ,[Handicap]
      ,[Sequence]
      ,[PointSequence]
      ,[IsAutoSuspended]
      ,[IsPrematchAutoSuspended]
      ,[IsManualSuspended]
      ,[IsVisible]
      ,[IsPrematchVisible]
      ,[IsManualVisible]
      ,[MarketTypeId]
      ,[Profitness]
      ,DATEADD(HOUR,-4,[Modified])
      ,[SessionId]
      ,[MatchResultId]
      ,[ExternalId]
      ,[IsManualResulted]
      ,[UpdateVersion]
      ,[IsManual]
      ,[MarketOrder]
      ,[WinCount]
      ,[IsMain]
      ,[SelectionsModified]
      ,[ExtraInfo]
      ,[HomeScore]
      ,[AwayScore]
      ,[MainOrder]
      ,DATEADD(HOUR,-4,[ResultingDate])
      ,[IsSuspendByLimiting]
      ,[IsInVisiblePriceRange]
      ,[EachWayType]
      ,[SuspendedUserId]
      ,[IsSelectionsOrderedByPrice]
      ,[MultipleBetIndex]
      ,[EachWayHistory]
      ,[Rule4]
      ,[IsWithoutDelay]
      ,[ExactBooked]
      ,DATEADD(HOUR,-4,[SuspensionTime])
      ,[IsManualLive]
      ,[ADMListId]
  FROM [Goldblue].[dbo].[Market]

 SET IDENTITY_INSERT  [GoldblueUTC].[dbo].[Market] OFF
GO