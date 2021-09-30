USE [GoldblueUTC]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [GoldblueUTC].[dbo].[ClientVerificationStep]
GO

CREATE TABLE [GoldblueUTC].[dbo].[ClientVerificationStep](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[PartnerKYCStepId] [int] NOT NULL,
	[Created] [datetime] NOT NULL,
	[PassDate] [datetime] NULL,
	[ExpireDate] [datetime] NOT NULL,
	[State] [int] NOT NULL,
	[Error] [nvarchar](4000) NULL,
	[Code] [varchar](8000) NULL,
	[ResponseData] [varchar](max) NULL,
	[Source] [int] NULL,
	[Info] [nvarchar](max) NULL,
 CONSTRAINT [PK_ClientVerificationStep] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [AK_ClientVerificationStep_Client_PartnerKYCStep] UNIQUE NONCLUSTERED 
(
	[ClientId] ASC,
	[PartnerKYCStepId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET IDENTITY_INSERT  [GoldblueUTC].[dbo].[ClientVerificationStep] ON
GO

INSERT INTO [GoldblueUTC].[dbo].[ClientVerificationStep]
([Id]
      ,[ClientId]
      ,[PartnerKYCStepId]
      ,[Created]
      ,[PassDate]
      ,[ExpireDate]
      ,[State]
      ,[Error]
      ,[Code]
      ,[ResponseData]
      ,[Source]
      ,[Info])
SELECT DISTINCT
	   [Id]
      ,[ClientId]
      ,[PartnerKYCStepId]
      ,DATEADD(HOUR,-4,[Created])
      ,DATEADD(HOUR,-4,[PassDate])
      ,DATEADD(HOUR,-4,[ExpireDate])
      ,[State]
      ,[Error]
      ,[Code]
      ,[ResponseData]
      ,[Source]
      ,[Info]
  FROM [Goldblue].[dbo].[ClientVerificationStep]


SET IDENTITY_INSERT  [GoldblueUTC].[dbo].[ClientVerificationStep] OFF
GO