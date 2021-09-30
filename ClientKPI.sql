USE [GoldblueUTC]
GO

/****** Object:  Table [GoldblueUTC].[dbo].[ClientGameKPI]    Script Date: 04/09/2021 14:10:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
DROP TABLE IF EXISTS [GoldblueUTC].[dbo].[ClientKPI]
GO

CREATE TABLE [GoldblueUTC].[dbo].[ClientKPI](
	[ClientId] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[CurrencyId] [char](3) NOT NULL
	,[Country] [varchar](255) NOT NULL
	,[Balance] [decimal] (18,2) NOT NULL 
	,[BonusWalletBalance] [decimal] (18,2) NOT NULL 
	,[SlotBonusWalletBalance] [decimal] (18,2) NOT NULL 
	,[SportBonusWalletBalance] [decimal] (18,2) NOT NULL 
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
	,[JackpotAmount] [decimal] (18,2) NOT NULL 
	,[JackpotCount] [int] NULL 
	,[LiveDealerTipAmount] [decimal] (18,2) NOT NULL 
	,[LiveDealerTipCount] [int] NULL 
	,[BonusAmount] [decimal] (18,2) NOT NULL 
	,[BonusCount] [int] NULL 
	,[CasinoBonusAmount] [decimal] (18,2) NOT NULL  
	,[CasinoBonusCount] [int] NULL  
	,[SportBonusAmount] [decimal] (18,2) NOT NULL  
	,[SportBonusCount] [int] NULL 
	,[BonusCancelledAmount] [decimal] (18,2) NOT NULL 
	,[BonusCancelledCount] [int] NULL 
	,[BonusRedeemedAmount] [decimal] (18,2) NOT NULL 
	,[BonusRedeemedCount] [int] NULL 
	,[CashbackBonus] [decimal] (18,2) NOT NULL 
	,[CasinoCashbackBonus] [decimal] (18,2) NOT NULL 
	,[LoyaltyPointReward] [decimal] (18,2) NOT NULL 
	,[PointExchange] [decimal] (18,2) NOT NULL 
	,[LoyaltyPointItemPurchase] [decimal] (18,2) NOT NULL 
	,[AgentToAgentTransferAmount] [decimal] (18,2) NOT NULL 
	,[AgentToAgentTransferCount] [int] NULL 
	,[AgentToPlayerTransferAmount] [decimal] (18,2) NOT NULL 
	,[AgentToPlayerTransferCount] [int] NULL 
	,[AgentToClientCreditUpAmount] [decimal] (18,2) NOT NULL 
	,[AgentToClientCreditUpCount] [int] NULL 
	,[AgentToClientCreditDownAmount] [decimal] (18,2) NOT NULL 
	,[AgentToClientCreditDownCount] [int] NULL 
	,[AgentToAgentCreditUpAmount] [decimal] (18,2) NOT NULL 
	,[AgentToAgentCreditUpCount] [int] NULL 
	,[AgentToAgentCreditDownAmount] [decimal] (18,2) NOT NULL 
	,[AgentToAgentCreditDownCount] [int] NULL 
	,[AgentCreditIncreaseAmount] [decimal] (18,2) NOT NULL 
	,[AgentCreditIncreaseCount] [int] NULL 
	,[AgentCreditDecreaseAmount] [decimal] (18,2) NOT NULL 
	,[AgentCreditDecreaseCount] [int] NULL 
	,[AgentCorrectionAmount] [decimal] (18,2) NOT NULL 
	,[AgentCorrectionCount] [int] NULL 
	,[AgentClientDepositAmount] [decimal] (18,2) NOT NULL 
	,[AgentClientDepositCount] [int] NULL 
	,[AgentClientWithdrawAmount] [decimal] (18,2) NOT NULL 
	,[AgentClientWithdrawCount] [int] NULL 
	,[ClientDepositByAgentAmount] [decimal] (18,2) NOT NULL 
	,[ClientDepositByAgentCount] [int] NULL 
	,[CorrectionUpAmount] [decimal] (18,2) NOT NULL 
	,[CorrectionUpCount] [int] NULL 
	,[CorrectionDownAmount] [decimal] (18,2) NOT NULL 
	,[CorrectionDownCount] [int] NULL 
	,[BonusCorrectionAmount] [decimal] (18,2) NOT NULL 
	,[BonusCorrectionCount] [int] NULL 
	,[BonusCorrectionUpAmount] [decimal] (18,2) NOT NULL 
	,[BonusCorrectionUpCount] [int] NULL 
	,[BonusCorrectionDownAmount] [decimal] (18,2) NOT NULL 
	,[BonusCorrectionDownCount] [int] NULL 
	,[LoyaltyPointCorrectionUpAmount] [decimal] (18,2) NOT NULL 
	,[LoyaltyPointCorrectionUpCount] [int] NULL 
	,[LoyaltyPointCorrectionDownAmount] [decimal] (18,2) NOT NULL 
	,[LoyaltyPointCorrectionDownCount] [int] NULL 
	,[DepositCorrectionAmount] [decimal] (18,2) NOT NULL 
	,[DepositCorrectionCount] [int] NULL 
	,[CashBackCorrectionAmount] [decimal] (18,2) NOT NULL 
	,[CashBackCorrectionCount] [int] NULL 

	,[BalanceEur] [decimal] (18,2) NOT NULL 
	,[BonusWalletBalanceEur] [decimal] (18,2) NOT NULL 
	,[SlotBonusWalletBalanceEur] [decimal] (18,2) NOT NULL 
	,[SportBonusWalletBalanceEur] [decimal] (18,2) NOT NULL 
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
	,[JackpotAmountEur] [decimal] (18,2) NOT NULL
	,[LiveDealerTipAmountEur] [decimal] (18,2) NOT NULL
	,[BonusAmountEur] [decimal] (18,2) NOT NULL
	,[CasinoBonusAmountEur] [decimal] (18,2) NOT NULL 
	,[SportBonusAmountEur] [decimal] (18,2) NOT NULL 
	,[BonusCancelledAmountEur] [decimal] (18,2) NOT NULL
	,[BonusRedeemedAmountEur] [decimal] (18,2) NOT NULL
	,[CashbackBonusEur] [decimal] (18,2) NOT NULL
	,[CasinoCashbackBonusEur] [decimal] (18,2) NOT NULL
	,[LoyaltyPointRewardEur] [decimal] (18,2) NOT NULL
	,[PointExchangeEur] [decimal] (18,2) NOT NULL
	,[LoyaltyPointItemPurchaseEur] [decimal] (18,2) NOT NULL
	,[AgentToAgentTransferAmountEur] [decimal] (18,2) NOT NULL
	,[AgentToPlayerTransferAmountEur] [decimal] (18,2) NOT NULL
	,[AgentToClientCreditUpAmountEur] [decimal] (18,2) NOT NULL
	,[AgentToClientCreditDownAmountEur] [decimal] (18,2) NOT NULL
	,[AgentToAgentCreditUpAmountEur] [decimal] (18,2) NOT NULL
	,[AgentToAgentCreditDownAmountEur] [decimal] (18,2) NOT NULL
	,[AgentCreditIncreaseAmountEur] [decimal] (18,2) NOT NULL
	,[AgentCreditDecreaseAmountEur] [decimal] (18,2) NOT NULL
	,[AgentCorrectionAmountEur] [decimal] (18,2) NOT NULL
	,[AgentClientDepositAmountEur] [decimal] (18,2) NOT NULL
	,[AgentClientWithdrawAmountEur] [decimal] (18,2) NOT NULL
	,[ClientDepositByAgentAmountEur] [decimal] (18,2) NOT NULL
	,[CorrectionUpAmountEur] [decimal] (18,2) NOT NULL
	,[CorrectionDownAmountEur] [decimal] (18,2) NOT NULL
	,[BonusCorrectionAmountEur] [decimal] (18,2) NOT NULL
	,[BonusCorrectionUpAmountEur] [decimal] (18,2) NOT NULL
	,[BonusCorrectionDownAmountEur] [decimal] (18,2) NOT NULL
	,[LoyaltyPointCorrectionUpAmountEur] [decimal] (18,2) NOT NULL
	,[LoyaltyPointCorrectionDownAmountEur] [decimal] (18,2) NOT NULL
	,[DepositCorrectionAmountEur] [decimal] (18,2) NOT NULL
	,[CashBackCorrectionAmountEur] [decimal] (18,2) NOT NULL

 CONSTRAINT [PK_ClientKPI] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC,
	[Date] DESC,
	[CurrencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT INTO [GoldblueUTC].[dbo].[ClientKPI]
SELECT DISTINCT
	a.[ClientId],a.[Date],a.CurrencyId,reg.Alpha2Code
	,sum([RealWalletBalance])
	,sum([BonusWalletBalance])
	,sum([SlotBonusWalletBalance])
	,sum([SportBonusWalletBalance])
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
	,sum([JackpotAmount])
	,sum([JackpotCount])
	,sum([LiveDealerTipAmount])
	,sum([LiveDealerTipCount])
	,sum([BonusAmount])
	,sum([BonusCount])
	,sum([CasinoBonusAmount]) 
	,sum([CasinoBonusCount]) 
	,sum([SportBonusAmount]) 
	,sum([SportBonusCount])
	,sum([BonusCancelledAmount])
	,sum([BonusCancelledCount])
	,sum([BonusRedeemedAmount])
	,sum([BonusRedeemedCount])
	,sum([CashbackBonus])
	,sum([CasinoCashbackBonus])
	,sum([LoyaltyPointReward])
	,sum([PointExchange])
	,sum([LoyaltyPointItemPurchase])
	,sum([AgentToAgentTransferAmount])
	,sum([AgentToAgentTransferCount])
	,sum([AgentToPlayerTransferAmount])
	,sum([AgentToPlayerTransferCount])
	,sum([AgentToClientCreditUpAmount])
	,sum([AgentToClientCreditUpCount])
	,sum([AgentToClientCreditDownAmount])
	,sum([AgentToClientCreditDownCount])
	,sum([AgentToAgentCreditUpAmount])
	,sum([AgentToAgentCreditUpCount])
	,sum([AgentToAgentCreditDownAmount])
	,sum([AgentToAgentCreditDownCount])
	,sum([AgentCreditIncreaseAmount])
	,sum([AgentCreditIncreaseCount])
	,sum([AgentCreditDecreaseAmount])
	,sum([AgentCreditDecreaseCount])
	,sum([AgentCorrectionAmount])
	,sum([AgentCorrectionCount])
	,sum([AgentClientDepositAmount])
	,sum([AgentClientDepositCount])
	,sum([AgentClientWithdrawAmount])
	,sum([AgentClientWithdrawCount])
	,sum([ClientDepositByAgentAmount])
	,sum([ClientDepositByAgentCount])
	,sum([CorrectionUpAmount])
	,sum([CorrectionUpCount])
	,sum([CorrectionDownAmount])
	,sum([CorrectionDownCount])
	,sum([BonusCorrectionAmount])
	,sum([BonusCorrectionCount])
	,sum([BonusCorrectionUpAmount])
	,sum([BonusCorrectionUpCount])
	,sum([BonusCorrectionDownAmount])
	,sum([BonusCorrectionDownCount])
	,sum([LoyaltyPointCorrectionUpAmount])
	,sum([LoyaltyPointCorrectionUpCount])
	,sum([LoyaltyPointCorrectionDownAmount])
	,sum([LoyaltyPointCorrectionDownCount])
	,sum([DepositCorrectionAmount])
	,sum([DepositCorrectionCount])
	,sum([CashBackCorrectionAmount])
	,sum([CashBackCorrectionCount])
	,sum([RealWalletBalanceEur])
	,sum([BonusWalletBalanceEur])
	,sum([SlotBonusWalletBalanceEur])
	,sum([SportBonusWalletBalanceEur])
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
	,sum([JackpotAmountEur])
	,sum([LiveDealerTipAmountEur])	
	,sum([BonusAmountEur])
	,sum([CasinoBonusAmountEur]) 
	,sum([SportBonusAmountEur]) 
	,sum([BonusCancelledAmountEur])
	,sum([BonusRedeemedAmountEur])
	,sum([CashbackBonusEur])
	,sum([CasinoCashbackBonusEur])
	,sum([LoyaltyPointRewardEur])
	,sum([PointExchangeEur])
	,sum([LoyaltyPointItemPurchaseEur])
	,sum([AgentToAgentTransferAmountEur])
	,sum([AgentToPlayerTransferAmountEur])
	,sum([AgentToClientCreditUpAmountEur])
	,sum([AgentToClientCreditDownAmountEur])
	,sum([AgentToAgentCreditUpAmountEur])
	,sum([AgentToAgentCreditDownAmountEur])
	,sum([AgentCreditIncreaseAmountEur])
	,sum([AgentCreditDecreaseAmountEur])
	,sum([AgentCorrectionAmountEur])
	,sum([AgentClientDepositAmountEur])
	,sum([AgentClientWithdrawAmountEur])
	,sum([ClientDepositByAgentAmountEur])
	,sum([CorrectionUpAmountEur])
	,sum([CorrectionDownAmountEur])
	,sum([BonusCorrectionAmountEur])
	,sum([BonusCorrectionUpAmountEur])
	,sum([BonusCorrectionDownAmountEur])
	,sum([LoyaltyPointCorrectionUpAmountEur])
	,sum([LoyaltyPointCorrectionDownAmountEur])
	,sum([DepositCorrectionAmountEur])
	,sum([CashBackCorrectionAmountEur])

FROM(
			SELECT DISTINCT
				[ClientId]
				,convert(date, cr.Created) [date]
				,cr.CurrencyId
				,0 [RealWalletBalance]
				,0 [BonusWalletBalance] 
				,0 [SlotBonusWalletBalance]  
				,0 [SportBonusWalletBalance] 
				,sum(case when cr.TypeId in (3,7) and cr.state = 10 then cr.amount else 0 end) [DepositAmount]
				,count(distinct case when cr.TypeId in (3,7) and cr.state = 10 then cr.id else null end) [DepositCount]
				,sum(case when cr.TypeId =2 and cr.state = 10 then cr.amount else 0 end) [WithdrawalAmount]
				,count(distinct case when cr.TypeId =2 and cr.state = 10 then cr.id else null end) [WithdrawalCount]
				,sum(case when cr.TypeId =200 and cr.state = 10 then cr.amount else 0 end) RejectedDepositAmount
				,count(distinct case when cr.TypeId =200 and cr.state = 10 then cr.id else null end) RejectedDepositCount
				,sum(case when cr.TypeId =8 and cr.state = 10 then cr.amount else 0 end) [RejectedWithdrawalAmount]
				,count(distinct case when cr.TypeId =8 and cr.state = 10 then cr.id else null end) [RejectedWithdrawalCount]
				,sum(case when cr.TypeId =6 and cr.state = 10 then cr.amount else 0 end)-sum(case when cr.TypeId in (3,7) and cr.state = 10 then cr.amount else 0 end)-sum(case when cr.TypeId =200 and cr.state = 10 then cr.amount else 0 end) PendingDepositAmount
				,count(distinct case when cr.TypeId =6 and cr.state = 10 then cr.id else null end)-count(distinct case when cr.TypeId in (3,7) and cr.state = 10 then cr.id else null end)-count(distinct case when cr.TypeId =200 and cr.state = 10 then cr.id else null end) PendingDepositCount
				,sum(case when cr.TypeId =1 and cr.state = 10 then cr.amount else 0 end)-sum(case when cr.TypeId =2 and cr.state = 10 then cr.amount else 0 end)-sum(case when cr.TypeId =8 and cr.state = 10 then cr.amount else 0 end) [PendingWithdrawalAmount]
				,count(distinct case when cr.TypeId =1 and cr.state = 10 then cr.id else null end)-count(distinct case when cr.TypeId =2 and cr.state = 10 then cr.id else null end)-count(distinct case when cr.TypeId =8 and cr.state = 10 then cr.id else null end) [PendingWithdrawalCount]	
				,sum(case when cr.TypeId in (3,7) and cr.state = 10 then cr.amount else 0 end)-sum(case when cr.TypeId =2 and cr.state = 10 then cr.amount else 0 end) NetSpreadAmount
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
				,sum(case when cr.TypeId =95 and cr.state = 10 then cr.amount else 0 end) [JackpotAmount]
				,count(distinct case when cr.TypeId =95 and cr.state = 10 then cr.id else null end) [JackpotCount]
				,sum(case when cr.TypeId =50 and cr.state = 10 then cr.amount else 0 end) [LiveDealerTipAmount]
				,count(distinct case when cr.TypeId =50 and cr.state = 10 then cr.id else null end) [LiveDealerTipCount]

				,sum(case when cr.TypeId =81 and cr.state = 10 then cr.amount else 0 end) [BonusAmount]
				,count(distinct case when cr.TypeId =81 and cr.state = 10 then cr.id else null end) [BonusCount]
				,0 [CasinoBonusAmount] 
				,0 [CasinoBonusCount] 
				,0 [SportBonusAmount] 
				,0 [SportBonusCount]
				,sum(case when cr.TypeId =82 and cr.state = 10 then cr.amount else 0 end) [BonusCancelledAmount]
				,count(distinct case when cr.TypeId =82 and cr.state = 10 then cr.id else null end) [BonusCancelledCount]
				,sum(case when cr.TypeId =83 and cr.state = 10 then cr.amount else 0 end) [BonusRedeemedAmount]
				,count(distinct case when cr.TypeId =83 and cr.state = 10 then cr.id else null end) [BonusRedeemedCount]
				,sum(case when cr.TypeId =84 and cr.state = 10 then cr.amount else 0 end) [CashbackBonus]
				,sum(case when cr.TypeId =87 and cr.state = 10 then cr.amount else 0 end) [CasinoCashbackBonus]
				,sum(case when cr.TypeId =504 and cr.state = 10 then cr.amount else 0 end) [LoyaltyPointReward]
				,sum(case when cr.TypeId =80 and cr.state = 10 then cr.amount else 0 end) [PointExchange]
				,sum(case when cr.TypeId =503 and cr.state = 10 then cr.amount else 0 end) [LoyaltyPointItemPurchase]

				,sum(case when cr.TypeId =22 and cr.state = 10 then cr.amount else 0 end) [AgentToAgentTransferAmount]
				,count(distinct case when cr.TypeId =22 and cr.state = 10 then cr.id else null end) [AgentToAgentTransferCount]
				,sum(case when cr.TypeId =23 and cr.state = 10 then cr.amount else 0 end) [AgentToPlayerTransferAmount]
				,count(distinct case when cr.TypeId =23 and cr.state = 10 then cr.id else null end) [AgentToPlayerTransferCount]
				,sum(case when cr.TypeId =150 and cr.state = 10 then cr.amount else 0 end) [AgentToClientCreditUpAmount]
				,count(distinct case when cr.TypeId =150 and cr.state = 10 then cr.id else null end) [AgentToClientCreditUpCount]
				,sum(case when cr.TypeId =151 and cr.state = 10 then cr.amount else 0 end) [AgentToClientCreditDownAmount]
				,count(distinct case when cr.TypeId =151 and cr.state = 10 then cr.id else null end) [AgentToClientCreditDownCount]
				,sum(case when cr.TypeId =152 and cr.state = 10 then cr.amount else 0 end) [AgentToAgentCreditUpAmount]
				,count(distinct case when cr.TypeId =152 and cr.state = 10 then cr.id else null end) [AgentToAgentCreditUpCount]
				,sum(case when cr.TypeId =153 and cr.state = 10 then cr.amount else 0 end) [AgentToAgentCreditDownAmount]
				,count(distinct case when cr.TypeId =153 and cr.state = 10 then cr.id else null end) [AgentToAgentCreditDownCount]
				,sum(case when cr.TypeId =154 and cr.state = 10 then cr.amount else 0 end) [AgentCreditIncreaseAmount]
				,count(distinct case when cr.TypeId =154 and cr.state = 10 then cr.id else null end) [AgentCreditIncreaseCount]
				,sum(case when cr.TypeId =155 and cr.state = 10 then cr.amount else 0 end) [AgentCreditDecreaseAmount]
				,count(distinct case when cr.TypeId =155 and cr.state = 10 then cr.id else null end) [AgentCreditDecreaseCount]
				,sum(case when cr.TypeId =156 and cr.state = 10 then cr.amount else 0 end) [AgentCorrectionAmount]
				,count(distinct case when cr.TypeId =156 and cr.state = 10 then cr.id else null end) [AgentCorrectionCount]
				,sum(case when cr.TypeId =157 and cr.state = 10 then cr.amount else 0 end) [AgentClientDepositAmount]
				,count(distinct case when cr.TypeId =157 and cr.state = 10 then cr.id else null end) [AgentClientDepositCount]
				,sum(case when cr.TypeId =158 and cr.state = 10 then cr.amount else 0 end) [AgentClientWithdrawAmount]
				,count(distinct case when cr.TypeId =158 and cr.state = 10 then cr.id else null end) [AgentClientWithdrawCount]
				,sum(case when cr.TypeId =180 and cr.state = 10 then cr.amount else 0 end) [ClientDepositByAgentAmount]
				,count(distinct case when cr.TypeId =180 and cr.state = 10 then cr.id else null end) [ClientDepositByAgentCount]

				,sum(case when cr.TypeId =301 and cr.state = 10 then cr.amount else 0 end) [CorrectionUpAmount]
				,count(distinct case when cr.TypeId =301 and cr.state = 10 then cr.id else null end) [CorrectionUpCount]
				,sum(case when cr.TypeId =302 and cr.state = 10 then cr.amount else 0 end) [CorrectionDownAmount]
				,count(distinct case when cr.TypeId =302 and cr.state = 10 then cr.id else null end) [CorrectionDownCount]
				,sum(case when cr.TypeId =303 and cr.state = 10 then cr.amount else 0 end) [BonusCorrectionAmount]
				,count(distinct case when cr.TypeId =303 and cr.state = 10 then cr.id else null end) [BonusCorrectionCount]
				,sum(case when cr.TypeId =85 and cr.state = 10 then cr.amount else 0 end) [BonusCorrectionUpAmount]
				,count(distinct case when cr.TypeId =85 and cr.state = 10 then cr.id else null end) [BonusCorrectionUpCount]
				,sum(case when cr.TypeId =86 and cr.state = 10 then cr.amount else 0 end) [BonusCorrectionDownAmount]
				,count(distinct case when cr.TypeId =86 and cr.state = 10 then cr.id else null end) [BonusCorrectionDownCount]
				,sum(case when cr.TypeId =501 and cr.state = 10 then cr.amount else 0 end) [LoyaltyPointCorrectionUpAmount]
				,count(distinct case when cr.TypeId =501 and cr.state = 10 then cr.id else null end) [LoyaltyPointCorrectionUpCount]
				,sum(case when cr.TypeId =502 and cr.state = 10 then cr.amount else 0 end) [LoyaltyPointCorrectionDownAmount]
				,count(distinct case when cr.TypeId =502 and cr.state = 10 then cr.id else null end) [LoyaltyPointCorrectionDownCount]
				,sum(case when cr.TypeId =313 and cr.state = 10 then cr.amount else 0 end) [DepositCorrectionAmount]
				,count(distinct case when cr.TypeId =313 and cr.state = 10 then cr.id else null end) [DepositCorrectionCount]
				,sum(case when cr.TypeId =309 and cr.state = 10 then cr.amount else 0 end) [CashBackCorrectionAmount]
				,count(distinct case when cr.TypeId =309 and cr.state = 10 then cr.id else null end) [CashBackCorrectionCount]


				,0 [RealWalletBalanceEur]
				,0 [BonusWalletBalanceEur]
				,0 [SlotBonusWalletBalanceEur] 
				,0 [SportBonusWalletBalanceEur] 
				,sum(case when cr.TypeId in (3,7) and cr.state = 10 then cr.amountEur else 0 end) [DepositAmountEur]
				,sum(case when cr.TypeId =2 and cr.state = 10 then cr.amountEur else 0 end) [WithdrawalAmountEur]
				,sum(case when cr.TypeId =200 and cr.state = 10 then cr.amountEur else 0 end) RejectedDepositAmountEur
				,sum(case when cr.TypeId =8 and cr.state = 10 then cr.amountEur else 0 end) [RejectedWithdrawalAmountEur]
				,sum(case when cr.TypeId =6 and cr.state = 10 then cr.amountEur else 0 end)-sum(case when cr.TypeId in (3,7) and cr.state = 10 then cr.amountEur else 0 end)-sum(case when cr.TypeId =200 and cr.state = 10 then cr.amountEur else 0 end) PendingDepositAmountEur
				,sum(case when cr.TypeId =1 and cr.state = 10 then cr.amountEur else 0 end)-sum(case when cr.TypeId =2 and cr.state = 10 then cr.amountEur else 0 end)-sum(case when cr.TypeId =8 and cr.state = 10 then cr.amountEur else 0 end) [PendingWithdrawalAmountEur]
				,sum(case when cr.TypeId in (3,7) and cr.state = 10 then cr.amountEur else 0 end)-sum(case when cr.TypeId =2 and cr.state = 10 then cr.amountEur else 0 end) NetSpreadAmountEur
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
				,sum(case when cr.TypeId =95 and cr.state = 10 then cr.amountEur else 0 end) [JackpotAmountEur]
				,sum(case when cr.TypeId =50 and cr.state = 10 then cr.amountEur else 0 end) [LiveDealerTipAmountEur]

				,sum(case when cr.TypeId =81 and cr.state = 10 then cr.amountEur else 0 end) [BonusAmountEur]
				,0 [CasinoBonusAmountEur] 
				,0 [SportBonusAmountEur] 
				,sum(case when cr.TypeId =82 and cr.state = 10 then cr.amountEur else 0 end) [BonusCancelledAmountEur]
				,sum(case when cr.TypeId =83 and cr.state = 10 then cr.amountEur else 0 end) [BonusRedeemedAmountEur]
				,sum(case when cr.TypeId =84 and cr.state = 10 then cr.amountEur else 0 end) [CashbackBonusEur]
				,sum(case when cr.TypeId =87 and cr.state = 10 then cr.amountEur else 0 end) [CasinoCashbackBonusEur]
				,sum(case when cr.TypeId =504 and cr.state = 10 then cr.amountEur else 0 end) [LoyaltyPointRewardEur]
				,sum(case when cr.TypeId =80 and cr.state = 10 then cr.amountEur else 0 end) [PointExchangeEur]
				,sum(case when cr.TypeId =503 and cr.state = 10 then cr.amountEur else 0 end) [LoyaltyPointItemPurchaseEur]

				,sum(case when cr.TypeId =22 and cr.state = 10 then cr.amountEur else 0 end) [AgentToAgentTransferAmountEur]
				,sum(case when cr.TypeId =23 and cr.state = 10 then cr.amountEur else 0 end) [AgentToPlayerTransferAmountEur]
				,sum(case when cr.TypeId =150 and cr.state = 10 then cr.amountEur else 0 end) [AgentToClientCreditUpAmountEur]
				,sum(case when cr.TypeId =151 and cr.state = 10 then cr.amountEur else 0 end) [AgentToClientCreditDownAmountEur]
				,sum(case when cr.TypeId =152 and cr.state = 10 then cr.amountEur else 0 end) [AgentToAgentCreditUpAmountEur]
				,sum(case when cr.TypeId =153 and cr.state = 10 then cr.amountEur else 0 end) [AgentToAgentCreditDownAmountEur]
				,sum(case when cr.TypeId =154 and cr.state = 10 then cr.amountEur else 0 end) [AgentCreditIncreaseAmountEur]
				,sum(case when cr.TypeId =155 and cr.state = 10 then cr.amountEur else 0 end) [AgentCreditDecreaseAmountEur]
				,sum(case when cr.TypeId =156 and cr.state = 10 then cr.amountEur else 0 end) [AgentCorrectionAmountEur]
				,sum(case when cr.TypeId =157 and cr.state = 10 then cr.amountEur else 0 end) [AgentClientDepositAmountEur]
				,sum(case when cr.TypeId =158 and cr.state = 10 then cr.amountEur else 0 end) [AgentClientWithdrawAmountEur]
				,sum(case when cr.TypeId =180 and cr.state = 10 then cr.amountEur else 0 end) [ClientDepositByAgentAmountEur]

				,sum(case when cr.TypeId =301 and cr.state = 10 then cr.amountEur else 0 end) [CorrectionUpAmountEur]
				,sum(case when cr.TypeId =302 and cr.state = 10 then cr.amountEur else 0 end) [CorrectionDownAmountEur]
				,sum(case when cr.TypeId =303 and cr.state = 10 then cr.amountEur else 0 end) [BonusCorrectionAmountEur]
				,sum(case when cr.TypeId =85 and cr.state = 10 then cr.amountEur else 0 end) [BonusCorrectionUpAmountEur]
				,sum(case when cr.TypeId =86 and cr.state = 10 then cr.amountEur else 0 end) [BonusCorrectionDownAmountEur]
				,sum(case when cr.TypeId =501 and cr.state = 10 then cr.amountEur else 0 end) [LoyaltyPointCorrectionUpAmountEur]
				,sum(case when cr.TypeId =502 and cr.state = 10 then cr.amountEur else 0 end) [LoyaltyPointCorrectionDownAmountEur]
				,sum(case when cr.TypeId =313 and cr.state = 10 then cr.amountEur else 0 end) [DepositCorrectionAmountEur]
				,sum(case when cr.TypeId =309 and cr.state = 10 then cr.amountEur else 0 end) [CashBackCorrectionAmountEur]
			FROM [GoldblueUTC].[dbo].Document cr
			group by cr.ClientId,convert(date, cr.Created),cr.CurrencyId
		union all
			SELECT DISTINCT
				kpi.[ClientId]
				,kpi.Date
				,kpi.CurrencyId
				,0 [RealWalletBalance]
				,0 [BonusWalletBalance] 
				,0 [SlotBonusWalletBalance]  
				,0 [SportBonusWalletBalance] 
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
				,sum(kpi.[TotalBetAmount])	,sum(kpi.[TotalBetCount])	,sum(kpi.[TotalWinAmount])	,sum(kpi.[TotalWinCount])	,sum(kpi.[TotalGGRAmount])
				,sum(kpi.[CashBetAmount])	,sum(kpi.[CashBetCount])	,sum(kpi.[CashWinAmount])	,sum(kpi.[CashWinCount])	,sum(kpi.[CashGGRAmount])	
				,sum(kpi.[BonusBetAmount])	,sum(kpi.[BonusBetCount])	,sum(kpi.[BonusWinAmount])	,sum(kpi.[BonusWinCount])	,sum(kpi.[BonusGGRAmount]) 		
				,sum(case when kpi.Product='Slots' then kpi.[TotalBetAmount] else 0 end)
				,sum(case when kpi.Product='Slots' then kpi.[TotalBetCount] else 0 end)
				,sum(case when kpi.Product='Slots' then kpi.[TotalWinAmount] else 0 end)
				,sum(case when kpi.Product='Slots' then kpi.[TotalWinCount] else 0 end)
				,sum(case when kpi.Product='Slots' then kpi.[TotalGGRAmount] else 0 end)
				,sum(case when kpi.Product='Slots' then kpi.[CashBetAmount] else 0 end) 
				,sum(case when kpi.Product='Slots' then kpi.[CashBetCount] else 0 end) 
				,sum(case when kpi.Product='Slots' then kpi.[CashWinAmount] else 0 end) 
				,sum(case when kpi.Product='Slots' then kpi.[CashWinCount] else 0 end) 
				,sum(case when kpi.Product='Slots' then kpi.[CashGGRAmount] else 0 end)
				,sum(case when kpi.Product='Slots' then kpi.[BonusBetAmount] else 0 end) 
				,sum(case when kpi.Product='Slots' then kpi.[BonusBetCount] else 0 end) 
				,sum(case when kpi.Product='Slots' then kpi.[BonusWinAmount] else 0 end) 
				,sum(case when kpi.Product='Slots' then kpi.[BonusWinCount] else 0 end) 
				,sum(case when kpi.Product='Slots' then kpi.[BonusGGRAmount] else 0 end)
				,sum(case when kpi.ProductCategory = 'Casino' and kpi.Product!='Slots' then kpi.[TotalBetAmount] else 0 end)
				,sum(case when kpi.ProductCategory = 'Casino' and kpi.Product!='Slots' then kpi.[TotalBetCount] else 0 end)
				,sum(case when kpi.ProductCategory = 'Casino' and kpi.Product!='Slots' then kpi.[TotalWinAmount] else 0 end)
				,sum(case when kpi.ProductCategory = 'Casino' and kpi.Product!='Slots' then kpi.[TotalWinCount] else 0 end)
				,sum(case when kpi.ProductCategory = 'Casino' and kpi.Product!='Slots' then kpi.[TotalGGRAmount] else 0 end)
				,sum(case when kpi.ProductCategory = 'Casino' and kpi.Product!='Slots' then kpi.[CashBetAmount] else 0 end) 
				,sum(case when kpi.ProductCategory = 'Casino' and kpi.Product!='Slots' then kpi.[CashBetCount] else 0 end) 
				,sum(case when kpi.ProductCategory = 'Casino' and kpi.Product!='Slots' then kpi.[CashWinAmount] else 0 end) 
				,sum(case when kpi.ProductCategory = 'Casino' and kpi.Product!='Slots' then kpi.[CashWinCount] else 0 end) 
				,sum(case when kpi.ProductCategory = 'Casino' and kpi.Product!='Slots' then kpi.[CashGGRAmount] else 0 end)
				,sum(case when kpi.ProductCategory = 'Casino' and kpi.Product!='Slots' then kpi.[BonusBetAmount] else 0 end) 
				,sum(case when kpi.ProductCategory = 'Casino' and kpi.Product!='Slots' then kpi.[BonusBetCount] else 0 end) 
				,sum(case when kpi.ProductCategory = 'Casino' and kpi.Product!='Slots' then kpi.[BonusWinAmount] else 0 end) 
				,sum(case when kpi.ProductCategory = 'Casino' and kpi.Product!='Slots' then kpi.[BonusWinCount] else 0 end) 
				,sum(case when kpi.ProductCategory = 'Casino' and kpi.Product!='Slots' then kpi.[BonusGGRAmount] else 0 end)
				,sum(case when kpi.ProductCategory = 'Sportsbook' then kpi.[TotalBetAmount] else 0 end)
				,sum(case when kpi.ProductCategory = 'Sportsbook' then kpi.[TotalBetCount] else 0 end)
				,sum(case when kpi.ProductCategory = 'Sportsbook' then kpi.[TotalWinAmount] else 0 end)
				,sum(case when kpi.ProductCategory = 'Sportsbook' then kpi.[TotalWinCount] else 0 end)
				,sum(case when kpi.ProductCategory = 'Sportsbook' then kpi.[TotalGGRAmount] else 0 end)
				,sum(case when kpi.ProductCategory = 'Sportsbook' then kpi.[CashBetAmount] else 0 end) 
				,sum(case when kpi.ProductCategory = 'Sportsbook' then kpi.[CashBetCount] else 0 end) 
				,sum(case when kpi.ProductCategory = 'Sportsbook' then kpi.[CashWinAmount] else 0 end) 
				,sum(case when kpi.ProductCategory = 'Sportsbook' then kpi.[CashWinCount] else 0 end) 
				,sum(case when kpi.ProductCategory = 'Sportsbook' then kpi.[CashGGRAmount] else 0 end)
				,sum(case when kpi.ProductCategory = 'Sportsbook' then kpi.[BonusBetAmount] else 0 end) 
				,sum(case when kpi.ProductCategory = 'Sportsbook' then kpi.[BonusBetCount] else 0 end) 
				,sum(case when kpi.ProductCategory = 'Sportsbook' then kpi.[BonusWinAmount] else 0 end) 
				,sum(case when kpi.ProductCategory = 'Sportsbook' then kpi.[BonusWinCount] else 0 end) 
				,sum(case when kpi.ProductCategory = 'Sportsbook' then kpi.[BonusGGRAmount] else 0 end)
				,0 [JackpotAmount]
				,0 [JackpotCount]
				,0 [LiveDealerTipAmount]
				,0 [LiveDealerTipCount]

				,0 [BonusAmount]
				,0 [BonusCount]
				,0 [CasinoBonusAmount] 
				,0 [CasinoBonusCount] 
				,0 [SportBonusAmount] 
				,0 [SportBonusCount]
				,0 [BonusCancelledAmount]
				,0 [BonusCancelledCount]
				,0 [BonusRedeemedAmount]
				,0 [BonusRedeemedCount]
				,0 [CashbackBonus]
				,0 [CasinoCashbackBonus]
				,0 [LoyaltyPointReward]
				,0 [PointExchange]
				,0 [LoyaltyPointItemPurchase]

				,0 [AgentToAgentTransferAmount]
				,0 [AgentToAgentTransferCount]
				,0 [AgentToPlayerTransferAmount]
				,0 [AgentToPlayerTransferCount]
				,0 [AgentToClientCreditUpAmount]
				,0 [AgentToClientCreditUpCount]
				,0 [AgentToClientCreditDownAmount]
				,0 [AgentToClientCreditDownCount]
				,0 [AgentToAgentCreditUpAmount]
				,0 [AgentToAgentCreditUpCount]
				,0 [AgentToAgentCreditDownAmount]
				,0 [AgentToAgentCreditDownCount]
				,0 [AgentCreditIncreaseAmount]
				,0 [AgentCreditIncreaseCount]
				,0 [AgentCreditDecreaseAmount]
				,0 [AgentCreditDecreaseCount]
				,0 [AgentCorrectionAmount]
				,0 [AgentCorrectionCount]
				,0 [AgentClientDepositAmount]
				,0 [AgentClientDepositCount]
				,0 [AgentClientWithdrawAmount]
				,0 [AgentClientWithdrawCount]
				,0 [ClientDepositByAgentAmount]
				,0 [ClientDepositByAgentCount]

				,0 [CorrectionUpAmount]
				,0 [CorrectionUpCount]
				,0 [CorrectionDownAmount]
				,0 [CorrectionDownCount]
				,0 [BonusCorrectionAmount]
				,0 [BonusCorrectionCount]
				,0 [BonusCorrectionUpAmount]
				,0 [BonusCorrectionUpCount]
				,0 [BonusCorrectionDownAmount]
				,0 [BonusCorrectionDownCount]
				,0 [LoyaltyPointCorrectionUpAmount]
				,0 [LoyaltyPointCorrectionUpCount]
				,0 [LoyaltyPointCorrectionDownAmount]
				,0 [LoyaltyPointCorrectionDownCount]
				,0 [DepositCorrectionAmount]
				,0 [DepositCorrectionCount]
				,0 [CashBackCorrectionAmount]
				,0 [CashBackCorrectionCount]

				,0 [RealWalletBalanceEur]
				,0 [BonusWalletBalanceEur]
				,0 [SlotBonusWalletBalanceEur] 
				,0 [SportBonusWalletBalanceEur] 
				,0 [DepositAmountEur]
				,0 [WithdrawalAmountEur]
				,0 [RejectedDepositAmountEur]
				,0 [RejectedWithdrawalAmountEur]
				,0 [PendingDepositAmountEur]
				,0 [PendingWithdrawalAmountEur]
				,0 [NetSpreadAmountEur]
				,sum(kpi.[TotalBetAmountEur])		,sum(kpi.[TotalWinAmountEur])		,sum(kpi.[TotalGGRAmountEur])
				,sum(kpi.[CashBetAmountEur])		,sum(kpi.[CashWinAmountEur])	,sum(kpi.[CashGGRAmountEur])	
				,sum(kpi.[BonusBetAmountEur])		,sum(kpi.[BonusWinAmountEur])		,sum(kpi.[BonusGGRAmountEur]) 
		
				,sum(case when kpi.Product='Slots' then kpi.[TotalBetAmountEur] else 0 end)
				,sum(case when kpi.Product='Slots' then kpi.[TotalWinAmountEur] else 0 end)
				,sum(case when kpi.Product='Slots' then kpi.[TotalGGRAmountEur] else 0 end)
				,sum(case when kpi.Product='Slots' then kpi.[CashBetAmountEur] else 0 end) 
				,sum(case when kpi.Product='Slots' then kpi.[CashWinAmountEur] else 0 end) 
				,sum(case when kpi.Product='Slots' then kpi.[CashGGRAmountEur] else 0 end)
				,sum(case when kpi.Product='Slots' then kpi.[BonusBetAmountEur] else 0 end) 
				,sum(case when kpi.Product='Slots' then kpi.[BonusWinAmountEur] else 0 end) 
				,sum(case when kpi.Product='Slots' then kpi.[BonusGGRAmountEur] else 0 end)

				,sum(case when kpi.ProductCategory = 'Casino' and kpi.Product!='Slots' then kpi.[TotalBetAmountEur] else 0 end)
				,sum(case when kpi.ProductCategory = 'Casino' and kpi.Product!='Slots' then kpi.[TotalWinAmountEur] else 0 end)
				,sum(case when kpi.ProductCategory = 'Casino' and kpi.Product!='Slots' then kpi.[TotalGGRAmountEur] else 0 end)
				,sum(case when kpi.ProductCategory = 'Casino' and kpi.Product!='Slots' then kpi.[CashBetAmountEur] else 0 end) 
				,sum(case when kpi.ProductCategory = 'Casino' and kpi.Product!='Slots' then kpi.[CashWinAmountEur] else 0 end) 
				,sum(case when kpi.ProductCategory = 'Casino' and kpi.Product!='Slots' then kpi.[CashGGRAmountEur] else 0 end)
				,sum(case when kpi.ProductCategory = 'Casino' and kpi.Product!='Slots' then kpi.[BonusBetAmountEur] else 0 end) 
				,sum(case when kpi.ProductCategory = 'Casino' and kpi.Product!='Slots' then kpi.[BonusWinAmountEur] else 0 end) 
				,sum(case when kpi.ProductCategory = 'Casino' and kpi.Product!='Slots' then kpi.[BonusGGRAmountEur] else 0 end)

				,sum(case when kpi.ProductCategory = 'Sportsbook' then kpi.[TotalBetAmountEur] else 0 end)
				,sum(case when kpi.ProductCategory = 'Sportsbook' then kpi.[TotalWinAmountEur] else 0 end)
				,sum(case when kpi.ProductCategory = 'Sportsbook' then kpi.[TotalGGRAmountEur] else 0 end)
				,sum(case when kpi.ProductCategory = 'Sportsbook' then kpi.[CashBetAmountEur] else 0 end) 
				,sum(case when kpi.ProductCategory = 'Sportsbook' then kpi.[CashWinAmountEur] else 0 end) 
				,sum(case when kpi.ProductCategory = 'Sportsbook' then kpi.[CashGGRAmountEur] else 0 end)
				,sum(case when kpi.ProductCategory = 'Sportsbook' then kpi.[BonusBetAmountEur] else 0 end) 
				,sum(case when kpi.ProductCategory = 'Sportsbook' then kpi.[BonusWinAmountEur] else 0 end) 
				,sum(case when kpi.ProductCategory = 'Sportsbook' then kpi.[BonusGGRAmountEur] else 0 end)
				,0 [JackpotAmountEur]
				,0 [LiveDealerTipAmountEur]

				,0 [BonusAmountEur]
				,0 [CasinoBonusAmountEur] 
				,0 [SportBonusAmountEur] 
				,0 [BonusCancelledAmountEur]
				,0 [BonusRedeemedAmountEur]
				,0 [CashbackBonusEur]
				,0 [CasinoCashbackBonusEur]
				,0 [LoyaltyPointRewardEur]
				,0 [PointExchangeEur]
				,0 [LoyaltyPointItemPurchaseEur]

				,0 [AgentToAgentTransferAmountEur]
				,0 [AgentToPlayerTransferAmountEur]
				,0 [AgentToClientCreditUpAmountEur]
				,0 [AgentToClientCreditDownAmountEur]
				,0 [AgentToAgentCreditUpAmountEur]
				,0 [AgentToAgentCreditDownAmountEur]
				,0 [AgentCreditIncreaseAmountEur]
				,0 [AgentCreditDecreaseAmountEur]
				,0 [AgentCorrectionAmountEur]
				,0 [AgentClientDepositAmountEur]
				,0 [AgentClientWithdrawAmountEur]
				,0 [ClientDepositByAgentAmountEur]

				,0 [CorrectionUpAmountEur]
				,0 [CorrectionDownAmountEur]
				,0 [BonusCorrectionAmountEur]
				,0 [BonusCorrectionUpAmountEur]
				,0 [BonusCorrectionDownAmountEur]
				,0 [LoyaltyPointCorrectionUpAmountEur]
				,0 [LoyaltyPointCorrectionDownAmountEur]
				,0 [DepositCorrectionAmountEur]
				,0 [CashBackCorrectionAmountEur]
			FROM [GoldblueUTC].[dbo].ClientGameKPI kpi
			group by kpi.Date,kpi.Clientid,kpi.CurrencyId
	union all
			SELECT DISTINCT
			a.ObjectId [ClientId]
			,convert(date,a.[BalanceDate]) [Date]
			,a.CurrencyId
			,sum(case when a.BalanceTypeId=5211 then a.[BalanceAmount] else 0 end) RealWalletBalance
			,sum(case when a.BalanceTypeId=8124 then a.[BalanceAmount] else 0 end)+sum(case when a.BalanceTypeId=8154 then a.[BalanceAmount] else 0 end) [BonusWalletBalance] 
			,sum(case when a.BalanceTypeId=8124 then a.[BalanceAmount] else 0 end) CasinoBonusWalletBalance
			,sum(case when a.BalanceTypeId=8154 then a.[BalanceAmount] else 0 end) SportBonusWalletBalance
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
			,0 [JackpotAmount]
			,0 [JackpotCount]
			,0 [LiveDealerTipAmount]
			,0 [LiveDealerTipCount]

			,0 [BonusAmount]
			,0 [BonusCount]
			,0 [CasinoBonusAmount] 
			,0 [CasinoBonusCount] 
			,0 [SportBonusAmount] 
			,0 [SportBonusCount]
			,0 [BonusCancelledAmount]
			,0 [BonusCancelledCount]
			,0 [BonusRedeemedAmount]
			,0 [BonusRedeemedCount]
			,0 [CashbackBonus]
			,0 [CasinoCashbackBonus]
			,0 [LoyaltyPointReward]
			,0 [PointExchange]
			,0 [LoyaltyPointItemPurchase]

			,0 [AgentToAgentTransferAmount]
			,0 [AgentToAgentTransferCount]
			,0 [AgentToPlayerTransferAmount]
			,0 [AgentToPlayerTransferCount]
			,0 [AgentToClientCreditUpAmount]
			,0 [AgentToClientCreditUpCount]
			,0 [AgentToClientCreditDownAmount]
			,0 [AgentToClientCreditDownCount]
			,0 [AgentToAgentCreditUpAmount]
			,0 [AgentToAgentCreditUpCount]
			,0 [AgentToAgentCreditDownAmount]
			,0 [AgentToAgentCreditDownCount]
			,0 [AgentCreditIncreaseAmount]
			,0 [AgentCreditIncreaseCount]
			,0 [AgentCreditDecreaseAmount]
			,0 [AgentCreditDecreaseCount]
			,0 [AgentCorrectionAmount]
			,0 [AgentCorrectionCount]
			,0 [AgentClientDepositAmount]
			,0 [AgentClientDepositCount]
			,0 [AgentClientWithdrawAmount]
			,0 [AgentClientWithdrawCount]
			,0 [ClientDepositByAgentAmount]
			,0 [ClientDepositByAgentCount]

			,0 [CorrectionUpAmount]
			,0 [CorrectionUpCount]
			,0 [CorrectionDownAmount]
			,0 [CorrectionDownCount]
			,0 [BonusCorrectionAmount]
			,0 [BonusCorrectionCount]
			,0 [BonusCorrectionUpAmount]
			,0 [BonusCorrectionUpCount]
			,0 [BonusCorrectionDownAmount]
			,0 [BonusCorrectionDownCount]
			,0 [LoyaltyPointCorrectionUpAmount]
			,0 [LoyaltyPointCorrectionUpCount]
			,0 [LoyaltyPointCorrectionDownAmount]
			,0 [LoyaltyPointCorrectionDownCount]
			,0 [DepositCorrectionAmount]
			,0 [DepositCorrectionCount]
			,0 [CashBackCorrectionAmount]
			,0 [CashBackCorrectionCount]

			,sum(case when a.BalanceTypeId=5211 then a.[BalanceAmountEur] else 0 end) RealWalletBalance
			,sum(case when a.BalanceTypeId=8124 then a.[BalanceAmountEur] else 0 end)+sum(case when a.BalanceTypeId=8154 then a.[BalanceAmount] else 0 end) [BonusWalletBalance] 
			,sum(case when a.BalanceTypeId=8124 then a.[BalanceAmountEur] else 0 end) CasinoBonusWalletBalance
			,sum(case when a.BalanceTypeId=8154 then a.[BalanceAmountEur] else 0 end) SportBonusWalletBalance
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
			,0 [JackpotAmountEur]
			,0 [LiveDealerTipAmountEur]

			,0 [BonusAmountEur]
			,0 [CasinoBonusAmountEur] 
			,0 [SportBonusAmountEur] 
			,0 [BonusCancelledAmountEur]
			,0 [BonusRedeemedAmountEur]
			,0 [CashbackBonusEur]
			,0 [CasinoCashbackBonusEur]
			,0 [LoyaltyPointRewardEur]
			,0 [PointExchangeEur]
			,0 [LoyaltyPointItemPurchaseEur]

			,0 [AgentToAgentTransferAmountEur]
			,0 [AgentToPlayerTransferAmountEur]
			,0 [AgentToClientCreditUpAmountEur]
			,0 [AgentToClientCreditDownAmountEur]
			,0 [AgentToAgentCreditUpAmountEur]
			,0 [AgentToAgentCreditDownAmountEur]
			,0 [AgentCreditIncreaseAmountEur]
			,0 [AgentCreditDecreaseAmountEur]
			,0 [AgentCorrectionAmountEur]
			,0 [AgentClientDepositAmountEur]
			,0 [AgentClientWithdrawAmountEur]
			,0 [ClientDepositByAgentAmountEur]

			,0 [CorrectionUpAmountEur]
			,0 [CorrectionDownAmountEur]
			,0 [BonusCorrectionAmountEur]
			,0 [BonusCorrectionUpAmountEur]
			,0 [BonusCorrectionDownAmountEur]
			,0 [LoyaltyPointCorrectionUpAmountEur]
			,0 [LoyaltyPointCorrectionDownAmountEur]
			,0 [DepositCorrectionAmountEur]
			,0 [CashBackCorrectionAmountEur]
		FROM [GoldblueUTC].[dbo].[Balance] a
		group by 
			ObjectId 
			,convert(date,[BalanceDate]) 
			,[CurrencyId]



) a
	left join [GoldblueUTC].[dbo].Client cl on a.clientid = cl.id
	join [GoldblueUTC].[dbo].Region reg on cl.RegionId = reg.Id 
where cl.istest = 0
group by a.[ClientId],a.[date],a.CurrencyId,reg.Alpha2Code