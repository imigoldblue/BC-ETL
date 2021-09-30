USE [GoldblueUTC]
GO

/****** Object:  Table [GoldblueUTC].[dbo].[ClientRequest]    Script Date: 01/09/2021 23:13:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
DROP TABLE IF EXISTS [GoldblueUTC].[dbo].[ClientRequest]
GO

CREATE TABLE [GoldblueUTC].[dbo].[ClientRequest](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Type] [int] NOT NULL,
	[ClientId] [int] NOT NULL,
	[PaymentSystemId] [int] NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[FeeAmount] [decimal](18, 2) NULL,
	[State] [int] NOT NULL,
	[RequestTime] [datetime] NOT NULL,
	[RequestDocumentId] [bigint] NOT NULL,
	[PaymentDocumentId] [bigint] NULL,
	[BetshopId] [int] NULL,
	[Notes] [nvarchar](4000) NULL,
	[Info] [nvarchar](4000) NULL,
	[ModifyUserId] [int] NULL,
	[RejectReason] [nvarchar](255) NULL,
	[ModifyTime] [datetime] NULL,
	[AllowUserId] [int] NULL,
	[AllowTime] [datetime] NULL,
	[RejectUserId] [int] NULL,
	[Modified] [datetime] NOT NULL,
	[SessionId] [int] NOT NULL,
	[UpdateVersion] [binary](8) NOT NULL,
	[ClientNotes] [nvarchar](500) NULL,
	[PaidReason] [nvarchar](255) NULL,
	[PaymentSystemMessage] [nvarchar](4000) NULL,
	[PaymentInfo] [nvarchar](255) NULL,
	[PartnerBankId] [int] NULL,
	[ImageId] [int] NULL,
	[CurrencyId] [char](3) NULL,
	[AssignedUserId] [int] NULL,
	[AmountEur] [decimal](18, 2)  NULL,
	[FeeAmountEur] [decimal](18, 2) NULL,
	[IsFirst] [int] NULL,
	[RejectedBeforeFirst] [int] NULL,
 CONSTRAINT [PK_ClientWithdrawalRequest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientRequest] ADD  CONSTRAINT [DF_ClientRequest_Type]  DEFAULT ((1)) FOR [Type]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientRequest] ADD  DEFAULT (sysdatetime()) FOR [Modified]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientRequest] ADD  DEFAULT ((1)) FOR [SessionId]
GO

SET IDENTITY_INSERT  [GoldblueUTC].[dbo].[ClientRequest] ON
GO
insert into [GoldblueUTC].[dbo].[ClientRequest]
([Id]
      ,[Type]
      ,[ClientId]
      ,[PaymentSystemId]
      ,[Amount]
      ,[FeeAmount]
      ,[State]
      ,[RequestTime]
      ,[RequestDocumentId]
      ,[PaymentDocumentId]
      ,[BetshopId]
      ,[Notes]
      ,[Info]
      ,[ModifyUserId]
      ,[RejectReason]
      ,[ModifyTime]
      ,[AllowUserId]
      ,[AllowTime]
      ,[RejectUserId]
      ,[Modified]
      ,[SessionId]
      ,[UpdateVersion]
      ,[ClientNotes]
      ,[PaidReason]
      ,[PaymentSystemMessage]
      ,[PaymentInfo]
      ,[PartnerBankId]
      ,[ImageId]
      ,[CurrencyId]
      ,[AssignedUserId]
	  ,[AmountEur]
	  ,[FeeAmountEur]
	  ,[IsFirst]
	  ,[RejectedBeforeFirst])
SELECT DISTINCT
		[Id]
      ,[Type]
      ,[ClientId]
      ,[PaymentSystemId]
      ,[Amount]
      ,[FeeAmount]
      ,[State]
      ,DATEADD(HOUR,-4,[RequestTime])
      ,[RequestDocumentId]
      ,[PaymentDocumentId]
      ,[BetshopId]
      ,[Notes]
      ,[Info]
      ,[ModifyUserId]
      ,[RejectReason]
      ,DATEADD(HOUR,-4,[ModifyTime])
      ,[AllowUserId]
      ,DATEADD(HOUR,-4,[AllowTime])
      ,[RejectUserId]
      ,DATEADD(HOUR,-4,a.[Modified])
      ,[SessionId]
      ,[UpdateVersion]
      ,[ClientNotes]
      ,[PaidReason]
      ,[PaymentSystemMessage]
      ,[PaymentInfo]
      ,[PartnerBankId]
      ,[ImageId]
      ,[CurrencyId]
      ,[AssignedUserId]
	  ,case when a.CurrencyId = 'EUR' THEN a.Amount else a.Amount/cru.rate end
	  ,case when a.CurrencyId = 'EUR' THEN a.FeeAmount else a.FeeAmount/cru.rate end
	  ,case when DATEADD(HOUR,-4,a.[AllowTime])= b.isfirst then 1 else 0 end 
	  ,case when [State] = -2 and DATEADD(HOUR,-4,[RequestTime])<= b.isfirst then 1 else 0 end
  FROM [Goldblue].[dbo].[ClientRequest] a
	LEFT join [GoldblueUTC].[dbo].[CurrencyRateUpdate] cru on COALESCE(EOMONTH(DATEADD(HOUR,-4,a.[AllowTime])),EOMONTH(DATEADD(HOUR,-4,a.[RequestTime])))= cru.CalendarDt and a.CurrencyId = cru.FromCurrency
	left join (select  a.clientid,a.type,min(DATEADD(HOUR,-4,[AllowTime])) isfirst from [Goldblue].[dbo].[ClientRequest] where a.state = 3 group by a.clientid,a.type) b on a.clientid =b.clientid and a.[type]=b.[type]


SET IDENTITY_INSERT  [GoldblueUTC].[dbo].[ClientRequest] OFF
GO
