USE [GoldblueUTC]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
DROP TABLE IF EXISTS [GoldblueUTC].[dbo].[PartnerBonus]
GO

CREATE TABLE [GoldblueUTC].[dbo].[PartnerBonus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PartnerId] [int] NOT NULL,
	[BonusId] [int] NOT NULL,
	[TriggerType] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[PlayerMaxCount] [int] NULL,
	[ExpirationDate] [datetime] NULL,
	[ExpirationDays] [int] NULL,
	[ScheduleId] [int] NULL,
	[IsVisibleToAll] [bit] NOT NULL,
	[NameId] [int] NULL,
	[DescriptionId] [int] NULL,
	[TriggerSettings] [varchar](max) NULL,
	[CalcSettings] [varchar](max) NULL,
	[ExternalId] [int] NULL,
	[Source] [int] NOT NULL,
	[InternalDesc] [varchar](max) NULL,
	[BettingRules] [varchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsAllowWithdrawal] [bit] NOT NULL,
	[IsForVerifiedPlayersOnly] [bit] NULL,
	[ExternalNote] [nvarchar](255) NULL,
	[SessionId] [int] NOT NULL,
	[Modified] [datetime] NOT NULL,
 CONSTRAINT [PK_PartnerBonus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [GoldblueUTC].[dbo].[PartnerBonus] ADD  DEFAULT ((1)) FOR [IsVisibleToAll]
GO

ALTER TABLE [GoldblueUTC].[dbo].[PartnerBonus] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO

ALTER TABLE [GoldblueUTC].[dbo].[PartnerBonus] ADD  DEFAULT ((1)) FOR [IsAllowWithdrawal]
GO

ALTER TABLE [GoldblueUTC].[dbo].[PartnerBonus] ADD  DEFAULT ((1)) FOR [SessionId]
GO

ALTER TABLE [GoldblueUTC].[dbo].[PartnerBonus] ADD  DEFAULT (sysdatetime()) FOR [Modified]
GO


SET IDENTITY_INSERT  [GoldblueUTC].[dbo].[PartnerBonus] ON
GO

INSERT INTO [GoldblueUTC].[dbo].[PartnerBonus]
([Id]
      ,[PartnerId]
      ,[BonusId]
      ,[TriggerType]
      ,[StartDate]
      ,[EndDate]
      ,[PlayerMaxCount]
      ,[ExpirationDate]
      ,[ExpirationDays]
      ,[ScheduleId]
      ,[IsVisibleToAll]
      ,[NameId]
      ,[DescriptionId]
      ,[TriggerSettings]
      ,[CalcSettings]
      ,[ExternalId]
      ,[Source]
      ,[InternalDesc]
      ,[BettingRules]
      ,[IsDeleted]
      ,[IsAllowWithdrawal]
      ,[IsForVerifiedPlayersOnly]
      ,[ExternalNote]
      ,[SessionId]
      ,[Modified])
SELECT DISTINCT	
		[Id]
      ,[PartnerId]
      ,[BonusId]
      ,[TriggerType]
      ,DATEADD(HOUR,-4,[StartDate])
      ,DATEADD(HOUR,-4,[EndDate])
      ,[PlayerMaxCount]
      ,DATEADD(HOUR,-4,[ExpirationDate])
      ,[ExpirationDays]
      ,[ScheduleId]
      ,[IsVisibleToAll]
      ,[NameId]
      ,[DescriptionId]
      ,[TriggerSettings]
      ,[CalcSettings]
      ,[ExternalId]
      ,[Source]
      ,[InternalDesc]
      ,[BettingRules]
      ,[IsDeleted]
      ,[IsAllowWithdrawal]
      ,[IsForVerifiedPlayersOnly]
      ,[ExternalNote]
      ,[SessionId]
      ,DATEADD(HOUR,-4,[Modified])
  FROM [Goldblue].[dbo].[PartnerBonus]

 SET IDENTITY_INSERT  [GoldblueUTC].[dbo].[PartnerBonus] ON
GO
