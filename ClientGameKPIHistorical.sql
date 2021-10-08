drop table if exists [GoldblueUTC].dbo.[ClientGameKPIHistoricalDetails];
create table [GoldblueUTC].dbo.[ClientGameKPIHistoricalDetails]
(
	ID [varchar](255) NOT NULL,
	CalendarDt [date] NOT NULL,
	DateId [int] NULL, 
	UserName [varchar](255)NOT NULL,
	ClientId [int] NULL, 
	BrandName  [varchar](255)NOT NULL,
	BrandId [int] NULL, 
	Country [varchar](255) NOT NULL,
	[CurrencyId] [varchar](255) NOT NULL,
	[Product] [varchar](255)  NULL,
	GameSourceId [int] NULL,
	GameId [varchar](255)  NULL,
	Aggegator [varchar](255)  NULL,
	[Provider] [varchar](255)  NULL,
	[GameName] [varchar](255)  NULL,
	[ProductCategory] [varchar](250)  NULL,
	[Min_Max_Bet_USD] [varchar](250) NULL,
	[Min_Max_Bet_CNY] [varchar](250) NULL,
	[Min_Max_Bet_IDR] [varchar](250) NULL,
	[Min_Max_Bet_THB] [varchar](250) NULL,
	[Volatility] [varchar](250) NULL,
	[minRTP] [float] NULL,
	[maxRTP] [float] NULL,
	[Compatibility] [varchar](250) NULL
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
	,FiscalYearWeekNumber [int] NULL
	,CalendarYearMonthStartDt [date] NOT NULL
	,CalendarYearMonthNumber [int] NULL
	,CalendarYear [int] NULL
	,TheoreticalRTP float null
	,RegistrationDate [date] NOT NULL
	,FTDDate [date]  NULL
	,TheoCashWin float null
	,TheoTotalWin float null
	,TheoCashWinEur float null
	,TheoTotalWinEur float null
	,Registration [varchar](250) NULL
	,FTD [varchar](250) NULL
	,[Modified] [datetime] NOT NULL
)
;
DROP TABLE IF EXISTS[GoldblueUTC].[dbo].[ClientGameKPIHistorical];
CREATE TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical](
	[ClientId] [int] NOT NULL
	,[UserName] [varchar](255) NOT NULL
	,[GameId] [varchar](255) NOT NULL
	,[Date] [date] NOT NULL
	,[Product] [varchar](255)  NULL
	,[Provider] [varchar](255)  NULL
	,[ProductCategory] [varchar](255)  NULL
	,[GameName] [varchar](255)  NULL
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
	,FiscalYearWeekNumber [int] NULL
	,CalendarYearMonthStartDt [date] NOT NULL
	,CalendarYearMonthNumber [int] NULL
	,CalendarYear [int] NULL
	,TheoreticalRTP float null
	,RegistrationDate [date] NOT NULL
	,FTDDate [date]  NULL
	,TheoCashWin float null
	,TheoTotalWin float null
	,TheoCashWinEur float null
	,TheoTotalWinEur float null
	,Registration [varchar](250) NULL
	,FTD [varchar](250) NULL
	,[Modified] [datetime] NOT NULL
)
;
truncate table [GoldblueUTC].dbo.[ClientGameKPIHistoricalDetails]
insert into [GoldblueUTC].dbo.[ClientGameKPIHistoricalDetails]
select distinct
	a.*, a.TheoreticalRTP * a.Cash_bet_local TheoCashWin, a.TheoreticalRTP * Total_bet_local TheoTotalWin, 
	a.TheoreticalRTP * Cash_bet TheoCashWinEur, a.TheoreticalRTP * Total_bet TheoTotalWinEur, 
	case when a.CalendarYearMonthStartDt =a.reg_date then 'New' else 'Old' end Registration,
    case when a.FD_date is null then 'Not FD' 
		when a.CalendarYearMonthStartDt =a.FD_date then 'New' 
        when a.CalendarYearMonthStartDt < a.FD_date then 'Not FD' 
        else 'Old' end FD
	,SYSDATETIME()
