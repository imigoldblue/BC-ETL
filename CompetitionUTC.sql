USE [GoldblueUTC]
GO

/****** Object:  Table [GoldblueUTC].[dbo].[Competition]    Script Date: 02/09/2021 00:11:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [GoldblueUTC].[dbo].[Competition](
	[Id] [int] NOT NULL,
	[NameId] [int] NOT NULL,
	[RegionId] [int] NOT NULL,
	[SportId] [int] NOT NULL,
	[Modified] [datetime] NOT NULL,
	[SessionId] [int] NOT NULL,
	[UpdateVersion] [binary](8) NOT NULL,
	[IsSendingPreMatch] [bit] NULL,
	[LiveDelay] [int] NULL,
	[MultipleMinValue] [int] NOT NULL,
	[IsTeamsReversed] [bit] NOT NULL,
	[VideoId] [int] NULL,
	[NoteId] [int] NULL,
	[MarketTypeOddGroupId] [int] NULL,
	[CashOutOption] [int] NULL,
	[DefaultLiveAvailable] [bit] NULL,
	[MainMarketOrderCount] [int] NOT NULL,
	[ExactBooking] [bit] NULL,
	[URL] [nvarchar](300) NULL,
	[MarketCreationTemplateId] [int] NULL,
	[ArjelCode] [nvarchar](255) NULL,
	[IsNotSendingLive] [bit] NULL,
	[CompetitionInfo] [nvarchar](2000) NULL,
	[ParentId] [int] NULL,
	[LeageType] [int] NULL,
	[MatchInfoId] [int] NULL,
	[CreationSource] [int] NULL,
	[BetOnLineups] [bit] NULL,
	[RestrictMultipleBets] [int] NULL,
	[IsUsingPreMatchMultipleBetIndex] [bit] NULL,
	[Market] [int] NULL,
	[Created] [datetime] NULL,
	[CheckSessionId] [int] NULL,
 CONSTRAINT [PK_COMPETITION] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Competition] ADD  DEFAULT (sysdatetime()) FOR [Modified]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Competition] ADD  DEFAULT ((0)) FOR [MultipleMinValue]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Competition] ADD  DEFAULT ((0)) FOR [IsTeamsReversed]
GO

ALTER TABLE [GoldblueUTC].[dbo].[Competition] ADD  DEFAULT ((2)) FOR [MainMarketOrderCount]
GO


INSERT INTO [GoldblueUTC].[dbo].[Competition]

SELECT DISTINCT
		[Id]
      ,[NameId]
      ,[RegionId]
      ,[SportId]
      ,DATEADD(HOUR,-4,[Modified])
      ,[SessionId]
      ,[UpdateVersion]
      ,[IsSendingPreMatch]
      ,[LiveDelay]
      ,[MultipleMinValue]
      ,[IsTeamsReversed]
      ,[VideoId]
      ,[NoteId]
      ,[MarketTypeOddGroupId]
      ,[CashOutOption]
      ,[DefaultLiveAvailable]
      ,[MainMarketOrderCount]
      ,[ExactBooking]
      ,[URL]
      ,[MarketCreationTemplateId]
      ,[ArjelCode]
      ,[IsNotSendingLive]
      ,[CompetitionInfo]
      ,[ParentId]
      ,[LeageType]
      ,[MatchInfoId]
      ,[CreationSource]
      ,[BetOnLineups]
      ,[RestrictMultipleBets]
      ,[IsUsingPreMatchMultipleBetIndex]
      ,[Market]
      ,DATEADD(HOUR,-4,[Created])
      ,[CheckSessionId]
  FROM [Goldblue].[dbo].[Competition]