/****** Script for SelectTopNRows command from SSMS  ******/
USE [GoldblueUTC]
GO

/****** Object:  Table [dbo].[Client]    Script Date: 01/09/2021 22:31:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

drop table if exists [GoldblueUTC].[dbo].[Client]
GO 

CREATE TABLE [GoldblueUTC].[dbo].[Client](
	[Id] [int] NOT NULL,
	[PartnerId] [int] NOT NULL,
	[CurrencyId] [char](3) NOT NULL,
	[IBAN] [varchar](34) NULL,
	[SwiftCode] [varchar](12) NULL,
	[Name]  AS ((isnull([LastName]+' ','')+isnull([FirstName],''))+isnull(' '+[MiddleName],'')),
	[FirstName] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NULL,
	[MiddleName] [nvarchar](255) NULL,
	[Title] [nvarchar](255) NULL,
	[NickName] [varchar](255) NULL,
	[Login] [nvarchar](255) NOT NULL,
	[RegionId] [int] NULL,
	[BirthRegionId] [int] NULL,
	[Gender] [int] NULL,
	[ProfileId] [int] NULL,
	[DocNumber] [nvarchar](255) NULL,
	[PersonalId] [nvarchar](255) NULL,
	[Address] [nvarchar](255) MASKED WITH (FUNCTION = 'default()') NULL,
	[AditionalAddress] [nvarchar](255) MASKED WITH (FUNCTION = 'default()') NULL,
	[Email] [varchar](255) MASKED WITH (FUNCTION = 'email()') NULL,
	[Language] [char](2) NULL,
	[Phone] [varchar](255) MASKED WITH (FUNCTION = 'default()') NULL,
	[MobilePhone] [varchar](255) MASKED WITH (FUNCTION = 'default()') NULL,
	[BirthDate] [datetime] MASKED WITH (FUNCTION = 'default()') NULL,
	[City] [nvarchar](155) NULL,
	[ZipCode] [nvarchar](155) NULL,
	[BirthCity] [nvarchar](155) NULL,
	[BirthDepartment] [nvarchar](255) NULL,
	[MaximalDailyBet] [decimal](18, 2) NULL,
	[MaximalSingleBet] [decimal](18, 2) NULL,
	[PasswordSalt] [bigint] NOT NULL,
	[PasswordHash] [varchar](255) NULL,
	[PromoCode] [varchar](255) NULL,
	[TimeZone] [decimal](3, 1) NULL,
	[OwnerId] [int] NULL,
	[IsLocked] [bit] NOT NULL,
	[IsSubscribedToNewsletter] [bit] NOT NULL,
	[IsVerified] [bit] NOT NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
	[SessionId] [int] NOT NULL,
	[Excluded] [datetime] NULL,
	[ExcludeTypeId] [int] NULL,
	[RFId] [varchar](50) NULL,
	[ResetCode] [varchar](50) NULL,
	[ResetExpireDate] [datetime] NULL,
	[DocIssuedBy] [nvarchar](255) NULL,
	[DocIssueDate] [date] NULL,
	[DocIssueCode] [nvarchar](255) NULL,
	[Province] [nvarchar](255) NULL,
	[PreMatchSelectionLimit] [decimal](8, 2) NULL,
	[LiveSelectionLimit] [decimal](8, 2) NULL,
	[SportsbookProfileId] [int] NULL,
	[LoyaltyLevelId] [int] NULL,
	[IsUsingLoyaltyProgram] [bit] NOT NULL,
	[GlobalLiveDelay] [int] NULL,
	[AffilateId] [nvarchar](200) NULL,
	[BTag] [nvarchar](200) NULL,
	[ExcludedLast] [datetime] NULL,
	[IsTest] [bit] NOT NULL,
	[ExternalId] [varchar](255) NULL,
	[AuthomaticWithdrawalAmount] [decimal](18, 2) NULL,
	[AuthomaticWithdrawalMinLeftAmount] [decimal](18, 2) NULL,
	[IsAutomaticWithdrawalEnabled] [bit] NULL,
	[ActivationCode] [varchar](50) NULL,
	[ActivationCodeExpireDate] [datetime] NULL,
	[ActivationState] [int] NULL,
	[IsResident] [bit] NOT NULL,
	[RegistrationSource] [int] NULL,
	[DocumentInfo] [nvarchar](4000) NULL,
	[PricePartnerId] [int] NULL,
	[NotificationOptions] [int] NULL,
	[AccountHolder] [nvarchar](255) NULL,
	[CashDeskId] [int] NULL,
	[WrongLoginAttempts] [int] NOT NULL,
	[WrongLoginBlockTime] [datetime] NULL,
	[ActiveTimeInCasino] [int] NULL,
	[DublicateClientId] [int] NULL,
	[IsNoBonus] [bit] NULL,
	[IsSportBlocked] [bit] NULL,
	[IsCasinoBlocked] [bit] NULL,
	[VerificationDate] [datetime] NULL,
	[DocRegionId] [int] NULL,
	[OriginalBirthDate] [date] NULL,
	[PartnerFlag] [nvarchar](250) NULL,
	[PidNumber] [nvarchar](255) NULL,
	[Currencies] [nvarchar](64) NULL,
	[Status] [int] NULL,
	[GDPRAcceptanceDate] [datetime] NULL,
	[LastCashBackBonusDate] [datetime] NULL,
	[IsRMTBlocked] [bit] NULL,
	[TermsAndConditionsVersion] [varchar](50) NULL,
	[TCVersionAcceptanceDate] [datetime] NULL,
	[IsTwoFactorAuthenticationEnabled] [bit] NULL,
	[IsQRCodeUsed] [bit] NULL,
	[TwoFactorAuthenticationCode] [varchar](50) NULL,
	[PepStatusId] [int] NULL,
	[PepStatusModifiedDate] [datetime] NULL,
	[PreferredCurrencyId] [char](3) NULL,
	[SessionDuration] [int] NULL,
	[PartnerClientCategoryId] [int] NULL,
	[IsBOGDisabled] [bit] NULL,
	[Option] [int] NULL,
	[DocExpirationDate] [date] NULL,
	[VerificationOptions] [int] NULL,
	[DocType] [int] NULL,
	[IncomeSource] [int] NULL,
	[AMLRisk] [int] NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [AK_Client_Partner_Login] UNIQUE NONCLUSTERED 
(
	[PartnerId] ASC,
	[Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Client] ADD  CONSTRAINT [DF_Client_IsLocked]  DEFAULT ((0)) FOR [IsLocked]
GO

ALTER TABLE [dbo].[Client] ADD  CONSTRAINT [DF_Client_IsSubscribedToNewsletter]  DEFAULT ((0)) FOR [IsSubscribedToNewsletter]
GO

ALTER TABLE [dbo].[Client] ADD  CONSTRAINT [DF_Client_IsVerified]  DEFAULT ((0)) FOR [IsVerified]
GO

ALTER TABLE [dbo].[Client] ADD  DEFAULT (sysdatetime()) FOR [Modified]
GO

ALTER TABLE [dbo].[Client] ADD  DEFAULT ((0)) FOR [IsUsingLoyaltyProgram]
GO

ALTER TABLE [dbo].[Client] ADD  DEFAULT ((0)) FOR [IsTest]
GO

ALTER TABLE [dbo].[Client] ADD  DEFAULT ((0)) FOR [IsResident]
GO

ALTER TABLE [dbo].[Client] ADD  DEFAULT ((0)) FOR [WrongLoginAttempts]
GO

INSERT INTO [GoldblueUTC].[dbo].[Client]
SELECT DISTINCT 
		[Id]
      ,[PartnerId]
      ,[CurrencyId]
      ,[IBAN]
      ,[SwiftCode]
      ,[Name]
      ,[FirstName]
      ,[LastName]
      ,[MiddleName]
      ,[Title]
      ,[NickName]
      ,[Login]
      ,[RegionId]
      ,[BirthRegionId]
      ,[Gender]
      ,[ProfileId]
      ,[DocNumber]
      ,[PersonalId]
      ,[Address]
      ,[AditionalAddress]
      ,[Email]
      ,[Language]
      ,[Phone]
      ,[MobilePhone]
      ,[BirthDate]
      ,[City]
      ,[ZipCode]
      ,[BirthCity]
      ,[BirthDepartment]
      ,[MaximalDailyBet]
      ,[MaximalSingleBet]
      ,[PasswordSalt]
      ,[PasswordHash]
      ,[PromoCode]
      ,[TimeZone]
      ,[OwnerId]
      ,[IsLocked]
      ,[IsSubscribedToNewsletter]
      ,[IsVerified]
	  ,DATEADD(HOUR,-4,[Created])
      ,DATEADD(HOUR,-4,[Modified])
      ,[SessionId]
      ,[Excluded]
      ,[ExcludeTypeId]
      ,[RFId]
      ,[ResetCode]
      ,DATEADD(HOUR,-4,[ResetExpireDate])
      ,[DocIssuedBy]
      ,[DocIssueDate]
      ,[DocIssueCode]
      ,[Province]
      ,[PreMatchSelectionLimit]
      ,[LiveSelectionLimit]
      ,[SportsbookProfileId]
      ,[LoyaltyLevelId]
      ,[IsUsingLoyaltyProgram]
      ,[GlobalLiveDelay]
      ,[AffilateId]
      ,[BTag]
      ,[ExcludedLast]
      ,[IsTest]
      ,[ExternalId]
      ,[AuthomaticWithdrawalAmount]
      ,[AuthomaticWithdrawalMinLeftAmount]
      ,[IsAutomaticWithdrawalEnabled]
      ,[ActivationCode]
      ,DATEADD(HOUR,-4,[ActivationCodeExpireDate])
      ,[ActivationState]
      ,[IsResident]
      ,[RegistrationSource]
      ,[DocumentInfo]
      ,[PricePartnerId]
      ,[NotificationOptions]
      ,[AccountHolder]
      ,[CashDeskId]
      ,[WrongLoginAttempts]
      ,[WrongLoginBlockTime]
      ,[ActiveTimeInCasino]
      ,[DublicateClientId]
      ,[IsNoBonus]
      ,[IsSportBlocked]
      ,[IsCasinoBlocked]
      ,[VerificationDate]
      ,[DocRegionId]
      ,[OriginalBirthDate]
      ,[PartnerFlag]
      ,[PidNumber]
      ,[Currencies]
      ,[Status]
      ,DATEADD(HOUR,-4,[GDPRAcceptanceDate])
      ,[LastCashBackBonusDate]
      ,[IsRMTBlocked]
      ,[TermsAndConditionsVersion]
      ,DATEADD(HOUR,-4,[TCVersionAcceptanceDate])
      ,[IsTwoFactorAuthenticationEnabled]
      ,[IsQRCodeUsed]
      ,[TwoFactorAuthenticationCode]
      ,[PepStatusId]
      ,DATEADD(HOUR,-4,[PepStatusModifiedDate])
      ,[PreferredCurrencyId]
      ,[SessionDuration]
      ,[PartnerClientCategoryId]
      ,[IsBOGDisabled]
      ,[Option]
      ,[DocExpirationDate]
      ,[VerificationOptions]
      ,[DocType]
      ,[IncomeSource]
      ,[AMLRisk]
  FROM [Goldblue].[dbo].[Client]