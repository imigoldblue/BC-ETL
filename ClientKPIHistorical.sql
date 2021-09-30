USE [GoldblueUTC]
GO

/****** Object:  Table [GoldblueUTC].[dbo].[ClientGameKPI]    Script Date: 04/09/2021 14:10:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
DROP TABLE IF EXISTS [GoldblueUTC].[dbo].[ClientKPIHistorical]
GO

CREATE TABLE [GoldblueUTC].[dbo].[ClientKPIHistorical](
	[ClientId] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[CurrencyId] [char](3) NOT NULL
	,[Country] [varchar](255) NOT NULL
	,[Balance] [decimal] (18,2) NOT NULL 
	,[CasinoBalance] [decimal] (18,2) NOT NULL 
	,[DepositAmount] [decimal] (18,2) NOT NULL 
	,[DepositCount] [int] NULL 
	,[WithdrawalAmount] [decimal] (18,2) NOT NULL 
	,[WithdrawalCount] [int] NULL 
	,[RejectedDepositAmount] [decimal] (18,2) NOT NULL 
	,[RejectedDepositCount] [int] NULL 
	,[RejectedWithdrawalAmount] [decimal] (18,2) NOT NULL 
	,[RejectedWithdrawalCount] [int] NULL 
	,[PendingDepositAmount] [decimal] (18,2) NOT NULL 
	,[PendingDepositCount] [int] NULL 
	,[PendingWithdrawalAmount] [decimal] (18,2) NOT NULL 
	,[PendingWithdrawalCount] [int] NULL 	
	,[NetSpreadAmount] [decimal] (18,2) NOT NULL 
	,[TotalBetAmount] [decimal] (18,2) NOT NULL 	
	,[TotalBetCount] [int] NULL 	
	,[TotalWinAmount] [decimal] (18,2) NOT NULL 	
	,[TotalWinCount] [int] NULL 	
	,[TotalGGRAmount] [decimal] (18,2) NOT NULL 
	,[CashBetAmount] [decimal] (18,2) NOT NULL 	
	,[CashBetCount] [int] NULL 	
	,[CashWinAmount] [decimal] (18,2) NOT NULL 	
	,[CashWinCount] [int] NULL 	
	,[CashGGRAmount] [decimal] (18,2) NOT NULL 	
	,[BonusBetAmount] [decimal] (18,2) NOT NULL 	
	,[BonusBetCount] [int] NULL 	
	,[BonusWinAmount] [decimal] (18,2) NOT NULL 	
	,[BonusWinCount] [int] NULL 	
	,[BonusGGRAmount] [decimal] (18,2) NOT NULL 
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
	,[CasinoBonusAmount] [decimal] (18,2) NOT NULL 
	,[CasinoBonusCount] [int] NULL 
	,[SportBonusAmount] [decimal] (18,2) NOT NULL 
	,[SportBonusCount] [int] NULL

	,[BalanceEur] [decimal] (18,2) NOT NULL 
	,[CasinoBalanceEur] [decimal] (18,2) NOT NULL 
	,[DepositAmountEur] [decimal] (18,2) NOT NULL
	,[WithdrawalAmountEur] [decimal] (18,2) NOT NULL
	,[RejectedDepositAmountEur] [decimal] (18,2) NOT NULL 
	,[RejectedWithdrawalAmountEur] [decimal] (18,2) NOT NULL
	,[PendingDepositAmountEur] [decimal] (18,2) NOT NULL 
	,[PendingWithdrawalAmountEur] [decimal] (18,2) NOT NULL
	,[NetSpreadAmountEur] [decimal] (18,2) NOT NULL
	,[TotalBetAmountEur] [decimal] (18,2) NOT NULL		
	,[TotalWinAmountEur] [decimal] (18,2) NOT NULL		
	,[TotalGGRAmountEur] [decimal] (18,2) NOT NULL
	,[CashBetAmountEur] [decimal] (18,2) NOT NULL		
	,[CashWinAmountEur] [decimal] (18,2) NOT NULL		
	,[CashGGRAmountEur] [decimal] (18,2) NOT NULL	
	,[BonusBetAmountEur] [decimal] (18,2) NOT NULL 
	,[BonusWinAmountEur] [decimal] (18,2) NOT NULL		
	,[BonusGGRAmountEur] [decimal] (18,2) NOT NULL 
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
	,[CasinoBonusAmountEur] [decimal] (18,2) NOT NULL 
	,[SportBonusAmountEur] [decimal] (18,2) NOT NULL 

 CONSTRAINT [PK_ClientKPIHistorical] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC,
	[Date] DESC,
	[CurrencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


insert into goldblueutc.dbo.[ClientKPIHistorical]
select 
	a.ClientId,a.[Date],a.[currency],a.country
	,sum([Balance])
	,sum([CasinoBalance])
	,sum([DepositAmount])
	,sum([DepositCount])
	,sum([WithdrawalAmount])
	,sum([WithdrawalCount])
	,sum([RejectedDepositAmount])
	,sum([RejectedDepositCount])
	,sum([RejectedWithdrawalAmount])
	,sum([RejectedWithdrawalCount])
	,sum([PendingDepositAmount])
	,sum([PendingDepositCount])
	,sum([PendingWithdrawalAmount])
	,sum([PendingWithdrawalCount])	
	,sum([NetSpreadAmount])
	,sum([TotalBetAmount])	,sum([TotalBetCount])	,sum([TotalWinAmount])	,sum([TotalWinCount])	,sum([TotalGGRAmount])
	,sum([CashBetAmount])	,sum([CashBetCount])	,sum([CashWinAmount])	,sum([CashWinCount])	,sum([CashGGRAmount])	
	,sum([BonusBetAmount])	,sum([BonusBetCount])	,sum([BonusWinAmount])	,sum([BonusWinCount])	,sum([BonusGGRAmount]) 
	,sum([SlotsTotalBetAmount]),sum([SlotsTotalBetCount]),sum([SlotsTotalWinAmount]),sum([SlotsTotalWinCount]),sum([SlotsTotalGGRAmount])
	,sum([SlotsCashBetAmount]) ,sum([SlotsCashBetCount]) ,sum([SlotsCashWinAmount]) ,sum([SlotsCashWinCount]) ,sum([SlotsCashGGRAmount])
	,sum([SlotsBonusBetAmount]) ,sum([SlotsBonusBetCount]) ,sum([SlotsBonusWinAmount]) ,sum([SlotsBonusWinCount]) ,sum([SlotsBonusGGRAmount])
	,sum([LiveTotalBetAmount]),sum([LiveTotalBetCount]),sum([LiveTotalWinAmount]),sum([LiveTotalWinCount]),sum([LiveTotalGGRAmount])
	,sum([LiveCashBetAmount]) ,sum([LiveCashBetCount]) ,sum([LiveCashWinAmount]) ,sum([LiveCashWinCount]) ,sum([LiveCashGGRAmount])
	,sum([LiveBonusBetAmount]) ,sum([LiveBonusBetCount]) ,sum([LiveBonusWinAmount]) ,sum([LiveBonusWinCount]) ,sum([LiveBonusGGRAmount])
	,sum([SportTotalBetAmount]),sum([SportTotalBetCount]),sum([SportTotalWinAmount]),sum([SportTotalWinCount]),sum([SportTotalGGRAmount])
	,sum([SportCashBetAmount]) ,sum([SportCashBetCount]) ,sum([SportCashWinAmount]) ,sum([SportCashWinCount]) ,sum([SportCashGGRAmount])
	,sum([SportBonusBetAmount]) ,sum([SportBonusBetCount]) ,sum([SportBonusWinAmount]) ,sum([SportBonusWinCount]) ,sum([SportBonusGGRAmount])
	,sum([CasinoBonusAmount]) 
	,sum([CasinoBonusCount]) 
	,sum([SportBonusAmount]) 
	,sum([SportBonusCount])
	,sum([BalanceEur])
	,sum([CasinoBalanceEur])
	,sum([DepositAmountEur])
	,sum([WithdrawalAmountEur])
	,sum([RejectedDepositAmountEur])
	,sum([RejectedWithdrawalAmountEur])
	,sum([PendingDepositAmountEur])
	,sum([PendingWithdrawalAmountEur])
	,sum([NetSpreadAmountEur])
	,sum([TotalBetAmountEur])		,sum([TotalWinAmountEur])		,sum([TotalGGRAmountEur])
	,sum([CashBetAmountEur])		,sum([CashWinAmountEur])		,sum([CashGGRAmountEur])	
	,sum([BonusBetAmountEur])		,sum([BonusWinAmountEur])		,sum([BonusGGRAmountEur]) 
	,sum([SlotsTotalBetAmountEur]),sum([SlotsTotalWinAmountEur]),sum([SlotsTotalGGRAmountEur])
	,sum([SlotsCashBetAmountEur])  ,sum([SlotsCashWinAmountEur])  ,sum([SlotsCashGGRAmountEur])
	,sum([SlotsBonusBetAmountEur])  ,sum([SlotsBonusWinAmountEur])  ,sum([SlotsBonusGGRAmountEur])
	,sum([LiveTotalBetAmountEur]),sum([LiveTotalWinAmountEur]),sum([LiveTotalGGRAmountEur])
	,sum([LiveCashBetAmountEur])  ,sum([LiveCashWinAmountEur])  ,sum([LiveCashGGRAmountEur])
	,sum([LiveBonusBetAmountEur])  ,sum([LiveBonusWinAmountEur])  ,sum([LiveBonusGGRAmountEur])
	,sum([SportTotalBetAmountEur]),sum([SportTotalWinAmountEur]),sum([SportTotalGGRAmountEur])
	,sum([SportCashBetAmountEur])  ,sum([SportCashWinAmountEur])  ,sum([SportCashGGRAmountEur])
	,sum([SportBonusBetAmountEur])  ,sum([SportBonusWinAmountEur])  ,sum([SportBonusGGRAmountEur])
	,sum([CasinoBonusAmountEur]) 
	,sum([SportBonusAmountEur]) 


from (
			select distinct
				a.dw_user_id [ClientId]
				--,a.game_id [GameId]
				,a.full_date [Date]
				,a.currency
				,a.country
				,0 [Balance]
				,0 [CasinoBalance]
				,0 [DepositAmount]
				,0 [DepositCount]
				,0 [WithdrawalAmount]
				,0 [WithdrawalCount]
				,0 [RejectedDepositAmount]
				,0 [RejectedDepositCount]
				,0 [RejectedWithdrawalAmount]
				,0 [RejectedWithdrawalCount]
				,0 [PendingDepositAmount]
				,0 [PendingDepositCount]
				,0 [PendingWithdrawalAmount]
				,0 [PendingWithdrawalCount]	
				,0 [NetSpreadAmount]
				,sum(a.total_bet) [TotalBetAmount]
				,sum(a.cash_bet_count+a.bonus_bet_count) [TotalBetCount]
				,sum(a.total_win) [TotalWinAmount]
				,0  [TotalWinCount]
				,sum(a.total_ggr) [TotalGGRAmount]
				,sum(a.cash_bet_amt) [CashBetAmount]	
				,sum(a.cash_bet_count) [CashBetCount]	
				,sum(a.cash_win) [CashWinAmount]	
				,0  [CashWinCount]	
				,sum(a.cash_ggr) [CashGGRAmount]
				,sum(a.bonus_bet) [BonusBetAmount] 	
				,sum(a.bonus_bet_count) [BonusBetCount] 	
				,sum(a.bon_win) [BonusWinAmount]
				,0  [BonusWinCount]
				,sum(a.bonus_ggr) [BonusGGRAmount]
				,sum(case when a.product = 'Slots' then total_bet else 0 end) [SlotsTotalBetAmount]
				,sum(case when a.product = 'Slots' then cash_bet_count+a.bonus_bet_count else 0 end) [SlotsTotalBetCount]
				,sum(case when a.product = 'Slots' then total_win else 0 end) [SlotsTotalWinAmount]
				,0  [SlotsTotalWinCount]
				,sum(case when a.product = 'Slots' then total_ggr else 0 end) [SlotsTotalGGRAmount]
				,sum(case when a.product = 'Slots' then cash_bet_amt else 0 end) [SlotsCashBetAmount]	
				,sum(case when a.product = 'Slots' then cash_bet_count else 0 end) [SlotsCashBetCount]	
				,sum(case when a.product = 'Slots' then cash_win else 0 end) [SlotsCashWinAmount]	
				,0  [SlotsCashWinCount]	
				,sum(case when a.product = 'Slots' then cash_ggr else 0 end) [SlotsCashGGRAmount]
				,sum(case when a.product = 'Slots' then bonus_bet else 0 end) [SlotsBonusBetAmount] 	
				,sum(case when a.product = 'Slots' then bonus_bet_count else 0 end) [SlotsBonusBetCount] 	
				,sum(case when a.product = 'Slots' then bon_win else 0 end) [SlotsBonusWinAmount]
				,0  [SlotsBonusWinCount]
				,sum(case when a.product = 'Slots' then bonus_ggr else 0 end) [SlotsBonusGGRAmount]
				,sum(case when a.product = 'Live Casino' then total_bet else 0 end) [LiveTotalBetAmount]
				,sum(case when a.product = 'Live Casino' then cash_bet_count+a.bonus_bet_count else 0 end) [LiveTotalBetCount]
				,sum(case when a.product = 'Live Casino' then total_win else 0 end) [LiveTotalWinAmount]
				,0  [LiveTotalWinCount]
				,sum(case when a.product = 'Live Casino' then total_ggr else 0 end) [LiveTotalGGRAmount]
				,sum(case when a.product = 'Live Casino' then cash_bet_amt else 0 end) [LiveCashBetAmount]	
				,sum(case when a.product = 'Live Casino' then cash_bet_count else 0 end) [LiveCashBetCount]	
				,sum(case when a.product = 'Live Casino' then cash_win else 0 end) [LiveCashWinAmount]	
				,0 [LiveCashWinCount]	
				,sum(case when a.product = 'Live Casino' then cash_ggr else 0 end) [LiveCashGGRAmount]	
				,sum(case when a.product = 'Live Casino' then bonus_bet else 0 end) [LiveBonusBetAmount] 	
				,sum(case when a.product = 'Live Casino' then bonus_bet_count else 0 end) [LiveBonusBetCount] 	
				,sum(case when a.product = 'Live Casino' then bon_win else 0 end) [LiveBonusWinAmount]
				,0  [LiveBonusWinCount]
				,sum(case when a.product = 'Live Casino' then bonus_ggr else 0 end) [LiveBonusGGRAmount]
				,sum(case when a.product = 'Sportsbook' then total_bet else 0 end) [SportTotalBetAmount]
				,sum(case when a.product = 'Sportsbook' then cash_bet_count+a.bonus_bet_count else 0 end) [SportTotalBetCount]
				,sum(case when a.product = 'Sportsbook' then total_win else 0 end) [SportTotalWinAmount]
				,0  [SportTotalWinCount]
				,sum(case when a.product = 'Sportsbook' then total_ggr else 0 end) [SportTotalGGRAmount]
				,sum(case when a.product = 'Sportsbook' then cash_bet_amt else 0 end) [SportCashBetAmount]	
				,sum(case when a.product = 'Sportsbook' then cash_bet_count else 0 end) [SportCashBetCount]	
				,sum(case when a.product = 'Sportsbook' then cash_win else 0 end) [SportCashWinAmount]	
				,0 [SportCashWinCount]	
				,sum(case when a.product = 'Sportsbook' then cash_ggr else 0 end) [SportCashGGRAmount]
				,sum(case when a.product = 'Sportsbook' then bonus_bet else 0 end) [SportBonusBetAmount] 	
				,sum(case when a.product = 'Sportsbook' then bonus_bet_count else 0 end) [SportBonusBetCount] 	
				,sum(case when a.product = 'Sportsbook' then bon_win else 0 end) [SportBonusWinAmount]
				,0  [SportBonusWinCount]
				,sum(case when a.product = 'Sportsbook' then bonus_ggr else 0 end) [SportBonusGGRAmount]
				,0 [CasinoBonusAmount] 
				,0 [CasinoBonusCount] 
				,0 [SportBonusAmount] 
				,0 [SportBonusCount]
				
				,0 [BalanceEur]
				,0 [CasinoBalanceEur]
				,0 [DepositAmountEur]
				,0 [WithdrawalAmountEur]
				,0 [RejectedDepositAmountEur]
				,0 [RejectedWithdrawalAmountEur]
				,0 [PendingDepositAmountEur]
				,0 [PendingWithdrawalAmountEur]
				,0 [NetSpreadAmountEur]
				,sum(a.total_bet_eur) [TotalBetAmountEur]
				,sum(a.total_win_eur) [TotalWinAmountEur]
				,sum(a.total_ggr_eur) [TotalGGRAmountEur]
				,sum(a.cash_bet_amt_eur) [CashBetAmountEur]	
				,sum(a.cash_win_eur) [CashWinAmountEur]	
				,sum(a.cash_ggr_eur) [CashGGRAmountEur]
				,sum(a.bonus_bet_eur) [BonusBetAmountEur] 	
				,sum(a.[bonus_win_eur]) [BonusWinAmountEur]
				,sum(a.bonus_ggr_eur) [BonusGGRAmountEur]

				,sum(case when a.product = 'Slots' then total_bet_eur else 0 end) [SlotsTotalBetAmountEur]
				,sum(case when a.product = 'Slots' then total_win_eur else 0 end) [SlotsTotalWinAmountEur]
				,sum(case when a.product = 'Slots' then total_ggr_eur else 0 end) [SlotsTotalGGRAmountEur]
				,sum(case when a.product = 'Slots' then cash_bet_amt_eur else 0 end) [SlotsCashBetAmountEur]	
				,sum(case when a.product = 'Slots' then cash_win_eur else 0 end) [SlotsCashWinAmountEur]	
				,sum(case when a.product = 'Slots' then cash_ggr_eur else 0 end) [SlotsCashGGRAmountEur]
				,sum(case when a.product = 'Slots' then bonus_bet_eur else 0 end) [SlotsBonusBetAmountEur] 	
				,sum(case when a.product = 'Slots' then [bonus_win_eur] else 0 end) [SlotsBonusWinAmountEur]
				,sum(case when a.product = 'Slots' then bonus_ggr_eur else 0 end) [SlotsBonusGGRAmountEur]


				,sum(case when a.product = 'Live Casino' then total_bet_eur else 0 end) [LiveTotalBetAmountEur]
				,sum(case when a.product = 'Live Casino' then total_win_eur else 0 end) [LiveTotalWinAmountEur]
				,sum(case when a.product = 'Live Casino' then total_ggr_eur else 0 end) [LiveTotalGGRAmountEur]
				,sum(case when a.product = 'Live Casino' then cash_bet_amt_eur else 0 end) [LiveCashBetAmountEur]	
				,sum(case when a.product = 'Live Casino' then cash_win_eur else 0 end) [LiveCashWinAmountEur]	
				,sum(case when a.product = 'Live Casino' then cash_ggr_eur else 0 end) [LiveCashGGRAmountEur]	
				,sum(case when a.product = 'Live Casino' then bonus_bet_eur else 0 end) [LiveBonusBetAmountEur] 	
				,sum(case when a.product = 'Live Casino' then [bonus_win_eur] else 0 end) [LiveBonusWinAmountEur]
				,sum(case when a.product = 'Live Casino' then bonus_ggr_eur else 0 end) [LiveBonusGGRAmountEur]


				,sum(case when a.product = 'Sportsbook' then total_bet_eur else 0 end) [SportTotalBetAmountEur]
				,sum(case when a.product = 'Sportsbook' then total_win_eur else 0 end) [SportTotalWinAmountEur]
				,sum(case when a.product = 'Sportsbook' then total_ggr_eur else 0 end) [SportTotalGGRAmountEur]
				,sum(case when a.product = 'Sportsbook' then cash_bet_amt_eur else 0 end) [SportCashBetAmountEur]	
				,sum(case when a.product = 'Sportsbook' then cash_win_eur else 0 end) [SportCashWinAmountEur]	
				,sum(case when a.product = 'Sportsbook' then cash_ggr_eur else 0 end) [SportCashGGRAmountEur]
				,sum(case when a.product = 'Sportsbook' then bonus_bet_eur else 0 end) [SportBonusBetAmountEur] 	
				,sum(case when a.product = 'Sportsbook' then [bonus_win_eur] else 0 end) [SportBonusWinAmountEur]
				,sum(case when a.product = 'Sportsbook' then bonus_ggr_eur else 0 end) [SportBonusGGRAmountEur]
				,0 [CasinoBonusAmountEur] 
				,0 [SportBonusAmountEur] 
			FROM [dw_prod].[dbo].[dw_game_trans_dtl] a
			where a.brand_id =1
			group by a.dw_user_id,a.full_date,a.currency,a.country
		union all	
			select distinct
				a.user_id Clientid
				,convert(date, a.bonus_time) [date]
				,b.user_currency
				,a.country
				,0 [Balance]
				,0 [CasinoBalance]
				,0 [DepositAmount]
				,0 [DepositCount]
				,0 [WithdrawalAmount]
				,0 [WithdrawalCount]
				,0 [RejectedDepositAmount]
				,0 [RejectedDepositCount]
				,0 [RejectedWithdrawalAmount]
				,0 [RejectedWithdrawalCount]
				,0 [PendingDepositAmount]
				,0 [PendingDepositCount]
				,0 [PendingWithdrawalAmount]
				,0 [PendingWithdrawalCount]	
				,0 [NetSpreadAmount]	
				,0 [TotalBetAmount]	,0 [TotalBetCount]	,0 [TotalWinAmount]	,0 [TotalWinCount]	,0 [TotalGGRAmount]
				,0 [CashBetAmount]	,0 [CashBetCount]	,0 [CashWinAmount]	,0 [CashWinCount]	,0 [CashGGRAmount]	
				,0 [BonusBetAmount]	,0 [BonusBetCount]	,0 [BonusWinAmount]	,0 [BonusWinCount]	,0 [BonusGGRAmount] 
				,0 [SlotsTotalBetAmount],0 [SlotsTotalBetCount],0 [SlotsTotalWinAmount],0 [SlotsTotalWinCount],0 [SlotsTotalGGRAmount]
				,0 [SlotsCashBetAmount] ,0 [SlotsCashBetCount] ,0 [SlotsCashWinAmount] ,0 [SlotsCashWinCount] ,0 [SlotsCashGGRAmount]
				,0 [SlotsBonusBetAmount] ,0 [SlotsBonusBetCount] ,0 [SlotsBonusWinAmount] ,0 [SlotsBonusWinCount] ,0 [SlotsBonusGGRAmount]
				,0 [LiveTotalBetAmount],0 [LiveTotalBetCount],0 [LiveTotalWinAmount],0 [LiveTotalWinCount],0 [LiveTotalGGRAmount]
				,0 [LiveCashBetAmount] ,0 [LiveCashBetCount] ,0 [LiveCashWinAmount] ,0 [LiveCashWinCount] ,0 [LiveCashGGRAmount]
				,0 [LiveBonusBetAmount] ,0 [LiveBonusBetCount] ,0 [LiveBonusWinAmount] ,0 [LiveBonusWinCount] ,0 [LiveBonusGGRAmount]
				,0 [SportTotalBetAmount],0 [SportTotalBetCount],0 [SportTotalWinAmount],0 [SportTotalWinCount],0 [SportTotalGGRAmount]
				,0 [SportCashBetAmount] ,0 [SportCashBetCount] ,0 [SportCashWinAmount] ,0 [SportCashWinCount] ,0 [SportCashGGRAmount]
				,0 [SportBonusBetAmount] ,0 [SportBonusBetCount] ,0 [SportBonusWinAmount] ,0 [SportBonusWinCount] ,0 [SportBonusGGRAmount]
				,0 [CasinoBonusAmount] 
				,count(distinct case when a.product in ('SL','LC') then a.src_tran_id else null end ) [CasinoBonusCount] 
				,0 [SportBonusAmount] 
				,count(distinct case when a.product in ('SB','VS') then a.src_tran_id else null end ) [SportBonusCount]

				,0 [BalanceEur]
				,0 [CasinoBalanceEur]
				,0 [DepositAmountEur]
				,0 [WithdrawalAmountEur]
				,0 [RejectedDepositAmountEur]
				,0 [RejectedWithdrawalAmountEur]
				,0 [PendingDepositAmountEur]
				,0 [PendingWithdrawalAmountEur]
				,0 [NetSpreadAmountEur]				
				,0 [TotalBetAmountEur]		,0 [TotalWinAmountEur]		,0 [TotalGGRAmountEur]
				,0 [CashBetAmountEur]		,0 [CashWinAmountEur]		,0 [CashGGRAmountEur]	
				,0 [BonusBetAmountEur]		,0 [BonusWinAmountEur]		,0 [BonusGGRAmountEur] 
				,0 [SlotsTotalBetAmountEur],0 [SlotsTotalWinAmountEur],0 [SlotsTotalGGRAmountEur]
				,0 [SlotsCashBetAmountEur]  ,0 [SlotsCashWinAmountEur]  ,0 [SlotsCashGGRAmountEur]
				,0 [SlotsBonusBetAmountEur]  ,0 [SlotsBonusWinAmountEur]  ,0 [SlotsBonusGGRAmountEur]
				,0 [LiveTotalBetAmountEur],0 [LiveTotalWinAmountEur],0 [LiveTotalGGRAmountEur]
				,0 [LiveCashBetAmountEur]  ,0 [LiveCashWinAmountEur]  ,0 [LiveCashGGRAmountEur]
				,0 [LiveBonusBetAmountEur]  ,0 [LiveBonusWinAmountEur]  ,0 [LiveBonusGGRAmountEur]
				,0 [SportTotalBetAmountEur],0 [SportTotalWinAmountEur],0 [SportTotalGGRAmountEur]
				,0 [SportCashBetAmountEur]  ,0 [SportCashWinAmountEur]  ,0 [SportCashGGRAmountEur]
				,0 [SportBonusBetAmountEur]  ,0 [SportBonusWinAmountEur]  ,0 [SportBonusGGRAmountEur]
				,sum(case when a.product in ('SL','LC') then a.Net_Bonus_Amount else 0 end ) [CasinoBonusAmountEur] 
				,sum(case when a.product in ('SB','VS') then a.Net_Bonus_Amount else 0 end )  [SportBonusAmountEur] 
			FROM [dw].[dbo].bonus_transacted a
				join dw_prod.dbo.dw_user_header_dm b on a.user_id =  b.user_id
			group by a.user_id, convert(date, a.bonus_time) ,b.user_currency,a.country
		union all
			select distinct
				a.user_id Clientid
				,convert(date, a.tran_time) [date]
				,a.currency
				,a.country
				,0 [Balance]
				,0 [CasinoBalance]
				,sum(case when a.transaction_status = 'Completed' then a.[deposit_amount] else 0 end) [DepositAmount]
				,count(distinct case when a.transaction_status = 'Completed' and a.transaction_status = 'Deposit' then a.src_Tran_id else null end) [DepositCount]
				,sum(case when a.transaction_status = 'Completed' then a.[withdraw_amount] else 0 end) [WithdrawalAmount]
				,count(distinct case when a.transaction_status = 'Completed' and a.transaction_status = 'Withdraw' then a.src_Tran_id else null end) [WithdrawalCount]
				,sum(case when a.transaction_status = 'Failed' then a.[deposit_amount] else 0 end) RejectedDepositAmount
				,count(distinct case when a.transaction_status = 'Failed' and a.transaction_status = 'Deposit' then a.src_Tran_id else null end) RejectedDepositCount
				,sum(case when a.transaction_status = 'Failed' then a.[withdraw_amount] else 0 end) [RejectedWithdrawalAmount]
				,count(distinct case when a.transaction_status = 'Failed' and a.transaction_status = 'Withdraw' then a.src_Tran_id else null end) [RejectedWithdrawalCount]
				,sum(case when a.transaction_status = 'In progress' then a.[deposit_amount] else 0 end) PendingDepositAmount
				,count(distinct case when a.transaction_status = 'In Progress' and a.transaction_status = 'Deposit' then a.src_Tran_id else null end) PendingDepositCount
				,sum(case when a.transaction_status = 'In Progress' then a.[withdraw_amount] else 0 end) [PendingWithdrawalAmount]
				,count(distinct case when a.transaction_status = 'In Progress' and a.transaction_status = 'Withdraw' then a.src_Tran_id else null end) [PendingWithdrawalCount]	
				,sum(case when a.transaction_status = 'Completed' then a.[deposit_amount] else 0 end) -sum(case when a.transaction_status = 'Completed' then a.[withdraw_amount] else 0 end) NetSpreadAmount
				,0 [TotalBetAmount]	,0 [TotalBetCount]	,0 [TotalWinAmount]	,0 [TotalWinCount]	,0 [TotalGGRAmount]
				,0 [CashBetAmount]	,0 [CashBetCount]	,0 [CashWinAmount]	,0 [CashWinCount]	,0 [CashGGRAmount]	
				,0 [BonusBetAmount]	,0 [BonusBetCount]	,0 [BonusWinAmount]	,0 [BonusWinCount]	,0 [BonusGGRAmount] 
				,0 [SlotsTotalBetAmount],0 [SlotsTotalBetCount],0 [SlotsTotalWinAmount],0 [SlotsTotalWinCount],0 [SlotsTotalGGRAmount]
				,0 [SlotsCashBetAmount] ,0 [SlotsCashBetCount] ,0 [SlotsCashWinAmount] ,0 [SlotsCashWinCount] ,0 [SlotsCashGGRAmount]
				,0 [SlotsBonusBetAmount] ,0 [SlotsBonusBetCount] ,0 [SlotsBonusWinAmount] ,0 [SlotsBonusWinCount] ,0 [SlotsBonusGGRAmount]
				,0 [LiveTotalBetAmount],0 [LiveTotalBetCount],0 [LiveTotalWinAmount],0 [LiveTotalWinCount],0 [LiveTotalGGRAmount]
				,0 [LiveCashBetAmount] ,0 [LiveCashBetCount] ,0 [LiveCashWinAmount] ,0 [LiveCashWinCount] ,0 [LiveCashGGRAmount]
				,0 [LiveBonusBetAmount] ,0 [LiveBonusBetCount] ,0 [LiveBonusWinAmount] ,0 [LiveBonusWinCount] ,0 [LiveBonusGGRAmount]
				,0 [SportTotalBetAmount],0 [SportTotalBetCount],0 [SportTotalWinAmount],0 [SportTotalWinCount],0 [SportTotalGGRAmount]
				,0 [SportCashBetAmount] ,0 [SportCashBetCount] ,0 [SportCashWinAmount] ,0 [SportCashWinCount] ,0 [SportCashGGRAmount]
				,0 [SportBonusBetAmount] ,0 [SportBonusBetCount] ,0 [SportBonusWinAmount] ,0 [SportBonusWinCount] ,0 [SportBonusGGRAmount]
				,0 [CasinoBonusAmount] 
				,0 [CasinoBonusCount] 
				,0 [SportBonusAmount] 
				,0 [SportBonusCount]

				,0 [BalanceEur]
				,0 [CasinoBalanceEur]
				,sum(case when a.transaction_status = 'Completed' then a.[deposit_amount_eur] else 0 end) [DepositAmountEur]
				,sum(case when a.transaction_status = 'Completed' then a.[withdraw_amount_eur] else 0 end) [WithdrawalAmountEur]
				,sum(case when a.transaction_status = 'Failed' then a.[deposit_amount_eur] else 0 end)  RejectedDepositAmountEur
				,sum(case when a.transaction_status = 'Failed' then a.[withdraw_amount_eur] else 0 end) [RejectedWithdrawalAmountEur]
				,sum(case when a.transaction_status = 'In progress' then a.[deposit_amount_eur] else 0 end) PendingDepositAmountEur
				,sum(case when a.transaction_status = 'In Progress' then a.[withdraw_amount_eur] else 0 end) [PendingWithdrawalAmountEur]
				,sum(case when a.transaction_status = 'Completed' then a.[deposit_amount_eur] else 0 end) -sum(case when a.transaction_status = 'Completed' then a.[withdraw_amount_eur] else 0 end) NetSpreadAmountEur
				,0 [TotalBetAmountEur]		,0 [TotalWinAmountEur]		,0 [TotalGGRAmountEur]
				,0 [CashBetAmountEur]		,0 [CashWinAmountEur]		,0 [CashGGRAmountEur]	
				,0 [BonusBetAmountEur]		,0 [BonusWinAmountEur]		,0 [BonusGGRAmountEur] 
				,0 [SlotsTotalBetAmountEur],0 [SlotsTotalWinAmountEur],0 [SlotsTotalGGRAmountEur]
				,0 [SlotsCashBetAmountEur]  ,0 [SlotsCashWinAmountEur]  ,0 [SlotsCashGGRAmountEur]
				,0 [SlotsBonusBetAmountEur]  ,0 [SlotsBonusWinAmountEur]  ,0 [SlotsBonusGGRAmountEur]
				,0 [LiveTotalBetAmountEur],0 [LiveTotalWinAmountEur],0 [LiveTotalGGRAmountEur]
				,0 [LiveCashBetAmountEur]  ,0 [LiveCashWinAmountEur]  ,0 [LiveCashGGRAmountEur]
				,0 [LiveBonusBetAmountEur]  ,0 [LiveBonusWinAmountEur]  ,0 [LiveBonusGGRAmountEur]
				,0 [SportTotalBetAmountEur],0 [SportTotalWinAmountEur],0 [SportTotalGGRAmountEur]
				,0 [SportCashBetAmountEur]  ,0 [SportCashWinAmountEur]  ,0 [SportCashGGRAmountEur]
				,0 [SportBonusBetAmountEur]  ,0 [SportBonusWinAmountEur]  ,0 [SportBonusGGRAmountEur]
				,0 [CasinoBonusAmountEur] 
				,0 [SportBonusAmountEur] 
			FROM [dw_prod].[dbo].[dw_user_transactions] a
			where a.transaction_type in ('Deposit','Withdraw')
			group by a.user_id, convert(date, a.tran_time) ,a.currency,a.country		
) a
group by 	a.ClientId,a.[Date],a.[currency],a.country



