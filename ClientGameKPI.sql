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
	[ClientId] [int] NOT NULL
	,[UserName] [varchar](255) NOT NULL
	,[GameId] [int] NOT NULL
	,[Date] [date] NOT NULL
	,[Product] [varchar](255) NOT NULL
	,[Provider] [varchar](255) NOT NULL
	,[ProductCategory] [varchar](255) NOT NULL
	,[GameName] [varchar](255) NOT NULL
	,[CurrencyId] [char](3) NOT NULL
	,[Country] [varchar](255) NOT NULL
	,[TotalBetAmount] [decimal](18, 2) NOT NULL
	,[TotalBetCount] [int] NOT NULL
	,[TotalWinAmount] [decimal](18, 2) NOT NULL
	,[TotalWinCount] [int] NOT NULL
	,[TotalGGRAmount] [decimal](18, 2) NOT NULL
	,[CashBetAmount] [decimal](18, 2) NOT NULL
	,[CashBetCount] [int] NOT NULL
	,[CashWinAmount] [decimal](18, 2) NOT NULL
	,[CashWinCount] [int] NOT NULL
	,[CashGGRAmount] [decimal](18, 2) NOT NULL
	,[BonusBetAmount] [decimal](18, 2) NOT NULL
	,[BonusBetCount] [int] NOT NULL
	,[BonusWinAmount] [decimal](18, 2) NOT NULL
	,[BonusWinCount] [int] NOT NULL
	,[BonusGGRAmount] [decimal](18, 2) NOT NULL
	,[SlotsTotalBetAmount] [decimal] (18,2) NOT NULL 
	,[SlotsTotalBetCount] [int] NULL 
	,[SlotsTotalWinAmount] [decimal] (18,2) NOT NULL 
	,[SlotsTotalWinCount] [int] NULL 
	,[SlotsTotalGGRAmount] [decimal] (18,2) NOT NULL 
	,[SlotsCashBetAmount] [decimal] (18,2) NOT NULL 
	,[SlotsCashBetCount] [int] NULL 
	,[SlotsCashWinAmount] [decimal] (18,2) NOT NULL 
	,[SlotsCashWinCount] [int] NULL 
	,[SlotsCashGGRAmount] [decimal] (18,2) NOT NULL
	,[SlotsBonusBetAmount] [decimal] (18,2) NOT NULL 
	,[SlotsBonusBetCount] [int] NULL 
	,[SlotsBonusWinAmount] [decimal] (18,2) NOT NULL 
	,[SlotsBonusWinCount] [int] NULL 
	,[SlotsBonusGGRAmount] [decimal] (18,2) NOT NULL
	,[LiveTotalBetAmount] [decimal] (18,2) NOT NULL
	,[LiveTotalBetCount] [int] NULL
	,[LiveTotalWinAmount] [decimal] (18,2) NOT NULL
	,[LiveTotalWinCount] [int] NULL
	,[LiveTotalGGRAmount] [decimal] (18,2) NOT NULL
	,[LiveCashBetAmount] [decimal] (18,2) NOT NULL 
	,[LiveCashBetCount] [int] NULL 
	,[LiveCashWinAmount] [decimal] (18,2) NOT NULL 
	,[LiveCashWinCount] [int] NULL 
	,[LiveCashGGRAmount] [decimal] (18,2) NOT NULL
	,[LiveBonusBetAmount] [decimal] (18,2) NOT NULL 
	,[LiveBonusBetCount] [int] NULL 
	,[LiveBonusWinAmount] [decimal] (18,2) NOT NULL 
	,[LiveBonusWinCount] [int] NULL 
	,[LiveBonusGGRAmount] [decimal] (18,2) NOT NULL
	,[SportTotalBetAmount] [decimal] (18,2) NOT NULL
	,[SportTotalBetCount] [int] NULL
	,[SportTotalWinAmount] [decimal] (18,2) NOT NULL
	,[SportTotalWinCount] [int] NULL
	,[SportTotalGGRAmount] [decimal] (18,2) NOT NULL
	,[SportCashBetAmount] [decimal] (18,2) NOT NULL 
	,[SportCashBetCount] [int] NULL 
	,[SportCashWinAmount] [decimal] (18,2) NOT NULL 
	,[SportCashWinCount] [int] NULL 
	,[SportCashGGRAmount] [decimal] (18,2) NOT NULL
	,[SportBonusBetAmount] [decimal] (18,2) NOT NULL 
	,[SportBonusBetCount] [int] NULL 
	,[SportBonusWinAmount] [decimal] (18,2) NOT NULL 
	,[SportBonusWinCount] [int] NULL 
	,[SportBonusGGRAmount] [decimal] (18,2) NOT NULL
	,[OtherTotalBetAmount] [decimal] (18,2) NOT NULL
	,[OtherTotalBetCount] [int] NULL
	,[OtherTotalWinAmount] [decimal] (18,2) NOT NULL
	,[OtherTotalWinCount] [int] NULL
	,[OtherTotalGGRAmount] [decimal] (18,2) NOT NULL
	,[OtherCashBetAmount] [decimal] (18,2) NOT NULL 
	,[OtherCashBetCount] [int] NULL 
	,[OtherCashWinAmount] [decimal] (18,2) NOT NULL 
	,[OtherCashWinCount] [int] NULL 
	,[OtherCashGGRAmount] [decimal] (18,2) NOT NULL
	,[OtherBonusBetAmount] [decimal] (18,2) NOT NULL 
	,[OtherBonusBetCount] [int] NULL 
	,[OtherBonusWinAmount] [decimal] (18,2) NOT NULL 
	,[OtherBonusWinCount] [int] NULL 
	,[OtherBonusGGRAmount] [decimal] (18,2) NOT NULL

	,[TotalBetAmountEur] [decimal](18, 2) NOT NULL
	,[TotalWinAmountEur] [decimal](18, 2) NOT NULL
	,[TotalGGRAmountEur] [decimal](18, 2) NOT NULL
	,[CashBetAmountEur] [decimal](18, 2) NOT NULL
	,[CashWinAmountEur] [decimal](18, 2) NOT NULL
	,[CashGGRAmountEur] [decimal](18, 2) NOT NULL
	,[BonusBetAmountEur] [decimal](18, 2) NOT NULL
	,[BonusWinAmountEur] [decimal](18, 2) NOT NULL
	,[BonusGGRAmountEur] [decimal](18, 2) NOT NULL
	,[SlotsTotalBetAmountEur] [decimal] (18,2) NOT NULL 
	,[SlotsTotalWinAmountEur] [decimal] (18,2) NOT NULL 
	,[SlotsTotalGGRAmountEur] [decimal] (18,2) NOT NULL 
	,[SlotsCashBetAmountEur] [decimal] (18,2) NOT NULL 
	,[SlotsCashWinAmountEur] [decimal] (18,2) NOT NULL 
	,[SlotsCashGGRAmountEur] [decimal] (18,2) NOT NULL
	,[SlotsBonusBetAmountEur] [decimal] (18,2) NOT NULL 
	,[SlotsBonusWinAmountEur] [decimal] (18,2) NOT NULL 
	,[SlotsBonusGGRAmountEur] [decimal] (18,2) NOT NULL
	,[LiveTotalBetAmountEur] [decimal] (18,2) NOT NULL
	,[LiveTotalWinAmountEur] [decimal] (18,2) NOT NULL
	,[LiveTotalGGRAmountEur] [decimal] (18,2) NOT NULL
	,[LiveCashBetAmountEur] [decimal] (18,2) NOT NULL 
	,[LiveCashWinAmountEur] [decimal] (18,2) NOT NULL 
	,[LiveCashGGRAmountEur] [decimal] (18,2) NOT NULL
	,[LiveBonusBetAmountEur] [decimal] (18,2) NOT NULL 
	,[LiveBonusWinAmountEur] [decimal] (18,2) NOT NULL 
	,[LiveBonusGGRAmountEur] [decimal] (18,2) NOT NULL
	,[SportTotalBetAmountEur] [decimal] (18,2) NOT NULL
	,[SportTotalWinAmountEur] [decimal] (18,2) NOT NULL
	,[SportTotalGGRAmountEur] [decimal] (18,2) NOT NULL
	,[SportCashBetAmountEur] [decimal] (18,2) NOT NULL 
	,[SportCashWinAmountEur] [decimal] (18,2) NOT NULL 
	,[SportCashGGRAmountEur] [decimal] (18,2) NOT NULL
	,[SportBonusBetAmountEur] [decimal] (18,2) NOT NULL 
	,[SportBonusWinAmountEur] [decimal] (18,2) NOT NULL 
	,[SportBonusGGRAmountEur] [decimal] (18,2) NOT NULL
	,[OtherTotalBetAmountEur] [decimal] (18,2) NOT NULL
	,[OtherTotalWinAmountEur] [decimal] (18,2) NOT NULL
	,[OtherTotalGGRAmountEur] [decimal] (18,2) NOT NULL
	,[OtherCashBetAmountEur] [decimal] (18,2) NOT NULL 
	,[OtherCashWinAmountEur] [decimal] (18,2) NOT NULL 
	,[OtherCashGGRAmountEur] [decimal] (18,2) NOT NULL
	,[OtherBonusBetAmountEur] [decimal] (18,2) NOT NULL 
	,[OtherBonusWinAmountEur] [decimal] (18,2) NOT NULL 
	,[OtherBonusGGRAmountEur] [decimal] (18,2) NOT NULL
	,[FiscalYearWeekNumber] [int] NULL
	,[CalendarYearMonthStartDt] [date] NOT NULL
	,[CalendarYearMonthNumber] [int] NULL
	,[CalendarYear] [int] NOT NULL
	,[TheoreticalRTP] float NOT NULL
	,[RegistrationDate] [date] NOT NULL
	,[FTDDate] [date] NOT NULL
	,[TheoCashWin]  [decimal](18, 2) NOT NULL
	,[TheoTotalWin] [decimal](18, 2) NOT NULL
	,[TheoCashWinEur]  [decimal](18, 2) NOT NULL
	,[TheoTotalWinEur] [decimal](18, 2) NOT NULL
	,[Registration] [varchar](255) NOT NULL
	,[FTD] [varchar](255) NOT NULL
	,[Modified] [datetime] NOT NULL,

 CONSTRAINT [PK_ClientGameKPI] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC,
	[Date] DESC,
	[GameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPI] ADD  DEFAULT (sysdatetime()) FOR [Modified]