from (
		select distinct
			concat(a.dw_user_id,a.brand_id,a.country) ID,a.full_date,a.trans_date,a.user_name,a.dw_user_id,a.brand_name,a.brand_id,a.Country,a.Currency,
			case when a.Product= 'SLOTS' then 'Slots'
				when a.Product= 'LIVE' then 'LiveGames' 
				when a.product = 'SPORTSBOOK' then 'SportsBook'
				when a.product = 'VIRTUAL SPORTS' then 'Virtual Sports'
			end Product,
			a.game_source_id,a.game_id,a.Aggegator,
			a.Provider,a.Game_title,case when a.Product in ('Slots','Live') then 'Casino' else 'Sportsbook' end Category,a.Min_Max_Bet_CNY,a.Min_Max_Bet_IDR,a.Min_Max_Bet_THB,a.Min_Max_Bet_USD,a.Volatility,a.minRTP,a.maxRTP,a.Compatibility ,
            a.Total_bet_local,a.Total_Decisions,a.Total_win_local,0 [TotalWinCount],a.Total_ggr_local,
			a.Cash_bet_local,a.Cash_Decisions,a.Cash_win_local,0 [CashWinCount],a.Cash_ggr_local,
			a.Bonus_bet_local,a.Bonus_Decisions,a.Bonus_win_local,0 [BonusWinCount],a.Bonus_ggr_local,
			a.SlotsTotal_bet_local,a.SlotsTotal_Decisions,a.SlotsTotal_win_local,0 [SlotsTotalWinCount],a.SlotsTotal_ggr_local,
			a.SlotsCash_bet_local,a.SlotsCash_Decisions,a.SlotsCash_win_local,0 [SlotsCashWinCount],a.SlotsCash_ggr_local,
			a.SlotsBonus_bet_local,a.SlotsBonus_Decisions,a.SlotsBonus_win_local,0 [SlotsBonusWinCount],a.SlotsBonus_ggr_local,
			a.LiveTotal_bet_local,a.LiveTotal_Decisions,a.LiveTotal_win_local,0 [LiveTotalWinCount],a.LiveTotal_ggr_local,
			a.LiveCash_bet_local,a.LiveCash_Decisions,a.LiveCash_win_local,0 [LiveCashWinCount],a.LiveCash_ggr_local,
			a.LiveBonus_bet_local,a.LiveBonus_Decisions,a.LiveBonus_win_local,0 [LiveBonusWinCount],a.LiveBonus_ggr_local,
			a.SportTotal_bet_local,a.SportTotal_Decisions,a.SportTotal_win_local,0 [SportTotalWinCount],a.SportTotal_ggr_local, 
			a.SportCash_bet_local,a.SportCash_Decisions,a.SportCash_win_local,0 [SportCashWinCount],a.SportCash_ggr_local, 
			a.SportBonus_bet_local,a.SportBonus_Decisions,a.SportBonus_win_local,0 [SportBonusWinCount],a.SportBonus_ggr_local, 
			a. OtherTotal_bet_local,a.OtherTotal_Decisions,a.OtherTotal_win_local,0 [OtherTotalWinCount],a.OtherTotal_ggr_local,
			a.OtherCash_bet_local,a.OtherCash_Decisions,a.OtherCash_win_local,0 [OtherCashWinCount],a.OtherCash_ggr_local,
			a.OtherBonus_bet_local,a.OtherBonus_Decisions,a.OtherBonus_win_local,0 [OtherBonusWinCount],a.OtherBonus_ggr_local,
			a.Total_bet,a.Total_win,a.Total_ggr,
			a.Cash_bet ,a.Cash_win,a.Cash_ggr,
			a.Bonus_bet,a.Bonus_win,a.Bonus_ggr,
			a.SlotsTotal_bet,a.SlotsTotal_win,a.SlotsTotal_ggr,
			a.SlotsCash_bet,a.SlotsCash_win,a.SlotsCash_ggr,
			a.SlotsBonus_bet,a.SlotsBonus_win,a.SlotsBonus_ggr,
			a.LiveTotal_bet,a.LiveTotal_win,a.LiveTotal_ggr,
			a.LiveCash_bet,a.LiveCash_win,a.LiveCash_ggr,
			a.LiveBonus_bet,a.LiveBonus_win,a.LiveBonus_ggr,
			a.SportTotal_bet,a.SportTotal_win,a.SportTotal_ggr,
			a.SportCash_bet,a.SportCash_win,a.SportCash_ggr,
			a.SportBonus_bet,a.SportBonus_win,a.SportBonus_ggr,
			a.OtherTotal_bet,a.OtherTotal_win,a.OtherTotal_ggr,
			a.OtherCash_bet,a.OtherCash_win,a.OtherCash_ggr,
			a.OtherBonus_bet,a.OtherBonus_win,a.OtherBonus_ggr,
			d.fiscalyearweeknumber,d.CalendarYearMonthStartDt,d.CalendarYearMonthNumber,d.calendaryear,
            case when a.product = 'SLOTS' then 0.035 
				when a.product = 'SPORTSBOOK' THEN 0.03
                when a.product = 'VIRTUAL SPORTS' THEN 0.03
                When a.product = 'LIVE' THEN
					CASE WHEN a.Game_title like '%Baccarat%' then 0.0115
						when a.Game_title like '%Blackjack%' then 0.01
                        when a.Game_title like '%Roulette%' then 0.027
                        when a.Game_title like '%Sic%Bo%' then 0.0278
                        else 0.03 end
			end TheoreticalRTP,
                e.reg_Date,e.FD_date
                        
		from (
						select  distinct  
							a.full_date,a.trans_date,a.user_name,a.dw_user_id,a.brand_name,a.brand_id,a.country Country,a.currency,a.product Product,a.game_source_id,a.game_id,a.game_category Aggegator,
							coalesce(gd.Provider,a.game_reel) Provider,-- gd.Provider,a.game_reel Provider2,
							coalesce(gd.EnglishName,a.game_title) Game_title,--gd.EnglishName,a.game_title Game2,
							gd.Category,gd.Min_Max_Bet_CNY,gd.Min_Max_Bet_IDR,gd.Min_Max_Bet_THB,gd.Min_Max_Bet_USD,gd.Volatility,gd.minRTP,gd.maxRTP,gd.Compatibility,
							sum(a.total_bet) Total_bet_local,sum(a.total_win) Total_win_local,sum(a.total_ggr) Total_ggr_local,sum(a.cash_bet_count)+sum(a.bonus_bet_count) Total_Decisions,
                            sum(a.cash_bet_amt) Cash_bet_local,sum(a.cash_win) Cash_win_local,sum(a.cash_ggr) Cash_ggr_local,sum(a.cash_bet_count) Cash_Decisions,
							sum(a.bonus_bet) Bonus_bet_local,sum(a.bon_win) Bonus_win_local,sum(a.bonus_ggr) Bonus_ggr_local,sum(a.bonus_bet_count) Bonus_Decisions,
							sum(a.total_bet_eur) Total_bet,sum(a.total_win_eur) Total_win,sum(a.total_ggr_eur) Total_ggr,
							sum(a.cash_bet_amt_eur) Cash_bet ,sum(a.cash_win_eur) Cash_win,sum(a.cash_ggr_eur) Cash_ggr,
							sum(a.bonus_bet_eur) Bonus_bet,sum(a.bonus_win_eur) Bonus_win,sum(a.bonus_ggr_eur) Bonus_ggr,
							sum( case when a.product = 'Slots' then a.total_bet else 0 end) SlotsTotal_bet_local,sum( case when a.product = 'Slots' then a.total_win else 0 end) SlotsTotal_win_local,
							sum( case when a.product = 'Slots' then a.total_ggr else 0 end) SlotsTotal_ggr_local,sum( case when a.product = 'Slots' then a.cash_bet_count else 0 end)+sum( case when a.product = 'Slots' then a.bonus_bet_count else 0 end) SlotsTotal_Decisions,
                            sum( case when a.product = 'Slots' then a.cash_bet_amt else 0 end) SlotsCash_bet_local,sum( case when a.product = 'Slots' then a.cash_win else 0 end) SlotsCash_win_local,
							sum( case when a.product = 'Slots' then a.cash_ggr else 0 end) SlotsCash_ggr_local,sum( case when a.product = 'Slots' then a.cash_bet_count else 0 end) SlotsCash_Decisions,
							sum( case when a.product = 'Slots' then a.bonus_bet else 0 end) SlotsBonus_bet_local,sum( case when a.product = 'Slots' then a.bon_win else 0 end) SlotsBonus_win_local,
							sum( case when a.product = 'Slots' then a.bonus_ggr else 0 end) SlotsBonus_ggr_local,sum( case when a.product = 'Slots' then a.bonus_bet_count else 0 end) SlotsBonus_Decisions,
							sum( case when a.product = 'LIVE' then a.total_bet else 0 end) LiveTotal_bet_local,sum( case when a.product = 'LIVE' then a.total_win else 0 end) LiveTotal_win_local,
							sum( case when a.product = 'LIVE' then a.total_ggr else 0 end) LiveTotal_ggr_local,sum( case when a.product = 'LIVE' then a.cash_bet_count else 0 end)+sum( case when a.product = 'LIVE' then a.bonus_bet_count else 0 end) LiveTotal_Decisions,
                            sum( case when a.product = 'LIVE' then a.cash_bet_amt else 0 end) LiveCash_bet_local,sum( case when a.product = 'LIVE' then a.cash_win else 0 end) LiveCash_win_local,
							sum( case when a.product = 'LIVE' then a.cash_ggr else 0 end) LiveCash_ggr_local,sum( case when a.product = 'LIVE' then a.cash_bet_count else 0 end) LiveCash_Decisions,
							sum( case when a.product = 'LIVE' then a.bonus_bet else 0 end) LiveBonus_bet_local,sum( case when a.product = 'LIVE' then a.bon_win else 0 end) LiveBonus_win_local,
							sum( case when a.product = 'LIVE' then a.bonus_ggr else 0 end) LiveBonus_ggr_local,sum( case when a.product = 'LIVE' then a.bonus_bet_count else 0 end) LiveBonus_Decisions,
							sum( case when a.product = 'SPORTSBOOK' then a.total_bet else 0 end) SportTotal_bet_local,sum( case when a.product = 'SPORTSBOOK' then a.total_win else 0 end) SportTotal_win_local,
							sum( case when a.product = 'SPORTSBOOK' then a.total_ggr else 0 end) SportTotal_ggr_local,sum( case when a.product = 'SPORTSBOOK' then a.cash_bet_count else 0 end)+sum( case when a.product = 'SPORTSBOOK' then a.bonus_bet_count else 0 end) SportTotal_Decisions,
                            sum( case when a.product = 'SPORTSBOOK' then a.cash_bet_amt else 0 end) SportCash_bet_local,sum( case when a.product = 'SPORTSBOOK' then a.cash_win else 0 end) SportCash_win_local,
							sum( case when a.product = 'SPORTSBOOK' then a.cash_ggr else 0 end) SportCash_ggr_local,sum( case when a.product = 'SPORTSBOOK' then a.cash_bet_count else 0 end) SportCash_Decisions,
							sum( case when a.product = 'SPORTSBOOK' then a.bonus_bet else 0 end) SportBonus_bet_local,sum( case when a.product = 'SPORTSBOOK' then a.bon_win else 0 end) SportBonus_win_local,
							sum( case when a.product = 'SPORTSBOOK' then a.bonus_ggr else 0 end) SportBonus_ggr_local,sum( case when a.product = 'SPORTSBOOK' then a.bonus_bet_count else 0 end) SportBonus_Decisions,
							sum( case when a.product = 'VIRTUAL SPORTS' then a.total_bet else 0 end) OtherTotal_bet_local,sum( case when a.product = 'VIRTUAL SPORTS' then a.total_win else 0 end) OtherTotal_win_local,
							sum( case when a.product = 'VIRTUAL SPORTS' then a.total_ggr else 0 end) OtherTotal_ggr_local,sum( case when a.product = 'VIRTUAL SPORTS' then a.cash_bet_count else 0 end)+sum( case when a.product = 'VIRTUAL SPORTS' then a.bonus_bet_count else 0 end) OtherTotal_Decisions,
                            sum( case when a.product = 'VIRTUAL SPORTS' then a.cash_bet_amt else 0 end) OtherCash_bet_local,sum( case when a.product = 'VIRTUAL SPORTS' then a.cash_win else 0 end) OtherCash_win_local,
							sum( case when a.product = 'VIRTUAL SPORTS' then a.cash_ggr else 0 end) OtherCash_ggr_local,sum( case when a.product = 'VIRTUAL SPORTS' then a.cash_bet_count else 0 end) OtherCash_Decisions,
							sum( case when a.product = 'VIRTUAL SPORTS' then a.bonus_bet else 0 end) OtherBonus_bet_local,sum( case when a.product = 'VIRTUAL SPORTS' then a.bon_win else 0 end) OtherBonus_win_local,
							sum( case when a.product = 'VIRTUAL SPORTS' then a.bonus_ggr else 0 end) OtherBonus_ggr_local,sum( case when a.product = 'VIRTUAL SPORTS' then a.bonus_bet_count else 0 end) OtherBonus_Decisions,
							sum( case when a.product = 'Slots' then a.total_bet_eur else 0 end) SlotsTotal_bet,sum( case when a.product = 'Slots' then a.total_win_eur else 0 end) SlotsTotal_win,sum( case when a.product = 'Slots' then a.total_ggr_eur else 0 end) SlotsTotal_ggr,
							sum( case when a.product = 'Slots' then a.cash_bet_amt_eur else 0 end) SlotsCash_bet ,sum( case when a.product = 'Slots' then a.cash_win_eur else 0 end) SlotsCash_win,sum( case when a.product = 'Slots' then a.cash_ggr_eur else 0 end) SlotsCash_ggr,
							sum( case when a.product = 'Slots' then a.bonus_bet_eur else 0 end) SlotsBonus_bet,sum( case when a.product = 'Slots' then a.bonus_win_eur else 0 end) SlotsBonus_win,sum( case when a.product = 'Slots' then a.bonus_ggr_eur else 0 end) SlotsBonus_ggr,
							sum( case when a.product = 'LIVE' then a.total_bet_eur else 0 end) LiveTotal_bet,sum( case when a.product = 'LIVE' then a.total_win_eur else 0 end) LiveTotal_win,sum( case when a.product = 'LIVE' then a.total_ggr_eur else 0 end) LiveTotal_ggr,
							sum( case when a.product = 'LIVE' then a.cash_bet_amt_eur else 0 end) LiveCash_bet ,sum( case when a.product = 'LIVE' then a.cash_win_eur else 0 end) LiveCash_win,sum( case when a.product = 'LIVE' then a.cash_ggr_eur else 0 end) LiveCash_ggr,
							sum( case when a.product = 'LIVE' then a.bonus_bet_eur else 0 end) LiveBonus_bet,sum( case when a.product = 'LIVE' then a.bonus_win_eur else 0 end) LiveBonus_win,sum( case when a.product = 'LIVE' then a.bonus_ggr_eur else 0 end) LiveBonus_ggr,
							sum( case when a.product = 'SPORTSBOOK' then a.total_bet_eur else 0 end) SportTotal_bet,sum( case when a.product = 'SPORTSBOOK' then a.total_win_eur else 0 end) SportTotal_win,sum( case when a.product = 'SPORTSBOOK' then a.total_ggr_eur else 0 end) SportTotal_ggr,
							sum( case when a.product = 'SPORTSBOOK' then a.cash_bet_amt_eur else 0 end) SportCash_bet ,sum( case when a.product = 'SPORTSBOOK' then a.cash_win_eur else 0 end) SportCash_win,sum( case when a.product = 'SPORTSBOOK' then a.cash_ggr_eur else 0 end) SportCash_ggr,
							sum( case when a.product = 'SPORTSBOOK' then a.bonus_bet_eur else 0 end) SportBonus_bet,sum( case when a.product = 'SPORTSBOOK' then a.bonus_win_eur else 0 end) SportBonus_win,sum( case when a.product = 'SPORTSBOOK' then a.bonus_ggr_eur else 0 end) SportBonus_ggr,
							sum( case when a.product = 'VIRTUAL SPORTS' then a.total_bet_eur else 0 end) OtherTotal_bet,sum( case when a.product = 'VIRTUAL SPORTS' then a.total_win_eur else 0 end) OtherTotal_win,sum( case when a.product = 'VIRTUAL SPORTS' then a.total_ggr_eur else 0 end) OtherTotal_ggr,
							sum( case when a.product = 'VIRTUAL SPORTS' then a.cash_bet_amt_eur else 0 end) OtherCash_bet ,sum( case when a.product = 'VIRTUAL SPORTS' then a.cash_win_eur else 0 end) OtherCash_win,sum( case when a.product = 'VIRTUAL SPORTS' then a.cash_ggr_eur else 0 end) OtherCash_ggr,
							sum( case when a.product = 'VIRTUAL SPORTS' then a.bonus_bet_eur else 0 end) OtherBonus_bet,sum( case when a.product = 'VIRTUAL SPORTS' then a.bonus_win_eur else 0 end) OtherBonus_win,sum( case when a.product = 'VIRTUAL SPORTS' then a.bonus_ggr_eur else 0 end) OtherBonus_ggr
						FROM dw_prod.dbo.dw_game_trans_dtl a
							left join [GoldblueUTC].[dbo].[Game_Details] gd on a.game_source_id = gd.Game_Source_id and a.game_id = gd.game_id
						where a.game_source_id is not null and a.game_source_id !=0
							and a.product = 'SLOTS'
						group by a.full_date,a.trans_date,a.user_name,a.dw_user_id,a.brand_name,a.brand_id,a.country,a.currency,a.product,a.game_source_id,a.game_id,a.game_category 
							,coalesce(gd.Provider,a.game_reel) -- gd.Provider,a.game_reel ,
							,coalesce(gd.EnglishName,a.game_title) --gd.EnglishName,a.game_title 
							,gd.Category,gd.Min_Max_Bet_CNY,gd.Min_Max_Bet_IDR,gd.Min_Max_Bet_THB,gd.Min_Max_Bet_USD,gd.Volatility,gd.minRTP,gd.maxRTP,gd.Compatibility
					union all
						select  distinct  
							a.full_date,a.trans_date,a.user_name,a.dw_user_id,a.brand_name,a.brand_id,a.country,a.currency,a.product,a.game_source_id,a.game_id,a.game_category Aggegator
							,coalesce(a.game_reel,a.game_category) Provider
							,Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(a.game_title,'_',''),'-',''),'(TitaniumDesktopBrowser)',''),'(Diamond)',''),'(TitaniumiOSBrowser)',''),'MGSLG',''),'(TitaniumAndroidBrowser)',''),'MGSFirebirdHTML5',''),'MPBaccarat','Baccarat'),'NCBaccarat','Baccarat')  Game_title
							,a.product Category,'0' Min_Max_Bet_CNY,'0' Min_Max_Bet_IDR,'0' Min_Max_Bet_THB,'0' Min_Max_Bet_USD,'0' Volatility,0 minRTP,0 maxRTP,
							Case when a.game_title like '%Desktop%' then 'Desktop'
								when a.game_title like '%iOS%' then 'iOS'
								when a.game_title like '%Android%' then 'Android'
							else 'Web & Mobile Web' end Compatibility,
							sum(a.total_bet) Total_bet_local,sum(a.total_win) Total_win_local,sum(a.total_ggr) Total_ggr_local,sum(a.cash_bet_count)+sum(a.bonus_bet_count) Total_Decisions,
                            sum(a.cash_bet_amt) Cash_bet_local,sum(a.cash_win) Cash_win_local,sum(a.cash_ggr) Cash_ggr_local,sum(a.cash_bet_count) Cash_Decisions,
							sum(a.bonus_bet) Bonus_bet_local,sum(a.bon_win) Bonus_win_local,sum(a.bonus_ggr) Bonus_ggr_local,sum(a.bonus_bet_count) Bonus_Decisions,
							sum(a.total_bet_eur) Total_bet,sum(a.total_win_eur) Total_win,sum(a.total_ggr_eur) Total_ggr,
							sum(a.cash_bet_amt_eur) Cash_bet ,sum(a.cash_win_eur) Cash_win,sum(a.cash_ggr_eur) Cash_ggr,
							sum(a.bonus_bet_eur) Bonus_bet,sum(a.bonus_win_eur) Bonus_win,sum(a.bonus_ggr_eur) Bonus_ggr,
							sum( case when a.product = 'Slots' then a.total_bet else 0 end) SlotsTotal_bet_local,sum( case when a.product = 'Slots' then a.total_win else 0 end) SlotsTotal_win_local,
							sum( case when a.product = 'Slots' then a.total_ggr else 0 end) SlotsTotal_ggr_local,sum( case when a.product = 'Slots' then a.cash_bet_count else 0 end)+sum( case when a.product = 'Slots' then a.bonus_bet_count else 0 end) SlotsTotal_Decisions,
                            sum( case when a.product = 'Slots' then a.cash_bet_amt else 0 end) SlotsCash_bet_local,sum( case when a.product = 'Slots' then a.cash_win else 0 end) SlotsCash_win_local,
							sum( case when a.product = 'Slots' then a.cash_ggr else 0 end) SlotsCash_ggr_local,sum( case when a.product = 'Slots' then a.cash_bet_count else 0 end) SlotsCash_Decisions,
							sum( case when a.product = 'Slots' then a.bonus_bet else 0 end) SlotsBonus_bet_local,sum( case when a.product = 'Slots' then a.bon_win else 0 end) SlotsBonus_win_local,
							sum( case when a.product = 'Slots' then a.bonus_ggr else 0 end) SlotsBonus_ggr_local,sum( case when a.product = 'Slots' then a.bonus_bet_count else 0 end) SlotsBonus_Decisions,
							sum( case when a.product = 'LIVE' then a.total_bet else 0 end) LiveTotal_bet_local,sum( case when a.product = 'LIVE' then a.total_win else 0 end) LiveTotal_win_local,
							sum( case when a.product = 'LIVE' then a.total_ggr else 0 end) LiveTotal_ggr_local,sum( case when a.product = 'LIVE' then a.cash_bet_count else 0 end)+sum( case when a.product = 'LIVE' then a.bonus_bet_count else 0 end) LiveTotal_Decisions,
                            sum( case when a.product = 'LIVE' then a.cash_bet_amt else 0 end) LiveCash_bet_local,sum( case when a.product = 'LIVE' then a.cash_win else 0 end) LiveCash_win_local,
							sum( case when a.product = 'LIVE' then a.cash_ggr else 0 end) LiveCash_ggr_local,sum( case when a.product = 'LIVE' then a.cash_bet_count else 0 end) LiveCash_Decisions,
							sum( case when a.product = 'LIVE' then a.bonus_bet else 0 end) LiveBonus_bet_local,sum( case when a.product = 'LIVE' then a.bon_win else 0 end) LiveBonus_win_local,
							sum( case when a.product = 'LIVE' then a.bonus_ggr else 0 end) LiveBonus_ggr_local,sum( case when a.product = 'LIVE' then a.bonus_bet_count else 0 end) LiveBonus_Decisions,
							sum( case when a.product = 'SPORTSBOOK' then a.total_bet else 0 end) SportTotal_bet_local,sum( case when a.product = 'SPORTSBOOK' then a.total_win else 0 end) SportTotal_win_local,
							sum( case when a.product = 'SPORTSBOOK' then a.total_ggr else 0 end) SportTotal_ggr_local,sum( case when a.product = 'SPORTSBOOK' then a.cash_bet_count else 0 end)+sum( case when a.product = 'SPORTSBOOK' then a.bonus_bet_count else 0 end) SportTotal_Decisions,
                            sum( case when a.product = 'SPORTSBOOK' then a.cash_bet_amt else 0 end) SportCash_bet_local,sum( case when a.product = 'SPORTSBOOK' then a.cash_win else 0 end) SportCash_win_local,
							sum( case when a.product = 'SPORTSBOOK' then a.cash_ggr else 0 end) SportCash_ggr_local,sum( case when a.product = 'SPORTSBOOK' then a.cash_bet_count else 0 end) SportCash_Decisions,
							sum( case when a.product = 'SPORTSBOOK' then a.bonus_bet else 0 end) SportBonus_bet_local,sum( case when a.product = 'SPORTSBOOK' then a.bon_win else 0 end) SportBonus_win_local,
							sum( case when a.product = 'SPORTSBOOK' then a.bonus_ggr else 0 end) SportBonus_ggr_local,sum( case when a.product = 'SPORTSBOOK' then a.bonus_bet_count else 0 end) SportBonus_Decisions,
							sum( case when a.product = 'VIRTUAL SPORTS' then a.total_bet else 0 end) OtherTotal_bet_local,sum( case when a.product = 'VIRTUAL SPORTS' then a.total_win else 0 end) OtherTotal_win_local,
							sum( case when a.product = 'VIRTUAL SPORTS' then a.total_ggr else 0 end) OtherTotal_ggr_local,sum( case when a.product = 'VIRTUAL SPORTS' then a.cash_bet_count else 0 end)+sum( case when a.product = 'VIRTUAL SPORTS' then a.bonus_bet_count else 0 end) OtherTotal_Decisions,
                            sum( case when a.product = 'VIRTUAL SPORTS' then a.cash_bet_amt else 0 end) OtherCash_bet_local,sum( case when a.product = 'VIRTUAL SPORTS' then a.cash_win else 0 end) OtherCash_win_local,
							sum( case when a.product = 'VIRTUAL SPORTS' then a.cash_ggr else 0 end) OtherCash_ggr_local,sum( case when a.product = 'VIRTUAL SPORTS' then a.cash_bet_count else 0 end) OtherCash_Decisions,
							sum( case when a.product = 'VIRTUAL SPORTS' then a.bonus_bet else 0 end) OtherBonus_bet_local,sum( case when a.product = 'VIRTUAL SPORTS' then a.bon_win else 0 end) OtherBonus_win_local,
							sum( case when a.product = 'VIRTUAL SPORTS' then a.bonus_ggr else 0 end) OtherBonus_ggr_local,sum( case when a.product = 'VIRTUAL SPORTS' then a.bonus_bet_count else 0 end) OtherBonus_Decisions,
							sum( case when a.product = 'Slots' then a.total_bet_eur else 0 end) SlotsTotal_bet,sum( case when a.product = 'Slots' then a.total_win_eur else 0 end) SlotsTotal_win,sum( case when a.product = 'Slots' then a.total_ggr_eur else 0 end) SlotsTotal_ggr,
							sum( case when a.product = 'Slots' then a.cash_bet_amt_eur else 0 end) SlotsCash_bet ,sum( case when a.product = 'Slots' then a.cash_win_eur else 0 end) SlotsCash_win,sum( case when a.product = 'Slots' then a.cash_ggr_eur else 0 end) SlotsCash_ggr,
							sum( case when a.product = 'Slots' then a.bonus_bet_eur else 0 end) SlotsBonus_bet,sum( case when a.product = 'Slots' then a.bonus_win_eur else 0 end) SlotsBonus_win,sum( case when a.product = 'Slots' then a.bonus_ggr_eur else 0 end) SlotsBonus_ggr,
							sum( case when a.product = 'LIVE' then a.total_bet_eur else 0 end) LiveTotal_bet,sum( case when a.product = 'LIVE' then a.total_win_eur else 0 end) LiveTotal_win,sum( case when a.product = 'LIVE' then a.total_ggr_eur else 0 end) LiveTotal_ggr,
							sum( case when a.product = 'LIVE' then a.cash_bet_amt_eur else 0 end) LiveCash_bet ,sum( case when a.product = 'LIVE' then a.cash_win_eur else 0 end) LiveCash_win,sum( case when a.product = 'LIVE' then a.cash_ggr_eur else 0 end) LiveCash_ggr,
							sum( case when a.product = 'LIVE' then a.bonus_bet_eur else 0 end) LiveBonus_bet,sum( case when a.product = 'LIVE' then a.bonus_win_eur else 0 end) LiveBonus_win,sum( case when a.product = 'LIVE' then a.bonus_ggr_eur else 0 end) LiveBonus_ggr,
							sum( case when a.product = 'SPORTSBOOK' then a.total_bet_eur else 0 end) SportTotal_bet,sum( case when a.product = 'SPORTSBOOK' then a.total_win_eur else 0 end) SportTotal_win,sum( case when a.product = 'SPORTSBOOK' then a.total_ggr_eur else 0 end) SportTotal_ggr,
							sum( case when a.product = 'SPORTSBOOK' then a.cash_bet_amt_eur else 0 end) SportCash_bet ,sum( case when a.product = 'SPORTSBOOK' then a.cash_win_eur else 0 end) SportCash_win,sum( case when a.product = 'SPORTSBOOK' then a.cash_ggr_eur else 0 end) SportCash_ggr,
							sum( case when a.product = 'SPORTSBOOK' then a.bonus_bet_eur else 0 end) SportBonus_bet,sum( case when a.product = 'SPORTSBOOK' then a.bonus_win_eur else 0 end) SportBonus_win,sum( case when a.product = 'SPORTSBOOK' then a.bonus_ggr_eur else 0 end) SportBonus_ggr,
							sum( case when a.product = 'VIRTUAL SPORTS' then a.total_bet_eur else 0 end) OtherTotal_bet,sum( case when a.product = 'VIRTUAL SPORTS' then a.total_win_eur else 0 end) OtherTotal_win,sum( case when a.product = 'VIRTUAL SPORTS' then a.total_ggr_eur else 0 end) OtherTotal_ggr,
							sum( case when a.product = 'VIRTUAL SPORTS' then a.cash_bet_amt_eur else 0 end) OtherCash_bet ,sum( case when a.product = 'VIRTUAL SPORTS' then a.cash_win_eur else 0 end) OtherCash_win,sum( case when a.product = 'VIRTUAL SPORTS' then a.cash_ggr_eur else 0 end) OtherCash_ggr,
							sum( case when a.product = 'VIRTUAL SPORTS' then a.bonus_bet_eur else 0 end) OtherBonus_bet,sum( case when a.product = 'VIRTUAL SPORTS' then a.bonus_win_eur else 0 end) OtherBonus_win,sum( case when a.product = 'VIRTUAL SPORTS' then a.bonus_ggr_eur else 0 end) OtherBonus_ggr

						FROM dw_prod.dbo.dw_game_trans_dtl a
						where a.product != 'SLOTS'
						group by a.full_date,a.trans_date,a.user_name,a.dw_user_id,a.brand_name,a.brand_id,a.country,a.currency,a.product,a.game_source_id,a.game_id,a.game_category 
							,coalesce(a.game_reel,a.game_category)
							,Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(a.game_title,'_',''),'-',''),'(TitaniumDesktopBrowser)',''),'(Diamond)',''),'(TitaniumiOSBrowser)',''),'MGSLG',''),'(TitaniumAndroidBrowser)',''),'MGSFirebirdHTML5',''),'MPBaccarat','Baccarat'),'NCBaccarat','Baccarat') 
							,a.product
							,Case when a.game_title like '%Desktop%' then 'Desktop'
								when a.game_title like '%iOS%' then 'iOS'
								when a.game_title like '%Android%' then 'Android'
							else 'Web & Mobile Web' end
				union all
						select  distinct  
							a.full_date,a.trans_date,a.user_name,a.dw_user_id,a.brand_name,a.brand_id,a.country,a.currency,a.product,a.game_source_id,a.game_id,a.game_category Aggegator
							,replace(coalesce(gd.Provider,a.game_reel),'MG-SLOT','MG') Provider
							,replace(coalesce(gd.EnglishName,a.game_title),'MGS_','') Game_title
							,gd.Category,gd.Min_Max_Bet_CNY,gd.Min_Max_Bet_IDR,gd.Min_Max_Bet_THB,gd.Min_Max_Bet_USD,gd.Volatility,gd.minRTP,gd.maxRTP,gd.Compatibility,
							sum(a.total_bet) Total_bet_local,sum(a.total_win) Total_win_local,sum(a.total_ggr) Total_ggr_local,sum(a.cash_bet_count)+sum(a.bonus_bet_count) Total_Decisions,
                            sum(a.cash_bet_amt) Cash_bet_local,sum(a.cash_win) Cash_win_local,sum(a.cash_ggr) Cash_ggr_local,sum(a.cash_bet_count) Cash_Decisions,
							sum(a.bonus_bet) Bonus_bet_local,sum(a.bon_win) Bonus_win_local,sum(a.bonus_ggr) Bonus_ggr_local,sum(a.bonus_bet_count) Bonus_Decisions,
							sum(a.total_bet_eur) Total_bet,sum(a.total_win_eur) Total_win,sum(a.total_ggr_eur) Total_ggr,
							sum(a.cash_bet_amt_eur) Cash_bet ,sum(a.cash_win_eur) Cash_win,sum(a.cash_ggr_eur) Cash_ggr,
							sum(a.bonus_bet_eur) Bonus_bet,sum(a.bonus_win_eur) Bonus_win,sum(a.bonus_ggr_eur) Bonus_ggr,
							sum( case when a.product = 'Slots' then a.total_bet else 0 end) SlotsTotal_bet_local,sum( case when a.product = 'Slots' then a.total_win else 0 end) SlotsTotal_win_local,
							sum( case when a.product = 'Slots' then a.total_ggr else 0 end) SlotsTotal_ggr_local,sum( case when a.product = 'Slots' then a.cash_bet_count else 0 end)+sum( case when a.product = 'Slots' then a.bonus_bet_count else 0 end) SlotsTotal_Decisions,
                            sum( case when a.product = 'Slots' then a.cash_bet_amt else 0 end) SlotsCash_bet_local,sum( case when a.product = 'Slots' then a.cash_win else 0 end) SlotsCash_win_local,
							sum( case when a.product = 'Slots' then a.cash_ggr else 0 end) SlotsCash_ggr_local,sum( case when a.product = 'Slots' then a.cash_bet_count else 0 end) SlotsCash_Decisions,
							sum( case when a.product = 'Slots' then a.bonus_bet else 0 end) SlotsBonus_bet_local,sum( case when a.product = 'Slots' then a.bon_win else 0 end) SlotsBonus_win_local,
							sum( case when a.product = 'Slots' then a.bonus_ggr else 0 end) SlotsBonus_ggr_local,sum( case when a.product = 'Slots' then a.bonus_bet_count else 0 end) SlotsBonus_Decisions,
							sum( case when a.product = 'LIVE' then a.total_bet else 0 end) LiveTotal_bet_local,sum( case when a.product = 'LIVE' then a.total_win else 0 end) LiveTotal_win_local,
							sum( case when a.product = 'LIVE' then a.total_ggr else 0 end) LiveTotal_ggr_local,sum( case when a.product = 'LIVE' then a.cash_bet_count else 0 end)+sum( case when a.product = 'LIVE' then a.bonus_bet_count else 0 end) LiveTotal_Decisions,
                            sum( case when a.product = 'LIVE' then a.cash_bet_amt else 0 end) LiveCash_bet_local,sum( case when a.product = 'LIVE' then a.cash_win else 0 end) LiveCash_win_local,
							sum( case when a.product = 'LIVE' then a.cash_ggr else 0 end) LiveCash_ggr_local,sum( case when a.product = 'LIVE' then a.cash_bet_count else 0 end) LiveCash_Decisions,
							sum( case when a.product = 'LIVE' then a.bonus_bet else 0 end) LiveBonus_bet_local,sum( case when a.product = 'LIVE' then a.bon_win else 0 end) LiveBonus_win_local,
							sum( case when a.product = 'LIVE' then a.bonus_ggr else 0 end) LiveBonus_ggr_local,sum( case when a.product = 'LIVE' then a.bonus_bet_count else 0 end) LiveBonus_Decisions,
							sum( case when a.product = 'SPORTSBOOK' then a.total_bet else 0 end) SportTotal_bet_local,sum( case when a.product = 'SPORTSBOOK' then a.total_win else 0 end) SportTotal_win_local,
							sum( case when a.product = 'SPORTSBOOK' then a.total_ggr else 0 end) SportTotal_ggr_local,sum( case when a.product = 'SPORTSBOOK' then a.cash_bet_count else 0 end)+sum( case when a.product = 'SPORTSBOOK' then a.bonus_bet_count else 0 end) SportTotal_Decisions,
                            sum( case when a.product = 'SPORTSBOOK' then a.cash_bet_amt else 0 end) SportCash_bet_local,sum( case when a.product = 'SPORTSBOOK' then a.cash_win else 0 end) SportCash_win_local,
							sum( case when a.product = 'SPORTSBOOK' then a.cash_ggr else 0 end) SportCash_ggr_local,sum( case when a.product = 'SPORTSBOOK' then a.cash_bet_count else 0 end) SportCash_Decisions,
							sum( case when a.product = 'SPORTSBOOK' then a.bonus_bet else 0 end) SportBonus_bet_local,sum( case when a.product = 'SPORTSBOOK' then a.bon_win else 0 end) SportBonus_win_local,
							sum( case when a.product = 'SPORTSBOOK' then a.bonus_ggr else 0 end) SportBonus_ggr_local,sum( case when a.product = 'SPORTSBOOK' then a.bonus_bet_count else 0 end) SportBonus_Decisions,
							sum( case when a.product = 'VIRTUAL SPORTS' then a.total_bet else 0 end) OtherTotal_bet_local,sum( case when a.product = 'VIRTUAL SPORTS' then a.total_win else 0 end) OtherTotal_win_local,
							sum( case when a.product = 'VIRTUAL SPORTS' then a.total_ggr else 0 end) OtherTotal_ggr_local,sum( case when a.product = 'VIRTUAL SPORTS' then a.cash_bet_count else 0 end)+sum( case when a.product = 'VIRTUAL SPORTS' then a.bonus_bet_count else 0 end) OtherTotal_Decisions,
                            sum( case when a.product = 'VIRTUAL SPORTS' then a.cash_bet_amt else 0 end) OtherCash_bet_local,sum( case when a.product = 'VIRTUAL SPORTS' then a.cash_win else 0 end) OtherCash_win_local,
							sum( case when a.product = 'VIRTUAL SPORTS' then a.cash_ggr else 0 end) OtherCash_ggr_local,sum( case when a.product = 'VIRTUAL SPORTS' then a.cash_bet_count else 0 end) OtherCash_Decisions,
							sum( case when a.product = 'VIRTUAL SPORTS' then a.bonus_bet else 0 end) OtherBonus_bet_local,sum( case when a.product = 'VIRTUAL SPORTS' then a.bon_win else 0 end) OtherBonus_win_local,
							sum( case when a.product = 'VIRTUAL SPORTS' then a.bonus_ggr else 0 end) OtherBonus_ggr_local,sum( case when a.product = 'VIRTUAL SPORTS' then a.bonus_bet_count else 0 end) OtherBonus_Decisions,
							sum( case when a.product = 'Slots' then a.total_bet_eur else 0 end) SlotsTotal_bet,sum( case when a.product = 'Slots' then a.total_win_eur else 0 end) SlotsTotal_win,sum( case when a.product = 'Slots' then a.total_ggr_eur else 0 end) SlotsTotal_ggr,
							sum( case when a.product = 'Slots' then a.cash_bet_amt_eur else 0 end) SlotsCash_bet ,sum( case when a.product = 'Slots' then a.cash_win_eur else 0 end) SlotsCash_win,sum( case when a.product = 'Slots' then a.cash_ggr_eur else 0 end) SlotsCash_ggr,
							sum( case when a.product = 'Slots' then a.bonus_bet_eur else 0 end) SlotsBonus_bet,sum( case when a.product = 'Slots' then a.bonus_win_eur else 0 end) SlotsBonus_win,sum( case when a.product = 'Slots' then a.bonus_ggr_eur else 0 end) SlotsBonus_ggr,
							sum( case when a.product = 'LIVE' then a.total_bet_eur else 0 end) LiveTotal_bet,sum( case when a.product = 'LIVE' then a.total_win_eur else 0 end) LiveTotal_win,sum( case when a.product = 'LIVE' then a.total_ggr_eur else 0 end) LiveTotal_ggr,
							sum( case when a.product = 'LIVE' then a.cash_bet_amt_eur else 0 end) LiveCash_bet ,sum( case when a.product = 'LIVE' then a.cash_win_eur else 0 end) LiveCash_win,sum( case when a.product = 'LIVE' then a.cash_ggr_eur else 0 end) LiveCash_ggr,
							sum( case when a.product = 'LIVE' then a.bonus_bet_eur else 0 end) LiveBonus_bet,sum( case when a.product = 'LIVE' then a.bonus_win_eur else 0 end) LiveBonus_win,sum( case when a.product = 'LIVE' then a.bonus_ggr_eur else 0 end) LiveBonus_ggr,
							sum( case when a.product = 'SPORTSBOOK' then a.total_bet_eur else 0 end) SportTotal_bet,sum( case when a.product = 'SPORTSBOOK' then a.total_win_eur else 0 end) SportTotal_win,sum( case when a.product = 'SPORTSBOOK' then a.total_ggr_eur else 0 end) SportTotal_ggr,
							sum( case when a.product = 'SPORTSBOOK' then a.cash_bet_amt_eur else 0 end) SportCash_bet ,sum( case when a.product = 'SPORTSBOOK' then a.cash_win_eur else 0 end) SportCash_win,sum( case when a.product = 'SPORTSBOOK' then a.cash_ggr_eur else 0 end) SportCash_ggr,
							sum( case when a.product = 'SPORTSBOOK' then a.bonus_bet_eur else 0 end) SportBonus_bet,sum( case when a.product = 'SPORTSBOOK' then a.bonus_win_eur else 0 end) SportBonus_win,sum( case when a.product = 'SPORTSBOOK' then a.bonus_ggr_eur else 0 end) SportBonus_ggr,
							sum( case when a.product = 'VIRTUAL SPORTS' then a.total_bet_eur else 0 end) OtherTotal_bet,sum( case when a.product = 'VIRTUAL SPORTS' then a.total_win_eur else 0 end) OtherTotal_win,sum( case when a.product = 'VIRTUAL SPORTS' then a.total_ggr_eur else 0 end) OtherTotal_ggr,
							sum( case when a.product = 'VIRTUAL SPORTS' then a.cash_bet_amt_eur else 0 end) OtherCash_bet ,sum( case when a.product = 'VIRTUAL SPORTS' then a.cash_win_eur else 0 end) OtherCash_win,sum( case when a.product = 'VIRTUAL SPORTS' then a.cash_ggr_eur else 0 end) OtherCash_ggr,
							sum( case when a.product = 'VIRTUAL SPORTS' then a.bonus_bet_eur else 0 end) OtherBonus_bet,sum( case when a.product = 'VIRTUAL SPORTS' then a.bonus_win_eur else 0 end) OtherBonus_win,sum( case when a.product = 'VIRTUAL SPORTS' then a.bonus_ggr_eur else 0 end) OtherBonus_ggr
						FROM dw_prod.dbo.dw_game_trans_dtl a
						left join (
										select distinct 
											gd.game_id ,gd.Provider,gd.EnglishName,gd.Category,gd.Min_Max_Bet_CNY,gd.Min_Max_Bet_IDR,gd.Min_Max_Bet_THB,gd.Min_Max_Bet_USD,gd.Volatility,gd.minRTP,gd.maxRTP,gd.Compatibility
										from [GoldblueUTC].[dbo].[Game_Details] gd                            
									)gd on a.game_id = gd.game_id and gd.Provider=a.game_reel
						where (a.game_source_id is null or a.game_source_id =0)
							 and a.product = 'SLOTS'
					group by a.full_date,a.trans_date,a.user_name,a.dw_user_id,a.brand_name,a.brand_id,a.country,a.currency,a.product,a.game_source_id,a.game_id,a.game_category 
							,coalesce(gd.Provider,a.game_reel) 
							,coalesce(gd.EnglishName,a.game_title) 
							,gd.Category,gd.Min_Max_Bet_CNY,gd.Min_Max_Bet_IDR,gd.Min_Max_Bet_THB,gd.Min_Max_Bet_USD,gd.Volatility,gd.minRTP,gd.maxRTP,gd.Compatibility
				) a
		join [GoldblueUTC].[dbo].DateDim d on a.trans_date = d.dateid
        left join (	
							select distinct a.user_id, a.brand_id,a.user_country
							 ,convert(date,DATEADD(MONTH, DATEDIFF(MONTH, -1, user_create_time)-1, 0)) reg_date
							 ,convert(date,DATEADD(MONTH, DATEDIFF(MONTH, -1, first_dep_time)-1, 0)) FD_date
                            --date_add(date_add(LAST_DAY(date(a.user_create_time)),interval 1 DAY),interval -1 MONTH) reg_date,
                            --date_add(date_add(LAST_DAY(date(a.first_dep_time)),interval 1 DAY),interval -1 MONTH) FD_date
							FROM dw_prod.dbo.dw_user_header_dm a
					) e on a.dw_user_id = e.user_id and a.brand_id = e.brand_id and a.country = e.user_country



	)a
