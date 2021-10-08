USE [GoldblueUTC]
GO
DROP TABLE IF EXISTS [GoldblueUTC].[dbo].[ClientHistorical];
CREATE TABLE [GoldblueUTC].[dbo].[ClientHistorical](
	[Id] [int] NOT NULL,
	[PartnerId] [int] NOT NULL,
	[CurrencyId] [char](3) NOT NULL,
	[IBAN] [varchar](34) NULL,
	[SwiftCode] [varchar](12) NULL,
	[Name] [nvarchar](255) NULL,
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
	[BirthDate] [varchar](255) MASKED WITH (FUNCTION = 'default()') NULL,
	[City] [nvarchar](155) NULL,
	[ZipCode] [nvarchar](155) NULL,
	[BirthCity] [nvarchar](155) NULL,
	[BirthDepartment] [nvarchar](255) NULL,
	[MaximalDailyBet] [decimal](18, 2) NULL,
	[MaximalSingleBet] [decimal](18, 2) NULL,
	[PasswordSalt] [bigint]  NULL,
	[PasswordHash] [varchar](255) NULL,
	[PromoCode] [varchar](255) NULL,
	[TimeZone] [decimal](3, 1) NULL,
	[OwnerId] [int] NULL,
	[IsLocked] [bit] NOT NULL,
	[IsSubscribedToNewsletter] [bit]  NULL,
	[IsVerified] [bit]  NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
	[SessionId] [int]  NULL,
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
	[IsUsingLoyaltyProgram] [bit] NULL,
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
	[AMLRisk] [int] NULL)


INSERT INTO [GoldblueUTC].[dbo].[ClientHistorical]
SELECT DISTINCT
	a.[user_id] [Id]
      ,'1876513' [PartnerId]
      ,case when a.[user_currency] is null then 'CNY' else a.[user_currency] end [CurrencyId]
      ,null [IBAN]
      ,null [SwiftCode]
      ,CONCAT(a.user_fname,' ',a.user_lname) [Name]
      ,a.user_fname [FirstName]
      ,a.user_lname [LastName]
      ,null [MiddleName]
      ,null [Title]
      ,a.[user_nickname] [NickName]
      ,a.[user_name] [Login]
      ,case when a.user_country = 'JP' then 119 when a.user_country = 'TH' then 227 when a.user_country = 'VN' then 248 when a.user_country = 'ID' then 111 when a.user_country = 'CN' then 53 end [RegionId]
      ,null [BirthRegionId]
      ,case when a.[user_gender] = 'M' then 1 when a.[user_gender] = 'F' then 2 else 0 end [Gender]
      ,null [ProfileId]
      ,null [DocNumber]
      ,null [PersonalId]
      ,null [Address]
      ,null [AditionalAddress]
      ,a.[email] [Email]
      ,'en' [Language]
      ,a.[telephone] [Phone]
      ,a.[mobile] [MobilePhone]
      ,a.[user_birthday]  [BirthDate]
      ,null [City]
      ,null [ZipCode]
      ,null [BirthCity]
      ,null [BirthDepartment]
      ,null [MaximalDailyBet]
      ,null [MaximalSingleBet]
      ,null [PasswordSalt]
      ,null [PasswordHash]
      ,null [PromoCode]
      ,null [TimeZone]
      ,null [OwnerId]
      ,case when a.[agent_status] = 'Active' then 0 else 1 end [IsLocked]
      ,null [IsSubscribedToNewsletter]
      ,null [IsVerified]
      ,a.[user_create_time]  [Created]
      ,a.[user_create_time]  [Modified]
      ,null [SessionId]
      ,null [Excluded]
      ,null [ExcludeTypeId]
      ,null [RFId]
      ,null [ResetCode]
      ,null [ResetExpireDate]
      ,null [DocIssuedBy]
      ,null [DocIssueDate]
      ,null [DocIssueCode]
      ,null [Province]
      ,null [PreMatchSelectionLimit]
      ,null [LiveSelectionLimit]
      ,null [SportsbookProfileId]
      ,null [LoyaltyLevelId]
      ,null [IsUsingLoyaltyProgram]
      ,null [GlobalLiveDelay]
      ,a.[agent_id] [AffilateId]
      ,a.[user_btag] [BTag]
      ,null [ExcludedLast]
      ,0 [IsTest]
      ,null [ExternalId]
      ,null [AuthomaticWithdrawalAmount]
      ,null [AuthomaticWithdrawalMinLeftAmount]
      ,null [IsAutomaticWithdrawalEnabled]
      ,null [ActivationCode]
      ,null [ActivationCodeExpireDate]
      ,null [ActivationState]
      ,0 [IsResident]
      ,4 [RegistrationSource]
      ,null [DocumentInfo]
      ,null [PricePartnerId]
      ,0 [NotificationOptions]
      ,null [AccountHolder]
      ,null [CashDeskId]
      ,0 [WrongLoginAttempts]
      ,null [WrongLoginBlockTime]
      ,null [ActiveTimeInCasino]
      ,null [DublicateClientId]
      ,null [IsNoBonus]
      ,null [IsSportBlocked]
      ,null [IsCasinoBlocked]
      ,null [VerificationDate]
      ,null [DocRegionId]
      ,null [OriginalBirthDate]
      ,null [PartnerFlag]
      ,null [PidNumber]
      ,null [Currencies]
      ,1 [Status]
      ,null [GDPRAcceptanceDate]
      ,null [LastCashBackBonusDate]
      ,null [IsRMTBlocked]
      ,null [TermsAndConditionsVersion]
      ,null [TCVersionAcceptanceDate]
      ,null [IsTwoFactorAuthenticationEnabled]
      ,null [IsQRCodeUsed]
      ,null [TwoFactorAuthenticationCode]
      ,null [PepStatusId]
      ,null [PepStatusModifiedDate]
      ,null [PreferredCurrencyId]
      ,null [SessionDuration]
      ,null [PartnerClientCategoryId]
      ,null [IsBOGDisabled]
      ,null [Option]
      ,null [DocExpirationDate]
      ,null [VerificationOptions]
      ,null [DocType]
      ,null [IncomeSource]
      ,null [AMLRisk]
  FROM [dw_prod].[dbo].[dw_user_header_dm] a