GO


delete from [GoldblueUTC].[dbo].[ClientGameKPI] where [Date]>= DATEADD(DAY,-1,GETDATE());
INSERT INTO [GoldblueUTC].[dbo].[ClientGameKPI]
select distinct		
	a.ClientId,cl.Login,a.GameId,a.Created,case when a.Product= 'Betting' then 'SportsBook' else a.Product end Product,a.Provider,a.ProductCategory,a.GameName,a.CurrencyId,reg.Alpha2Code
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
	,a.[SlotsTotalBetAmount]
	,a.[SlotsTotalBetCount]
	,a.[SlotsTotalWinAmount]
	,a.[SlotsTotalWinCount]
	,a.[SlotsTotalGGRAmount]
	,a.[SlotsCashBetAmount]
	,a.[SlotsCashBetCount]
	,a.[SlotsCashWinAmount]
	,a.[SlotsCashWinCount]
	,a.[SlotsCashGGRAmount]
	,a.[SlotsBonusBetAmount]
	,a.[SlotsBonusBetCount]
	,a.[SlotsBonusWinAmount]
	,a.[SlotsBonusWinCount]
	,a.[SlotsBonusGGRAmount]
	,a.[LiveTotalBetAmount]
	,a.[LiveTotalBetCount]
	,a.[LiveTotalWinAmount]
	,a.[LiveTotalWinCount]
	,a.[LiveTotalGGRAmount]
	,a.[LiveCashBetAmount]
	,a.[LiveCashBetCount]
	,a.[LiveCashWinAmount]
	,a.[LiveCashWinCount]
	,a.[LiveCashGGRAmount]
	,a.[LiveBonusBetAmount]
	,a.[LiveBonusBetCount]
	,a.[LiveBonusWinAmount]
	,a.[LiveBonusWinCount]
	,a.[LiveBonusGGRAmount]
	,a.[SportTotalBetAmount]
	,a.[SportTotalBetCount]
	,a.[SportTotalWinAmount]
	,a.[SportTotalWinCount]
	,a.[SportTotalGGRAmount]
	,a.[SportCashBetAmount]
	,a.[SportCashBetCount]
	,a.[SportCashWinAmount]
	,a.[SportCashWinCount]
	,a.[SportCashGGRAmount]
	,a.[SportBonusBetAmount]
	,a.[SportBonusBetCount]
	,a.[SportBonusWinAmount]
	,a.[SportBonusWinCount]
	,a.[SportBonusGGRAmount]
	,a.[OtherTotalBetAmount]
	,a.[OtherTotalBetCount]
	,a.[OtherTotalWinAmount]
	,a.[OtherTotalWinCount]
	,a.[OtherTotalGGRAmount]
	,a.[OtherCashBetAmount]
	,a.[OtherCashBetCount]
	,a.[OtherCashWinAmount]
	,a.[OtherCashWinCount]
	,a.[OtherCashGGRAmount]
	,a.[OtherBonusBetAmount]
	,a.[OtherBonusBetCount]
	,a.[OtherBonusWinAmount]
	,a.[OtherBonusWinCount]
	,a.[OtherBonusGGRAmount]
	,case when a.CurrencyId = 'Eur' then a.[TotalBetAmount] else a.[TotalBetAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[TotalWinAmount] else a.[TotalWinAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[TotalGGRAmount] else a.[TotalGGRAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[CashBetAmount] else a.[CashBetAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[CashWinAmount] else a.[CashWinAmount]/cru.rate end 
	,case when a.CurrencyId = 'Eur' then a.[CashGGRAmount] else a.[CashGGRAmount]/cru.rate end 
	,case when a.CurrencyId = 'Eur' then a.[BonusBetAmount] else a.[BonusBetAmount]/cru.rate end 
	,case when a.CurrencyId = 'Eur' then a.[BonusWinAmount] else a.[BonusWinAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[BonusGGRAmount] else a.[BonusGGRAmount]/cru.rate end 
	,case when a.CurrencyId = 'Eur' then a.[SlotsTotalBetAmount] else a.[SlotsTotalBetAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[SlotsTotalWinAmount] else a.[SlotsTotalWinAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[SlotsTotalGGRAmount] else a.[SlotsTotalGGRAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[SlotsCashBetAmount] else a.[SlotsCashBetAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[SlotsCashWinAmount] else a.[SlotsCashWinAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[SlotsCashGGRAmount] else a.[SlotsCashGGRAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[SlotsBonusBetAmount] else a.[SlotsBonusBetAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[SlotsBonusWinAmount] else a.[SlotsBonusWinAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[SlotsBonusGGRAmount] else a.[SlotsBonusGGRAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[LiveTotalBetAmount] else a.[LiveTotalBetAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[LiveTotalWinAmount] else a.[LiveTotalWinAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[LiveTotalGGRAmount] else a.[LiveTotalGGRAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[LiveCashBetAmount] else a.[LiveCashBetAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[LiveCashWinAmount] else a.[LiveCashWinAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[LiveCashGGRAmount] else a.[LiveCashGGRAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[LiveBonusBetAmount] else a.[LiveBonusBetAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[LiveBonusWinAmount] else a.[LiveBonusWinAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[LiveBonusGGRAmount] else a.[LiveBonusGGRAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[SportTotalBetAmount] else a.[SportTotalBetAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[SportTotalWinAmount] else a.[SportTotalWinAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[SportTotalGGRAmount] else a.[SportTotalGGRAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[SportCashBetAmount] else a.[SportCashBetAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[SportCashWinAmount] else a.[SportCashWinAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[SportCashGGRAmount] else a.[SportCashGGRAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[SportBonusBetAmount] else a.[SportBonusBetAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[SportBonusWinAmount] else a.[SportBonusWinAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[SportBonusGGRAmount] else a.[SportBonusGGRAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[OtherTotalBetAmount] else a.[OtherTotalBetAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[OtherTotalWinAmount] else a.[OtherTotalWinAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[OtherTotalGGRAmount] else a.[OtherTotalGGRAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[OtherCashBetAmount] else a.[OtherCashBetAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[OtherCashWinAmount] else a.[OtherCashWinAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[OtherCashGGRAmount] else a.[OtherCashGGRAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[OtherBonusBetAmount] else a.[OtherBonusBetAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[OtherBonusWinAmount] else a.[OtherBonusWinAmount]/cru.rate end
	,case when a.CurrencyId = 'Eur' then a.[OtherBonusGGRAmount] else a.[OtherBonusGGRAmount]/cru.rate end
	,dd.FiscalYearWeekNumber
	,dd.CalendarYearMonthStartDt
	,dd.CalendarYearMonthNumber
	,dd.CalendarYear
	,case when a.product = 'Slots' then 0.035 
			when a.product = 'Betting' THEN 0.03
			when a.product = 'VIRTUAL SPORTS' THEN 0.03
			When a.product in ('LiveGames','Table Games') THEN
				CASE WHEN a.GameName like '%Baccarat%' then 0.0115
					when a.GameName like '%Blackjack%' then 0.01
					when a.GameName like '%Roulette%' then 0.027
					when a.GameName like '%Sic%Bo%' then 0.0278
					else 0.03 end
		else 0.03 end TheoriticalRTP
	,convert(date, DATEADD(MONTH, DATEDIFF(MONTH, -1, b.RegDate)-1, 0)) RegDate
	,convert(date,DATEADD(MONTH, DATEDIFF(MONTH, -1, b.FTDDate)-1, 0)) FTDDate
	,(case when a.product = 'Slots' then 0.035 
			when a.product = 'Betting' THEN 0.03
			when a.product = 'VIRTUAL SPORTS' THEN 0.03
			When a.product in ('LiveGames','Table Games') THEN
				CASE WHEN a.GameName like '%Baccarat%' then 0.0115
					when a.GameName like '%Blackjack%' then 0.01
					when a.GameName like '%Roulette%' then 0.027
					when a.GameName like '%Sic%Bo%' then 0.0278
					else 0.03 end
		else 0.03 end ) * a.CashBetAmount TheoCashWin
	,(case when a.product = 'Slots' then 0.035 
			when a.product = 'Betting' THEN 0.03
			when a.product = 'VIRTUAL SPORTS' THEN 0.03
			When a.product in ('LiveGames','Table Games') THEN
				CASE WHEN a.GameName like '%Baccarat%' then 0.0115
					when a.GameName like '%Blackjack%' then 0.01
					when a.GameName like '%Roulette%' then 0.027
					when a.GameName like '%Sic%Bo%' then 0.0278
					else 0.03 end
		else 0.03 end ) * a.TotalBetAmount TheoTotalWin
	,(case when a.product = 'Slots' then 0.035 
			when a.product = 'Betting' THEN 0.03
			when a.product = 'VIRTUAL SPORTS' THEN 0.03
			When a.product in ('LiveGames','Table Games') THEN
				CASE WHEN a.GameName like '%Baccarat%' then 0.0115
					when a.GameName like '%Blackjack%' then 0.01
					when a.GameName like '%Roulette%' then 0.027
					when a.GameName like '%Sic%Bo%' then 0.0278
					else 0.03 end
		else 0.03 end ) * (case when a.CurrencyId = 'Eur' then a.[CashBetAmount] else a.[CashBetAmount]/cru.rate end) TheoCashWinEur
	,(case when a.product = 'Slots' then 0.035 
			when a.product = 'Betting' THEN 0.03
			when a.product = 'VIRTUAL SPORTS' THEN 0.03
			When a.product in ('LiveGames','Table Games') THEN
				CASE WHEN a.GameName like '%Baccarat%' then 0.0115
					when a.GameName like '%Blackjack%' then 0.01
					when a.GameName like '%Roulette%' then 0.027
					when a.GameName like '%Sic%Bo%' then 0.0278
					else 0.03 end
			else 0.03 end ) * (case when a.CurrencyId = 'Eur' then a.[TotalBetAmount] else a.[TotalBetAmount]/cru.rate end) TheoTotalWinEur
	,case when dd.CalendarYearMonthStartDt =convert(date, DATEADD(MONTH, DATEDIFF(MONTH, -1, b.RegDate)-1, 0)) then 'New' else 'Old' end Registration
	,case when convert(date,DATEADD(MONTH, DATEDIFF(MONTH, -1, b.FTDDate)-1, 0)) is null then 'Not FD' 
			when dd.CalendarYearMonthStartDt =convert(date,DATEADD(MONTH, DATEDIFF(MONTH, -1, b.FTDDate)-1, 0)) then 'New' 
			when dd.CalendarYearMonthStartDt < convert(date,DATEADD(MONTH, DATEDIFF(MONTH, -1, b.FTDDate)-1, 0)) then 'Not FD' 
			else 'Old' end FD
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

			,sum( case when a.cash = 1 and a.TypeId = 10 and a.State = 10  and a.Product='Slots' then a.Amount else 0 end )+sum( case when a.bonus = 1 and a.TypeId = 10 and a.State = 10  and a.Product='Slots' then a.Amount else 0 end ) [SlotsTotalBetAmount]
			,count(distinct case when a.cash = 1 and a.TypeId = 10 and a.State = 10 and a.Product='Slots' then a.id else null end )+count(distinct case when a.bonus = 1 and a.TypeId = 10 and a.State = 10 and a.Product='Slots' then a.id else null end ) [SlotsTotalBetCount]
			,sum( case when a.cash = 1 and a.TypeId = 15 and a.State = 10 and a.Product='Slots' then a.Amount else 0 end )+sum( case when a.bonus = 1 and a.TypeId = 15 and a.State = 10 and a.Product='Slots' then a.Amount else 0 end ) [SlotsTotalWinAmount]
			,count(distinct case when a.cash = 1 and a.TypeId = 15 and a.State = 10  and a.Product='Slots' then a.id else null end )+count(distinct case when a.bonus = 1 and a.TypeId = 15 and a.State = 10  and a.Product='Slots' then a.id else null end ) [SlotsTotalWinCount]
			,sum( case when a.cash = 1 and a.TypeId = 10 and a.State = 10  and a.Product='Slots' then a.Amount else 0 end )-sum( case when a.cash = 1 and a.TypeId = 15 and a.State = 10 and a.Product='Slots' then a.Amount else 0 end )+sum( case when a.bonus = 1 and a.TypeId = 10 and a.State = 10  and a.Product='Slots' then a.Amount else 0 end )-sum( case when a.bonus = 1 and a.TypeId = 15 and a.State = 10 and a.Product='Slots' then a.Amount else 0 end ) [SlotsTotalGGRAmount]
			,sum( case when a.cash = 1 and a.TypeId = 10 and a.State = 10  and a.Product='Slots' then a.Amount else 0 end ) [SlotsCashBetAmount]
			,count(distinct case when a.cash = 1 and a.TypeId = 10 and a.State = 10 and a.Product='Slots' then a.id else null end ) [SlotsCashBetCount]
			,sum( case when a.cash = 1 and a.TypeId = 15 and a.State = 10 and a.Product='Slots' then a.Amount else 0 end ) [SlotsCashWinAmount]
			,count(distinct case when a.cash = 1 and a.TypeId = 15 and a.State = 10  and a.Product='Slots' then a.id else null end ) [SlotsCashWinCount]
			,sum( case when a.cash = 1 and a.TypeId = 10 and a.State = 10  and a.Product='Slots' then a.Amount else 0 end )-sum( case when a.cash = 1 and a.TypeId = 15 and a.State = 10 and a.Product='Slots' then a.Amount else 0 end ) [SlotsCashGGRAmount]
			,sum( case when a.bonus = 1 and a.TypeId = 10 and a.State = 10  and a.Product='Slots' then a.Amount else 0 end ) [SlotsBonusBetAmount]
			,count(distinct case when a.bonus = 1 and a.TypeId = 10 and a.State = 10 and a.Product='Slots' then a.id else null end ) [SlotsBonusBetCount]
			,sum( case when a.bonus = 1 and a.TypeId = 15 and a.State = 10 and a.Product='Slots' then a.Amount else 0 end ) [SlotsBonusWinAmount]
			,count(distinct case when a.bonus = 1 and a.TypeId = 15 and a.State = 10  and a.Product='Slots' then a.id else null end ) [SlotsBonusWinCount]
			,sum( case when a.bonus = 1 and a.TypeId = 10 and a.State = 10  and a.Product='Slots' then a.Amount else 0 end )-sum( case when a.bonus = 1 and a.TypeId = 15 and a.State = 10 and a.Product='Slots' then a.Amount else 0 end ) [SlotsBonusGGRAmount]

			,sum( case when a.cash = 1 and a.TypeId = 10 and a.State = 10  and a.Product='LiveGames' then a.Amount else 0 end )+sum( case when a.bonus = 1 and a.TypeId = 10 and a.State = 10  and a.Product='LiveGames' then a.Amount else 0 end ) [LiveTotalBetAmount]
			,count(distinct case when a.cash = 1 and a.TypeId = 10 and a.State = 10 and a.Product='LiveGames' then a.id else null end )+count(distinct case when a.bonus = 1 and a.TypeId = 10 and a.State = 10 and a.Product='LiveGames' then a.id else null end ) [LiveTotalBetCount]
			,sum( case when a.cash = 1 and a.TypeId = 15 and a.State = 10 and a.Product='LiveGames' then a.Amount else 0 end )+sum( case when a.bonus = 1 and a.TypeId = 15 and a.State = 10 and a.Product='LiveGames' then a.Amount else 0 end ) [LiveTotalWinAmount]
			,count(distinct case when a.cash = 1 and a.TypeId = 15 and a.State = 10  and a.Product='LiveGames' then a.id else null end )+count(distinct case when a.bonus = 1 and a.TypeId = 15 and a.State = 10  and a.Product='LiveGames' then a.id else null end ) [LiveTotalWinCount]
			,sum( case when a.cash = 1 and a.TypeId = 10 and a.State = 10  and a.Product='LiveGames' then a.Amount else 0 end )-sum( case when a.cash = 1 and a.TypeId = 15 and a.State = 10 and a.Product='LiveGames' then a.Amount else 0 end )+sum( case when a.bonus = 1 and a.TypeId = 10 and a.State = 10  and a.Product='LiveGames' then a.Amount else 0 end )-sum( case when a.bonus = 1 and a.TypeId = 15 and a.State = 10 and a.Product='LiveGames' then a.Amount else 0 end ) [LiveTotalGGRAmount]
			,sum( case when a.cash = 1 and a.TypeId = 10 and a.State = 10  and a.Product='LiveGames' then a.Amount else 0 end ) [LiveCashBetAmount]
			,count(distinct case when a.cash = 1 and a.TypeId = 10 and a.State = 10 and a.Product='LiveGames' then a.id else null end ) [LiveCashBetCount]
			,sum( case when a.cash = 1 and a.TypeId = 15 and a.State = 10 and a.Product='LiveGames' then a.Amount else 0 end ) [LiveCashWinAmount]
			,count(distinct case when a.cash = 1 and a.TypeId = 15 and a.State = 10  and a.Product='LiveGames' then a.id else null end ) [LiveCashWinCount]
			,sum( case when a.cash = 1 and a.TypeId = 10 and a.State = 10  and a.Product='LiveGames' then a.Amount else 0 end )-sum( case when a.cash = 1 and a.TypeId = 15 and a.State = 10 and a.Product='LiveGames' then a.Amount else 0 end ) [LiveCashGGRAmount]
			,sum( case when a.bonus = 1 and a.TypeId = 10 and a.State = 10  and a.Product='LiveGames' then a.Amount else 0 end ) [LiveBonusBetAmount]
			,count(distinct case when a.bonus = 1 and a.TypeId = 10 and a.State = 10 and a.Product='LiveGames' then a.id else null end ) [LiveBonusBetCount]
			,sum( case when a.bonus = 1 and a.TypeId = 15 and a.State = 10 and a.Product='LiveGames' then a.Amount else 0 end ) [LiveBonusWinAmount]
			,count(distinct case when a.bonus = 1 and a.TypeId = 15 and a.State = 10  and a.Product='LiveGames' then a.id else null end ) [LiveBonusWinCount]
			,sum( case when a.bonus = 1 and a.TypeId = 10 and a.State = 10  and a.Product='LiveGames' then a.Amount else 0 end )-sum( case when a.bonus = 1 and a.TypeId = 15 and a.State = 10 and a.Product='LiveGames' then a.Amount else 0 end ) [LiveBonusGGRAmount]

			,sum( case when a.cash = 1 and a.TypeId = 10 and a.State = 10  and a.Product='Betting' then a.Amount else 0 end )+sum( case when a.bonus = 1 and a.TypeId = 10 and a.State = 10  and a.Product='Betting' then a.Amount else 0 end ) [SportTotalBetAmount]
			,count(distinct case when a.cash = 1 and a.TypeId = 10 and a.State = 10 and a.Product='Betting' then a.id else null end )+count(distinct case when a.bonus = 1 and a.TypeId = 10 and a.State = 10 and a.Product='Betting' then a.id else null end ) [SportTotalBetCount]
			,sum( case when a.cash = 1 and a.TypeId = 15 and a.State = 10 and a.Product='Betting' then a.Amount else 0 end )+sum( case when a.bonus = 1 and a.TypeId = 15 and a.State = 10 and a.Product='Betting' then a.Amount else 0 end ) [SportTotalWinAmount]
			,count(distinct case when a.cash = 1 and a.TypeId = 15 and a.State = 10  and a.Product='Betting' then a.id else null end )+count(distinct case when a.bonus = 1 and a.TypeId = 15 and a.State = 10  and a.Product='Betting' then a.id else null end ) [SportTotalWinCount]
			,sum( case when a.cash = 1 and a.TypeId = 10 and a.State = 10  and a.Product='Betting' then a.Amount else 0 end )-sum( case when a.cash = 1 and a.TypeId = 15 and a.State = 10 and a.Product='Betting' then a.Amount else 0 end )+sum( case when a.bonus = 1 and a.TypeId = 10 and a.State = 10  and a.Product='Betting' then a.Amount else 0 end )-sum( case when a.bonus = 1 and a.TypeId = 15 and a.State = 10 and a.Product='Betting' then a.Amount else 0 end ) [SportTotalGGRAmount]
			,sum( case when a.cash = 1 and a.TypeId = 10 and a.State = 10  and a.Product='Betting' then a.Amount else 0 end ) [SportCashBetAmount]
			,count(distinct case when a.cash = 1 and a.TypeId = 10 and a.State = 10 and a.Product='Betting' then a.id else null end ) [SportCashBetCount]
			,sum( case when a.cash = 1 and a.TypeId = 15 and a.State = 10 and a.Product='Betting' then a.Amount else 0 end ) [SportCashWinAmount]
			,count(distinct case when a.cash = 1 and a.TypeId = 15 and a.State = 10  and a.Product='Betting' then a.id else null end ) [SportCashWinCount]
			,sum( case when a.cash = 1 and a.TypeId = 10 and a.State = 10  and a.Product='Betting' then a.Amount else 0 end )-sum( case when a.cash = 1 and a.TypeId = 15 and a.State = 10 and a.Product='Betting' then a.Amount else 0 end ) [SportCashGGRAmount]
			,sum( case when a.bonus = 1 and a.TypeId = 10 and a.State = 10  and a.Product='Betting' then a.Amount else 0 end ) [SportBonusBetAmount]
			,count(distinct case when a.bonus = 1 and a.TypeId = 10 and a.State = 10 and a.Product='Betting' then a.id else null end ) [SportBonusBetCount]
			,sum( case when a.bonus = 1 and a.TypeId = 15 and a.State = 10 and a.Product='Betting' then a.Amount else 0 end ) [SportBonusWinAmount]
			,count(distinct case when a.bonus = 1 and a.TypeId = 15 and a.State = 10  and a.Product='Betting' then a.id else null end ) [SportBonusWinCount]
			,sum( case when a.bonus = 1 and a.TypeId = 10 and a.State = 10  and a.Product='Betting' then a.Amount else 0 end )-sum( case when a.bonus = 1 and a.TypeId = 15 and a.State = 10 and a.Product='Betting' then a.Amount else 0 end ) [SportBonusGGRAmount]

			,sum( case when a.cash = 1 and a.TypeId = 10 and a.State = 10  and a.Product not in ('Betting','LiveGames','Slots') then a.Amount else 0 end )+sum( case when a.bonus = 1 and a.TypeId = 10 and a.State = 10  and a.Product not in ('Betting','LiveGames','Slots') then a.Amount else 0 end ) [OtherTotalBetAmount]
			,count(distinct case when a.cash = 1 and a.TypeId = 10 and a.State = 10 and a.Product not in ('Betting','LiveGames','Slots') then a.id else null end )+count(distinct case when a.bonus = 1 and a.TypeId = 10 and a.State = 10 and a.Product not in ('Betting','LiveGames','Slots') then a.id else null end ) [OtherTotalBetCount]
			,sum( case when a.cash = 1 and a.TypeId = 15 and a.State = 10 and a.Product not in ('Betting','LiveGames','Slots') then a.Amount else 0 end )+sum( case when a.bonus = 1 and a.TypeId = 15 and a.State = 10 and a.Product not in ('Betting','LiveGames','Slots') then a.Amount else 0 end ) [OtherTotalWinAmount]
			,count(distinct case when a.cash = 1 and a.TypeId = 15 and a.State = 10  and a.Product not in ('Betting','LiveGames','Slots') then a.id else null end )+count(distinct case when a.bonus = 1 and a.TypeId = 15 and a.State = 10  and a.Product not in ('Betting','LiveGames','Slots') then a.id else null end ) [OtherTotalWinCount]
			,sum( case when a.cash = 1 and a.TypeId = 10 and a.State = 10  and a.Product not in ('Betting','LiveGames','Slots') then a.Amount else 0 end )-sum( case when a.cash = 1 and a.TypeId = 15 and a.State = 10 and a.Product not in ('Betting','LiveGames','Slots') then a.Amount else 0 end )+sum( case when a.bonus = 1 and a.TypeId = 10 and a.State = 10  and a.Product not in ('Betting','LiveGames','Slots') then a.Amount else 0 end )-sum( case when a.bonus = 1 and a.TypeId = 15 and a.State = 10 and a.Product not in ('Betting','LiveGames','Slots') then a.Amount else 0 end ) [OtherTotalGGRAmount]
			,sum( case when a.cash = 1 and a.TypeId = 10 and a.State = 10  and a.Product not in ('Betting','LiveGames','Slots') then a.Amount else 0 end ) [OtherCashBetAmount]
			,count(distinct case when a.cash = 1 and a.TypeId = 10 and a.State = 10 and a.Product not in ('Betting','LiveGames','Slots') then a.id else null end ) [OtherCashBetCount]
			,sum( case when a.cash = 1 and a.TypeId = 15 and a.State = 10 and a.Product not in ('Betting','LiveGames','Slots') then a.Amount else 0 end ) [OtherCashWinAmount]
			,count(distinct case when a.cash = 1 and a.TypeId = 15 and a.State = 10  and a.Product not in ('Betting','LiveGames','Slots') then a.id else null end ) [OtherCashWinCount]
			,sum( case when a.cash = 1 and a.TypeId = 10 and a.State = 10  and a.Product not in ('Betting','LiveGames','Slots') then a.Amount else 0 end )-sum( case when a.cash = 1 and a.TypeId = 15 and a.State = 10 and a.Product not in ('Betting','LiveGames','Slots') then a.Amount else 0 end ) [OtherCashGGRAmount]
			,sum( case when a.bonus = 1 and a.TypeId = 10 and a.State = 10  and a.Product not in ('Betting','LiveGames','Slots') then a.Amount else 0 end ) [OtherBonusBetAmount]
			,count(distinct case when a.bonus = 1 and a.TypeId = 10 and a.State = 10 and a.Product not in ('Betting','LiveGames','Slots') then a.id else null end ) [OtherBonusBetCount]
			,sum( case when a.bonus = 1 and a.TypeId = 15 and a.State = 10 and a.Product not in ('Betting','LiveGames','Slots') then a.Amount else 0 end ) [OtherBonusWinAmount]
			,count(distinct case when a.bonus = 1 and a.TypeId = 15 and a.State = 10  and a.Product not in ('Betting','LiveGames','Slots') then a.id else null end ) [OtherBonusWinCount]
			,sum( case when a.bonus = 1 and a.TypeId = 10 and a.State = 10  and a.Product not in ('Betting','LiveGames','Slots') then a.Amount else 0 end )-sum( case when a.bonus = 1 and a.TypeId = 15 and a.State = 10 and a.Product not in ('Betting','LiveGames','Slots') then a.Amount else 0 end ) [OtherBonusGGRAmount]

		from (
			  select 
				a.TypeId,
				a.GameId,a.CurrencyId,a.State,convert(date,a.Created) Created,a.ClientId
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
				 from [GoldblueUTC].dbo.Document a
				join [GoldblueUTC].dbo.[Transaction] as t on t.DocumentId =a.Id
				join [GoldblueUTC].dbo.Account acc on acc.Id = t.AccountId
				join [GoldblueUTC].dbo.BalanceType bt on acc.BalanceTypeId = bt.Id
				join [GoldblueUTC].dbo.TranslationEntry teb on bt.NameId = teb.TranslationId and teb.LanguageId = 'en'
				join [GoldblueUTC].dbo.Game g on a.GameId = g.Id
				join [GoldblueUTC].dbo.TranslationEntry te on g.NameId = te.TranslationId and te.LanguageId = 'en'
				join [GoldblueUTC].dbo.Product p on g.ProductId = p.Id
				join [GoldblueUTC].dbo.ProductProvider pp on g.ProviderId = pp.Id
				join [GoldblueUTC].dbo.ProductCategory pc on p.ProductCategoryId = pc.id
				--WHERE convert(date,a.Created) >= DATEADD(DAY, -1,GETDATE())
		)a
		group by
		a.Created,a.ClientId,a.Product,a.Provider,a.ProductCategory,a.GameName,a.GameId,a.CurrencyId
	)a
	LEFT join [GoldblueUTC].[dbo].[CurrencyRateUpdate] cru on convert(date,DATEADD(MONTH, DATEDIFF(MONTH, -1, a.Created)-1, -1))= cru.CalendarDt and a.CurrencyId = cru.FromCurrency	
	left join [GoldblueUTC].[dbo].Client cl on a.clientid = cl.id
	join [GoldblueUTC].[dbo].Region reg on cl.RegionId = reg.Id 
	left join [GoldblueUTC].[dbo].DateDim dd on a.Created = dd.CalendarDt
	left join [GoldblueUTC].[dbo].[ClientKPIAggregate] b on a.ClientId = b.ClientId
	where cl.istest = 0

