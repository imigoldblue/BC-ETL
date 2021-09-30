USE [GoldblueUTC]
GO

/****** Object:  Table [GoldblueUTC].[dbo].[ClientGameKPI]    Script Date: 04/09/2021 14:10:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
DROP TABLE IF EXISTS [GoldblueUTC].[dbo].[ClientGameKPI]
GO

CREATE TABLE [GoldblueUTC].[dbo].[ClientGameKPI](
	[ClientId] [int] NOT NULL,
	[GameId] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Product] [varchar](255) NOT NULL,
	[Provider] [varchar](255) NOT NULL,
	[ProductCategory] [varchar](255) NOT NULL,
	[GameName] [varchar](255) NOT NULL,
	[CurrencyId] [char](3) NOT NULL,
	[Country] [varchar](255) NOT NULL,
	[TotalBetAmount] [decimal](18, 2) NOT NULL,
	[TotalBetCount] [int] NOT NULL,
	[TotalWinAmount] [decimal](18, 2) NOT NULL,
	[TotalWinCount] [int] NOT NULL,
	[TotalGGRAmount] [decimal](18, 2) NOT NULL,
	[CashBetAmount] [decimal](18, 2) NOT NULL,
	[CashBetCount] [int] NOT NULL,
	[CashWinAmount] [decimal](18, 2) NOT NULL,
	[CashWinCount] [int] NOT NULL,
	[CashGGRAmount] [decimal](18, 2) NOT NULL,
	[BonusBetAmount] [decimal](18, 2) NOT NULL,
	[BonusBetCount] [int] NOT NULL,
	[BonusWinAmount] [decimal](18, 2) NOT NULL,
	[BonusWinCount] [int] NOT NULL,
	[BonusGGRAmount] [decimal](18, 2) NOT NULL,
	[TotalBetAmountEur] [decimal](18, 2) NOT NULL,
	[TotalWinAmountEur] [decimal](18, 2) NOT NULL,
	[TotalGGRAmountEur] [decimal](18, 2) NOT NULL,
	[CashBetAmountEur] [decimal](18, 2) NOT NULL,
	[CashWinAmountEur] [decimal](18, 2) NOT NULL,
	[CashGGRAmountEur] [decimal](18, 2) NOT NULL,
	[BonusBetAmountEur] [decimal](18, 2) NOT NULL,
	[BonusWinAmountEur] [decimal](18, 2) NOT NULL,
	[BonusGGRAmountEur] [decimal](18, 2) NOT NULL,
	--[TipAmount] [decimal](18, 2) NOT NULL,
	--[TipCount] [int] NOT NULL,
	--[TipAmountEur] [decimal](18, 2) NOT NULL,
	--[BonusAmount] [decimal](18, 2) NOT NULL,
	--[BonusCount] [int] NOT NULL,
	--[BonusCashBackAmount] [decimal](18, 2) NOT NULL,
	--[BonusCashBackCount] [int] NOT NULL,
	[Modified] [datetime] NOT NULL,
	--[SessionId] [int] NOT NULL,
 CONSTRAINT [PK_ClientGameKPI] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC,
	[Date] DESC,
	[GameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [TotalBetAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [TotalBetCount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [TotalWinAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [TotalWinCount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [TotalGGRAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [CashBetAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [CashBetCount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [CashWinAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [CashWinCount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [CashGGRAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [BonusBetAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [BonusBetCount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [BonusWinAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [BonusWinCount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [BonusGGRAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [TotalBetAmountEur]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [TotalWinAmountEur]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [TotalGGRAmountEur]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [CashBetAmountEur]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [CashWinAmountEur]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [CashGGRAmountEur]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [BonusBetAmountEur]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [BonusWinAmountEur]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [BonusGGRAmountEur]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT (sysdatetime()) FOR [Modified]
GO

--ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [TipAmount]
--GO

--ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [TipCount]
--GO

--ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [BonusAmount]
--GO

--ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [BonusCount]
--GO

--ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [BonusCashBackAmount]
--GO

--ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((0)) FOR [BonusCashBackCount]
--GO

--ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT ((1)) FOR [SessionId]
--GO

INSERT INTO [GoldblueUTC].[dbo].[ClientGameKPI]
select distinct		
	a.ClientId,a.GameId,a.Created,a.Product,a.Provider,a.ProductCategory,a.GameName,a.CurrencyId,reg.Alpha2Code
	,a.[TotalBetAmount]
	,a.[TotalBetCount]
	,a.[TotalWinAmount]
	,a.[TotalWinCount]
	,a.[TotalGGRAmount]
	,a.[CashBetAmount]
	,a.[CashBetCount]
	,a.[CashWinAmount]
	,a.[CashWinCount]
	,a.[CashGGRAmount]
	,a.[BonusBetAmount]
	,a.[BonusBetCount]
	,a.[BonusWinAmount]
	,a.[BonusWinCount]
	,a.[BonusGGRAmount]
	,case when a.CurrencyId = 'Eur' then a.[TotalBetAmount] else a.[TotalBetAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[TotalWinAmount] else a.[TotalWinAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[TotalGGRAmount] else a.[TotalGGRAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[CashBetAmount] else a.[CashBetAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[CashWinAmount] else a.[CashWinAmount]/cru.rate end 
	,case when a.CurrencyId = 'Eur' then a.[CashGGRAmount] else a.[CashGGRAmount]/cru.rate end 
	,case when a.CurrencyId = 'Eur' then a.[BonusBetAmount] else a.[BonusBetAmount]/cru.rate end 
	,case when a.CurrencyId = 'Eur' then a.[BonusWinAmount] else a.[BonusWinAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[BonusGGRAmount] else a.[BonusGGRAmount]/cru.rate end 
	,SYSDATETIME()
from(
		select distinct
			a.Created,a.ClientId,a.Product,a.Provider,a.ProductCategory,a.GameName,a.GameId,a.CurrencyId
			,sum( case when a.cash = 1 and a.TypeId = 10 and a.State = 10  then a.Amount else 0 end )+sum( case when a.bonus = 1 and a.TypeId = 10 and a.State = 10  then a.Amount else 0 end ) [TotalBetAmount]
			,count(distinct case when a.cash = 1 and a.TypeId = 10 and a.State = 10 then a.id else null end )+count(distinct case when a.bonus = 1 and a.TypeId = 10 and a.State = 10 then a.id else null end ) [TotalBetCount]
			,sum( case when a.cash = 1 and a.TypeId = 15 and a.State = 10 then a.Amount else 0 end )+sum( case when a.bonus = 1 and a.TypeId = 15 and a.State = 10 then a.Amount else 0 end ) [TotalWinAmount]
			,count(distinct case when a.cash = 1 and a.TypeId = 15 and a.State = 10  then a.id else null end )+count(distinct case when a.bonus = 1 and a.TypeId = 15 and a.State = 10  then a.id else null end ) [TotalWinCount]
			,sum( case when a.cash = 1 and a.TypeId = 10 and a.State = 10  then a.Amount else 0 end )-sum( case when a.cash = 1 and a.TypeId = 15 and a.State = 10 then a.Amount else 0 end )+sum( case when a.bonus = 1 and a.TypeId = 10 and a.State = 10  then a.Amount else 0 end )-sum( case when a.bonus = 1 and a.TypeId = 15 and a.State = 10 then a.Amount else 0 end ) [TotalGGRAmount]
			,sum( case when a.cash = 1 and a.TypeId = 10 and a.State = 10  then a.Amount else 0 end ) [CashBetAmount]
			,count(distinct case when a.cash = 1 and a.TypeId = 10 and a.State = 10 then a.id else null end ) [CashBetCount]
			,sum( case when a.cash = 1 and a.TypeId = 15 and a.State = 10 then a.Amount else 0 end ) [CashWinAmount]
			,count(distinct case when a.cash = 1 and a.TypeId = 15 and a.State = 10  then a.id else null end ) [CashWinCount]
			,sum( case when a.cash = 1 and a.TypeId = 10 and a.State = 10  then a.Amount else 0 end )-sum( case when a.cash = 1 and a.TypeId = 15 and a.State = 10 then a.Amount else 0 end ) [CashGGRAmount]
			,sum( case when a.bonus = 1 and a.TypeId = 10 and a.State = 10  then a.Amount else 0 end ) [BonusBetAmount]
			,count(distinct case when a.bonus = 1 and a.TypeId = 10 and a.State = 10 then a.id else null end ) [BonusBetCount]
			,sum( case when a.bonus = 1 and a.TypeId = 15 and a.State = 10 then a.Amount else 0 end ) [BonusWinAmount]
			,count(distinct case when a.bonus = 1 and a.TypeId = 15 and a.State = 10  then a.id else null end ) [BonusWinCount]
			,sum( case when a.bonus = 1 and a.TypeId = 10 and a.State = 10  then a.Amount else 0 end )-sum( case when a.bonus = 1 and a.TypeId = 15 and a.State = 10 then a.Amount else 0 end ) [BonusGGRAmount]
		from (
		  select 
			a.TypeId,
			a.GameId,a.CurrencyId,a.State,convert(date,DATEADD(HOUR,-4,a.Created)) Created,a.ClientId
 			  ,p.Name Product
			  ,pp.Name Provider
			  ,pc.Name ProductCategory
			  ,te.text GameName
			  ,bt.Id BetTypeId
			  ,teb.text BetType
			  ,t.Amount
			  ,a.id
			  ,case when teb.text like '%bonus%' then 1 else 0 end Bonus
			  ,Case when bt.id = 5211 then 1 else 0 end Cash
			 from [Goldblue].dbo.Document a
			join [Goldblue].dbo.[Transaction] as t on t.DocumentId =a.Id
			join [Goldblue].dbo.Account acc on acc.Id = t.AccountId
			join [Goldblue].dbo.BalanceType bt on acc.BalanceTypeId = bt.Id
			join [Goldblue].dbo.TranslationEntry teb on bt.NameId = teb.TranslationId and teb.LanguageId = 'en'
			join [Goldblue].dbo.Game g on a.GameId = g.Id
			join [Goldblue].dbo.TranslationEntry te on g.NameId = te.TranslationId and te.LanguageId = 'en'
			join [Goldblue].dbo.Product p on g.ProductId = p.Id
			join [Goldblue].dbo.ProductProvider pp on g.ProviderId = pp.Id
			join [Goldblue].dbo.ProductCategory pc on p.ProductCategoryId = pc.id
		)a
		group by
		a.Created,a.ClientId,a.Product,a.Provider,a.ProductCategory,a.GameName,a.GameId,a.CurrencyId
	)a
	LEFT join [GoldblueUTC].[dbo].[CurrencyRateUpdate] cru on EOMONTH(a.Created)= cru.CalendarDt and a.CurrencyId = cru.FromCurrency	
	left join [GoldblueUTC].[dbo].Client cl on a.clientid = cl.id
	join [Goldblue].[dbo].Region reg on cl.RegionId = reg.Id 
	where cl.istest = 0