;
truncate table [GoldblueUTC].dbo.[ClientGameKPIHistorical]
INSERT INTO [GoldblueUTC].[dbo].[ClientGameKPIHistorical]
select distinct
	a.ClientId 
	,a.UserName
	,a.GameId
	,a.CalendarDt
	,a.Product
	,a.[Provider]
	,a.[ProductCategory]
	,a.GameName
	,a.currencyId
	,a.[Country]
	,sum(a.[TotalBetAmount]) [TotalBetAmount]
	,sum(a.[TotalBetCount]) [TotalBetCount]
	,sum(a.[TotalWinAmount]) [TotalWinAmount]
	,sum(a.[TotalWinCount]) [TotalWinCount]
	,sum(a.[TotalGGRAmount]) [TotalGGRAmount]
	,sum(a.[CashBetAmount]) [CashBetAmount]	
	,sum(a.[CashBetCount]) [CashBetCount]	
	,sum(a.[CashWinAmount]) [CashWinAmount]	
	,sum(a.[CashWinCount])	[CashWinCount]
	,sum(a.[CashGGRAmount]) [CashGGRAmount]
	,sum(a.[BonusBetAmount]) [BonusBetAmount] 	
	,sum(a.[BonusBetCount]) [BonusBetCount] 	
	,sum(a.[BonusWinAmount]) [BonusWinAmount]
	,sum(a.[BonusWinCount]) [BonusWinCount]
	,sum(a.[BonusGGRAmount]) [BonusGGRAmount]
	,sum(a.[SlotsTotalBetAmount]) [SlotsTotalBetAmount]
	,sum(a.[SlotsTotalBetCount]) [SlotsTotalBetCount]
	,sum(a.[SlotsTotalWinAmount]) [SlotsTotalWinAmount]
	,sum(a.[SlotsTotalWinCount]) [SlotsTotalWinCount]
	,sum(a.[SlotsTotalGGRAmount]) [SlotsTotalGGRAmount]
	,sum(a.[SlotsCashBetAmount]) [SlotsCashBetAmount]	
	,sum(a.[SlotsCashBetCount]) [SlotsCashBetCount]	
	,sum(a.[SlotsCashWinAmount]) [SlotsCashWinAmount]	
	,sum(a.[SlotsCashWinCount])	[SlotsCashWinCount]
	,sum(a.[SlotsCashGGRAmount]) [SlotsCashGGRAmount]
	,sum(a.[SlotsBonusBetAmount]) [SlotsBonusBetAmount] 	
	,sum(a.[SlotsBonusBetCount]) [SlotsBonusBetCount] 	
	,sum(a.[SlotsBonusWinAmount]) [SlotsBonusWinAmount]
	,sum(a.[SlotsBonusWinCount]) [SlotsBonusWinCount]
	,sum(a.[SlotsBonusGGRAmount]) [SlotsBonusGGRAmount]
	,sum(a.[LiveTotalBetAmount]) [LiveTotalBetAmount]
	,sum(a.[LiveTotalBetCount]) [LiveTotalBetCount]
	,sum(a.[LiveTotalWinAmount]) [LiveTotalWinAmount]
	,sum(a.[LiveTotalWinCount]) [LiveTotalWinCount]
	,sum(a.[LiveTotalGGRAmount]) [LiveTotalGGRAmount]
	,sum(a.[LiveCashBetAmount]) [LiveCashBetAmount]	
	,sum(a.[LiveCashBetCount]) [LiveCashBetCount]	
	,sum(a.[LiveCashWinAmount]) [LiveCashWinAmount]	
	,sum(a.[LiveCashWinCount])	[LiveCashWinCount]
	,sum(a.[LiveCashGGRAmount]) [LiveCashGGRAmount]
	,sum(a.[LiveBonusBetAmount]) [LiveBonusBetAmount] 	
	,sum(a.[LiveBonusBetCount]) [LiveBonusBetCount] 	
	,sum(a.[LiveBonusWinAmount]) [LiveBonusWinAmount]
	,sum(a.[LiveBonusWinCount]) [LiveBonusWinCount]
	,sum(a.[LiveBonusGGRAmount]) [LiveBonusGGRAmount]
	,sum(a.[SportTotalBetAmount]) [SportTotalBetAmount]
	,sum(a.[SportTotalBetCount]) [SportTotalBetCount]
	,sum(a.[SportTotalWinAmount]) [SportTotalWinAmount]
	,sum(a.[SportTotalWinCount]) [SportTotalWinCount]
	,sum(a.[SportTotalGGRAmount]) [SportTotalGGRAmount]
	,sum(a.[SportCashBetAmount]) [SportCashBetAmount]	
	,sum(a.[SportCashBetCount]) [SportCashBetCount]	
	,sum(a.[SportCashWinAmount]) [SportCashWinAmount]	
	,sum(a.[SportCashWinCount])	[SportCashWinCount]
	,sum(a.[SportCashGGRAmount]) [SportCashGGRAmount]
	,sum(a.[SportBonusBetAmount]) [SportBonusBetAmount] 	
	,sum(a.[SportBonusBetCount]) [SportBonusBetCount] 	
	,sum(a.[SportBonusWinAmount]) [SportBonusWinAmount]
	,sum(a.[SportBonusWinCount]) [SportBonusWinCount]
	,sum(a.[SportBonusGGRAmount]) [SportBonusGGRAmount]
	,sum(a.[OtherTotalBetAmount]) [OtherTotalBetAmount]
	,sum(a.[OtherTotalBetCount]) [OtherTotalBetCount]
	,sum(a.[OtherTotalWinAmount]) [OtherTotalWinAmount]
	,sum(a.[OtherTotalWinCount]) [OtherTotalWinCount]
	,sum(a.[OtherTotalGGRAmount]) [OtherTotalGGRAmount]
	,sum(a.[OtherCashBetAmount]) [OtherCashBetAmount]	
	,sum(a.[OtherCashBetCount]) [OtherCashBetCount]	
	,sum(a.[OtherCashWinAmount]) [OtherCashWinAmount]	
	,sum(a.[OtherCashWinCount])	[OtherCashWinCount]
	,sum(a.[OtherCashGGRAmount]) [OtherCashGGRAmount]
	,sum(a.[OtherBonusBetAmount]) [OtherBonusBetAmount] 	
	,sum(a.[OtherBonusBetCount]) [OtherBonusBetCount] 	
	,sum(a.[OtherBonusWinAmount]) [OtherBonusWinAmount]
	,sum(a.[OtherBonusWinCount]) [OtherBonusWinCount]
	,sum(a.[OtherBonusGGRAmount]) [OtherBonusGGRAmount]
	,sum(a.[TotalBetAmountEur]) [TotalBetAmountEur]
	,sum(a.[TotalWinAmountEur]) [TotalWinAmountEur]
	,sum(a.[TotalGGRAmountEur]) [TotalGGRAmountEur]
	,sum(a.[CashBetAmountEur]) [CashBetAmountEur]	
	,sum(a.[CashWinAmountEur]) [CashWinAmountEur]	
	,sum(a.[CashGGRAmountEur]) [CashGGRAmountEur]
	,sum(a.[BonusBetAmountEur]) [BonusBetAmountEur] 	
	,sum(a.[BonusWinAmountEur]) [BonusWinAmountEur]
	,sum(a.[BonusGGRAmountEur]) [BonusGGRAmountEur]
	,sum(a.[SlotsTotalBetAmountEur]) [SlotsTotalBetAmountEur]
	,sum(a.[SlotsTotalWinAmountEur]) [SlotsTotalWinAmountEur]
	,sum(a.[SlotsTotalGGRAmountEur]) [SlotsTotalGGRAmountEur]
	,sum(a.[SlotsCashBetAmountEur]) [SlotsCashBetAmountEur]	
	,sum(a.[SlotsCashWinAmountEur]) [SlotsCashWinAmountEur]	
	,sum(a.[SlotsCashGGRAmountEur]) [SlotsCashGGRAmountEur]
	,sum(a.[SlotsBonusBetAmountEur]) [SlotsBonusBetAmountEur] 	
	,sum(a.[SlotsBonusWinAmountEur]) [SlotsBonusWinAmountEur]
	,sum(a.[SlotsBonusGGRAmountEur]) [SlotsBonusGGRAmountEur]
	,sum(a.[LiveTotalBetAmountEur]) [LiveTotalBetAmountEur]
	,sum(a.[LiveTotalWinAmountEur]) [LiveTotalWinAmountEur]
	,sum(a.[LiveTotalGGRAmountEur]) [LiveTotalGGRAmountEur]
	,sum(a.[LiveCashBetAmountEur]) [LiveCashBetAmountEur]	
	,sum(a.[LiveCashWinAmountEur]) [LiveCashWinAmountEur]	
	,sum(a.[LiveCashGGRAmountEur]) [LiveCashGGRAmountEur]
	,sum(a.[LiveBonusBetAmountEur]) [LiveBonusBetAmountEur] 	
	,sum(a.[LiveBonusWinAmountEur]) [LiveBonusWinAmountEur]
	,sum(a.[LiveBonusGGRAmountEur]) [LiveBonusGGRAmountEur]
	,sum(a.[SportTotalBetAmountEur]) [SportTotalBetAmountEur]
	,sum(a.[SportTotalWinAmountEur]) [SportTotalWinAmountEur]
	,sum(a.[SportTotalGGRAmountEur]) [SportTotalGGRAmountEur]
	,sum(a.[SportCashBetAmountEur]) [SportCashBetAmountEur]	
	,sum(a.[SportCashWinAmountEur]) [SportCashWinAmountEur]	
	,sum(a.[SportCashGGRAmountEur]) [SportCashGGRAmountEur]
	,sum(a.[SportBonusBetAmountEur]) [SportBonusBetAmountEur] 	
	,sum(a.[SportBonusWinAmountEur]) [SportBonusWinAmountEur]
	,sum(a.[SportBonusGGRAmountEur]) [SportBonusGGRAmountEur]
	,sum(a.[OtherTotalBetAmountEur]) [OtherTotalBetAmountEur]
	,sum(a.[OtherTotalWinAmountEur]) [OtherTotalWinAmountEur]
	,sum(a.[OtherTotalGGRAmountEur]) [OtherTotalGGRAmountEur]
	,sum(a.[OtherCashBetAmountEur]) [OtherCashBetAmountEur]	
	,sum(a.[OtherCashWinAmountEur]) [OtherCashWinAmountEur]	
	,sum(a.[OtherCashGGRAmountEur]) [OtherCashGGRAmountEur]
	,sum(a.[OtherBonusBetAmountEur]) [OtherBonusBetAmountEur] 	
	,sum(a.[OtherBonusWinAmountEur]) [OtherBonusWinAmountEur]
	,sum(a.[OtherBonusGGRAmountEur]) [OtherBonusGGRAmountEur]
	,a.FiscalYearWeekNumber
	,a.CalendarYearMonthStartDt
	,a.CalendarYearMonthNumber
	,a.CalendarYear	
	,a.TheoreticalRTP
	,a.RegistrationDate
	,a.FTDDate
	,a.TheoCashWin
	,a.TheoTotalWin
	,a.TheoCashWinEur
	,a.TheoTotalWinEur
	,a.Registration
	,a.FTD
	,SYSDATETIME()
from [GoldblueUTC].dbo.[ClientGameKPIHistoricalDetails] a
where a.BrandId =1
group by 
	a.ClientId 
	,a.UserName
	,a.GameId
	,a.CalendarDt
	,a.Product
	,a.[Provider]
	,a.[ProductCategory]
	,a.GameName
	,a.currencyId
	,a.[Country]
	,a.FiscalYearWeekNumber
	,a.CalendarYearMonthStartDt
	,a.CalendarYearMonthNumber
	,a.CalendarYear	
	,a.TheoreticalRTP
	,a.RegistrationDate
	,a.FTDDate
	,a.TheoCashWin
	,a.TheoTotalWin
	,a.TheoCashWinEur
	,a.TheoTotalWinEur
	,a.Registration
	,a.FTD
