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
	[ClientId] [int] NOT NULL
	,[UserName] [varchar](255) NOT NULL
	,[Date] [date]  NULL
	,[CurrencyId] [char](3) NOT NULL
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
	,[ApportionCostAmount]  [decimal] (18,2) NOT NULL 
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
	,[OtherTotalBetAmountEur] [decimal] (18,2) NOT NULL
	,[OtherTotalWinAmountEur] [decimal] (18,2) NOT NULL
	,[OtherTotalGGRAmountEur] [decimal] (18,2) NOT NULL
	,[OtherCashBetAmountEur] [decimal] (18,2) NOT NULL 
	,[OtherCashWinAmountEur] [decimal] (18,2) NOT NULL 
	,[OtherCashGGRAmountEur] [decimal] (18,2) NOT NULL
	,[OtherBonusBetAmountEur] [decimal] (18,2) NOT NULL 
	,[OtherBonusWinAmountEur] [decimal] (18,2) NOT NULL 
	,[OtherBonusGGRAmountEur] [decimal] (18,2) NOT NULL
	,[JackpotAmountEur] [decimal] (18,2) NOT NULL
	,[LiveDealerTipAmountEur] [decimal] (18,2) NOT NULL
	,[BonusAmountEur] [decimal] (18,2) NOT NULL
	,[CasinoBonusAmountEur] [decimal] (18,2) NOT NULL 
	,[SportBonusAmountEur] [decimal] (18,2) NOT NULL 
	,[BonusCancelledAmountEur] [decimal] (18,2) NOT NULL
	,[BonusRedeemedAmountEur] [decimal] (18,2) NOT NULL
	,[ApportionCostAmountEur]  [decimal] (18,2) NOT NULL 
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
	,[Modified] [datetime] NOT NULL
	)

-- CONSTRAINT [PK_ClientKPIHistorical] PRIMARY KEY CLUSTERED 
--(
--	[ClientId] ASC,
--	[Date] DESC,
--	[CurrencyId] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]
GO

delete from [GoldblueUTC].[dbo].[ClientKPIHistorical] where [Date]>= DATEADD(DAY,-2,GETDATE());

insert into goldblueutc.dbo.[ClientKPIHistorical]
select distinct 
	[ClientId]
	,[UserName]
	,[Date]
	,[CurrencyId]
	,[Country]
	,sum([Balance])
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

	,sum([TotalBetAmount])
	,sum([TotalBetCount])
	,sum([TotalWinAmount])
	,sum([TotalWinCount])
	,sum([TotalGGRAmount])
	,sum([CashBetAmount])
	,sum([CashBetCount])
	,sum([CashWinAmount])
	,sum([CashWinCount])
	,sum([CashGGRAmount])
	,sum([BonusBetAmount])
	,sum([BonusBetCount])
	,sum([BonusWinAmount])
	,sum([BonusWinCount])
	,sum([BonusGGRAmount])
	,sum([SlotsTotalBetAmount])  
	,sum([SlotsTotalBetCount])
	,sum([SlotsTotalWinAmount])  
	,sum([SlotsTotalWinCount])
	,sum([SlotsTotalGGRAmount])  
	,sum([SlotsCashBetAmount])  
	,sum([SlotsCashBetCount])
	,sum([SlotsCashWinAmount])  
	,sum([SlotsCashWinCount])
	,sum([SlotsCashGGRAmount]) 
	,sum([SlotsBonusBetAmount])  
	,sum([SlotsBonusBetCount])
	,sum([SlotsBonusWinAmount])  
	,sum([SlotsBonusWinCount])
	,sum([SlotsBonusGGRAmount]) 
	,sum([LiveTotalBetAmount]) 
	,sum([LiveTotalBetCount])
	,sum([LiveTotalWinAmount]) 
	,sum([LiveTotalWinCount])
	,sum([LiveTotalGGRAmount]) 
	,sum([LiveCashBetAmount])  
	,sum([LiveCashBetCount])
	,sum([LiveCashWinAmount])  
	,sum([LiveCashWinCount])
	,sum([LiveCashGGRAmount]) 
	,sum([LiveBonusBetAmount])  
	,sum([LiveBonusBetCount])
	,sum([LiveBonusWinAmount])  
	,sum([LiveBonusWinCount])
	,sum([LiveBonusGGRAmount]) 
	,sum([SportTotalBetAmount]) 
	,sum([SportTotalBetCount])
	,sum([SportTotalWinAmount]) 
	,sum([SportTotalWinCount])
	,sum([SportTotalGGRAmount]) 
	,sum([SportCashBetAmount])  
	,sum([SportCashBetCount])
	,sum([SportCashWinAmount])  
	,sum([SportCashWinCount])
	,sum([SportCashGGRAmount]) 
	,sum([SportBonusBetAmount])  
	,sum([SportBonusBetCount])
	,sum([SportBonusWinAmount])  
	,sum([SportBonusWinCount])
	,sum([SportBonusGGRAmount]) 
	,sum([OtherTotalBetAmount]) 
	,sum([OtherTotalBetCount])
	,sum([OtherTotalWinAmount]) 
	,sum([OtherTotalWinCount])
	,sum([OtherTotalGGRAmount]) 
	,sum([OtherCashBetAmount])  
	,sum([OtherCashBetCount])
	,sum([OtherCashWinAmount])  
	,sum([OtherCashWinCount])
	,sum([OtherCashGGRAmount]) 
	,sum([OtherBonusBetAmount])  
	,sum([OtherBonusBetCount])
	,sum([OtherBonusWinAmount])  
	,sum([OtherBonusWinCount])
	,sum([OtherBonusGGRAmount]) 
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
	,sum([ApportionCostAmount])
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

	,sum([BalanceEur])
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
	,sum([TotalBetAmountEur])
	,sum([TotalWinAmountEur])
	,sum([TotalGGRAmountEur])
	,sum([CashBetAmountEur])
	,sum([CashWinAmountEur])
	,sum([CashGGRAmountEur])
	,sum([BonusBetAmountEur])
	,sum([BonusWinAmountEur])
	,sum([BonusGGRAmountEur])
	,sum([SlotsTotalBetAmountEur])  
	,sum([SlotsTotalWinAmountEur])  
	,sum([SlotsTotalGGRAmountEur])  
	,sum([SlotsCashBetAmountEur])  
	,sum([SlotsCashWinAmountEur])  
	,sum([SlotsCashGGRAmountEur]) 
	,sum([SlotsBonusBetAmountEur])  
	,sum([SlotsBonusWinAmountEur])  
	,sum([SlotsBonusGGRAmountEur]) 
	,sum([LiveTotalBetAmountEur]) 
	,sum([LiveTotalWinAmountEur]) 
	,sum([LiveTotalGGRAmountEur]) 
	,sum([LiveCashBetAmountEur])  
	,sum([LiveCashWinAmountEur])  
	,sum([LiveCashGGRAmountEur]) 
	,sum([LiveBonusBetAmountEur])  
	,sum([LiveBonusWinAmountEur])  
	,sum([LiveBonusGGRAmountEur]) 
	,sum([SportTotalBetAmountEur]) 
	,sum([SportTotalWinAmountEur]) 
	,sum([SportTotalGGRAmountEur]) 
	,sum([SportCashBetAmountEur])  
	,sum([SportCashWinAmountEur])  
	,sum([SportCashGGRAmountEur]) 
	,sum([SportBonusBetAmountEur])  
	,sum([SportBonusWinAmountEur])  
	,sum([SportBonusGGRAmountEur]) 
	,sum([OtherTotalBetAmountEur]) 
	,sum([OtherTotalWinAmountEur]) 
	,sum([OtherTotalGGRAmountEur]) 
	,sum([OtherCashBetAmountEur])  
	,sum([OtherCashWinAmountEur])  
	,sum([OtherCashGGRAmountEur]) 
	,sum([OtherBonusBetAmountEur])  
	,sum([OtherBonusWinAmountEur])  
	,sum([OtherBonusGGRAmountEur]) 
	,sum([JackpotAmountEur])
	,sum([LiveDealerTipAmountEur])
	,sum([BonusAmountEur])
	,sum([CasinoBonusAmountEur]) 
	,sum([SportBonusAmountEur]) 
	,sum([BonusCancelledAmountEur])
	,sum([BonusRedeemedAmountEur])
	,sum([ApportionCostAmountEur])
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
	,SYSDATETIME()

from (
			select distinct
				a.user_id Clientid
				,b.user_name [UserName]
				,convert(date, a.bonus_time) [date]
				,b.user_currency [CurrencyId]
				,a.country
				,0 [Balance]
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

				,0 [TotalBetAmount]
				,0 [TotalBetCount]
				,0 [TotalWinAmount]
				,0 [TotalWinCount]
				,0 [TotalGGRAmount]
				,0 [CashBetAmount]
				,0 [CashBetCount]
				,0 [CashWinAmount]
				,0 [CashWinCount]
				,0 [CashGGRAmount]
				,0 [BonusBetAmount]
				,0 [BonusBetCount]
				,0 [BonusWinAmount]
				,0 [BonusWinCount]
				,0 [BonusGGRAmount]
				,0 [SlotsTotalBetAmount]  
				,0 [SlotsTotalBetCount]
				,0 [SlotsTotalWinAmount]  
				,0 [SlotsTotalWinCount]
				,0 [SlotsTotalGGRAmount]  
				,0 [SlotsCashBetAmount]  
				,0 [SlotsCashBetCount]
				,0 [SlotsCashWinAmount]  
				,0 [SlotsCashWinCount]
				,0 [SlotsCashGGRAmount] 
				,0 [SlotsBonusBetAmount]  
				,0 [SlotsBonusBetCount]
				,0 [SlotsBonusWinAmount]  
				,0 [SlotsBonusWinCount]
				,0 [SlotsBonusGGRAmount] 
				,0 [LiveTotalBetAmount] 
				,0 [LiveTotalBetCount]
				,0 [LiveTotalWinAmount] 
				,0 [LiveTotalWinCount]
				,0 [LiveTotalGGRAmount] 
				,0 [LiveCashBetAmount]  
				,0 [LiveCashBetCount]
				,0 [LiveCashWinAmount]  
				,0 [LiveCashWinCount]
				,0 [LiveCashGGRAmount] 
				,0 [LiveBonusBetAmount]  
				,0 [LiveBonusBetCount]
				,0 [LiveBonusWinAmount]  
				,0 [LiveBonusWinCount]
				,0 [LiveBonusGGRAmount] 
				,0 [SportTotalBetAmount] 
				,0 [SportTotalBetCount]
				,0 [SportTotalWinAmount] 
				,0 [SportTotalWinCount]
				,0 [SportTotalGGRAmount] 
				,0 [SportCashBetAmount]  
				,0 [SportCashBetCount]
				,0 [SportCashWinAmount]  
				,0 [SportCashWinCount]
				,0 [SportCashGGRAmount] 
				,0 [SportBonusBetAmount]  
				,0 [SportBonusBetCount]
				,0 [SportBonusWinAmount]  
				,0 [SportBonusWinCount]
				,0 [SportBonusGGRAmount] 
				,0 [OtherTotalBetAmount] 
				,0 [OtherTotalBetCount]
				,0 [OtherTotalWinAmount] 
				,0 [OtherTotalWinCount]
				,0 [OtherTotalGGRAmount] 
				,0 [OtherCashBetAmount]  
				,0 [OtherCashBetCount]
				,0 [OtherCashWinAmount]  
				,0 [OtherCashWinCount]
				,0 [OtherCashGGRAmount] 
				,0 [OtherBonusBetAmount]  
				,0 [OtherBonusBetCount]
				,0 [OtherBonusWinAmount]  
				,0 [OtherBonusWinCount]
				,0 [OtherBonusGGRAmount] 
				,0 [JackpotAmount]
				,0 [JackpotCount] 
				,0 [LiveDealerTipAmount]
				,0 [LiveDealerTipCount]
				,sum(a.Net_Bonus_AmountLocal) [BonusAmount]
				,count(distinct a.src_tran_id) [BonusCount]
				,sum(case when a.product in ('SL','LC') then a.Net_Bonus_AmountLocal else 0 end) [CasinoBonusAmount] 
				,COUNT(case when a.product in ('SL','LC') then a.src_tran_id else null end) [CasinoBonusCount] 
				,sum(case when a.product in ('VS','SB') then a.Net_Bonus_AmountLocal else 0 end) [SportBonusAmount] 
				,COUNT(case when a.product in ('VS','SB') then a.src_tran_id else null end) [SportBonusCount]
				,0 [BonusCancelledAmount]
				,0 [BonusCancelledCount]
				,sum(case when a.redeemed =1 then a.Redeemed_amountlocal else 0 end) [BonusRedeemedAmount]
				,count(case when a.redeemed =1 then a.src_tran_id else null end) [BonusRedeemedCount]
				,sum(case when a.redeemed =1 then a.apportion_costlocal else 0 end) [ApportionCostAmount]
				,sum(case when a.high_level_Category = 'Cashback' then a.Net_Bonus_AmountLocal else 0 end)  [CashbackBonus]
				,0 [CasinoCashbackBonus]
				,0 [LoyaltyPointReward]
				,0 [PointExchange]
				,sum(case when a.high_level_Category = 'Rebate' then a.Net_Bonus_AmountLocal else 0 end) [LoyaltyPointItemPurchase]
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

				,0 [BalanceEur]
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
				,0 [TotalBetAmountEur]
				,0 [TotalWinAmountEur]
				,0 [TotalGGRAmountEur]
				,0 [CashBetAmountEur]
				,0 [CashWinAmountEur]
				,0 [CashGGRAmountEur]
				,0 [BonusBetAmountEur]
				,0 [BonusWinAmountEur]
				,0 [BonusGGRAmountEur]
				,0 [SlotsTotalBetAmountEur]  
				,0 [SlotsTotalWinAmountEur]  
				,0 [SlotsTotalGGRAmountEur]  
				,0 [SlotsCashBetAmountEur]  
				,0 [SlotsCashWinAmountEur]  
				,0 [SlotsCashGGRAmountEur] 
				,0 [SlotsBonusBetAmountEur]  
				,0 [SlotsBonusWinAmountEur]  
				,0 [SlotsBonusGGRAmountEur] 
				,0 [LiveTotalBetAmountEur] 
				,0 [LiveTotalWinAmountEur] 
				,0 [LiveTotalGGRAmountEur] 
				,0 [LiveCashBetAmountEur]  
				,0 [LiveCashWinAmountEur]  
				,0 [LiveCashGGRAmountEur] 
				,0 [LiveBonusBetAmountEur]  
				,0 [LiveBonusWinAmountEur]  
				,0 [LiveBonusGGRAmountEur] 
				,0 [SportTotalBetAmountEur] 
				,0 [SportTotalWinAmountEur] 
				,0 [SportTotalGGRAmountEur] 
				,0 [SportCashBetAmountEur]  
				,0 [SportCashWinAmountEur]  
				,0 [SportCashGGRAmountEur] 
				,0 [SportBonusBetAmountEur]  
				,0 [SportBonusWinAmountEur]  
				,0 [SportBonusGGRAmountEur] 
				,0 [OtherTotalBetAmountEur] 
				,0 [OtherTotalWinAmountEur] 
				,0 [OtherTotalGGRAmountEur] 
				,0 [OtherCashBetAmountEur]  
				,0 [OtherCashWinAmountEur]  
				,0 [OtherCashGGRAmountEur] 
				,0 [OtherBonusBetAmountEur]  
				,0 [OtherBonusWinAmountEur]  
				,0 [OtherBonusGGRAmountEur] 
				,0 [JackpotAmountEur]
				,0 [LiveDealerTipAmountEur]
				,sum(a.Net_Bonus_Amount) [BonusAmountEur]
				,sum(case when a.product in ('SL','LC') then a.Net_Bonus_Amount else 0 end) [CasinoBonusAmountEur] 
				,sum(case when a.product in ('VS','SB') then a.Net_Bonus_Amount else 0 end) [SportBonusAmountEur] 
				,0 [BonusCancelledAmountEur]
				,sum(case when a.redeemed =1 then a.Redeemed_amount else 0 end) [BonusRedeemedAmountEur]
				,sum(case when a.redeemed =1 then a.apportion_cost else 0 end) [ApportionCostAmountEur]
				,sum(case when a.high_level_Category = 'Cashback' then a.Net_Bonus_Amount else 0 end) [CashbackBonusEur]
				,0 [CasinoCashbackBonusEur]
				,0 [LoyaltyPointRewardEur]
				,0 [PointExchangeEur]
				,sum(case when a.high_level_Category = 'Rebate' then a.Net_Bonus_Amount else 0 end) [LoyaltyPointItemPurchaseEur]
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
			FROM [dw].[dbo].bonus_transacted a
				join dw_prod.dbo.dw_user_header_dm b on a.user_id =  b.user_id
			WHERE a.[bonus_date]>= DATEADD(DAY,-2,GETDATE())
			group by a.user_id, b.user_name,convert(date, a.bonus_time) ,b.user_currency,a.country
		union all
			select distinct
				[ClientId]
				,[UserName]
				,[Date]
				,[CurrencyId]
				,[Country]
				,0 [Balance]
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

				,sum([TotalBetAmount])
				,sum([TotalBetCount])
				,sum([TotalWinAmount])
				,sum([TotalWinCount])
				,sum([TotalGGRAmount])
				,sum([CashBetAmount])
				,sum([CashBetCount])
				,sum([CashWinAmount])
				,sum([CashWinCount])
				,sum([CashGGRAmount])
				,sum([BonusBetAmount])
				,sum([BonusBetCount])
				,sum([BonusWinAmount])
				,sum([BonusWinCount])
				,sum([BonusGGRAmount])
				,sum([SlotsTotalBetAmount])  
				,sum([SlotsTotalBetCount])
				,sum([SlotsTotalWinAmount])  
				,sum([SlotsTotalWinCount])
				,sum([SlotsTotalGGRAmount])  
				,sum([SlotsCashBetAmount])  
				,sum([SlotsCashBetCount])
				,sum([SlotsCashWinAmount])  
				,sum([SlotsCashWinCount])
				,sum([SlotsCashGGRAmount]) 
				,sum([SlotsBonusBetAmount])  
				,sum([SlotsBonusBetCount])
				,sum([SlotsBonusWinAmount])  
				,sum([SlotsBonusWinCount])
				,sum([SlotsBonusGGRAmount]) 
				,sum([LiveTotalBetAmount]) 
				,sum([LiveTotalBetCount])
				,sum([LiveTotalWinAmount]) 
				,sum([LiveTotalWinCount])
				,sum([LiveTotalGGRAmount]) 
				,sum([LiveCashBetAmount])  
				,sum([LiveCashBetCount])
				,sum([LiveCashWinAmount])  
				,sum([LiveCashWinCount])
				,sum([LiveCashGGRAmount]) 
				,sum([LiveBonusBetAmount])  
				,sum([LiveBonusBetCount])
				,sum([LiveBonusWinAmount])  
				,sum([LiveBonusWinCount])
				,sum([LiveBonusGGRAmount]) 
				,sum([SportTotalBetAmount]) 
				,sum([SportTotalBetCount])
				,sum([SportTotalWinAmount]) 
				,sum([SportTotalWinCount])
				,sum([SportTotalGGRAmount]) 
				,sum([SportCashBetAmount])  
				,sum([SportCashBetCount])
				,sum([SportCashWinAmount])  
				,sum([SportCashWinCount])
				,sum([SportCashGGRAmount]) 
				,sum([SportBonusBetAmount])  
				,sum([SportBonusBetCount])
				,sum([SportBonusWinAmount])  
				,sum([SportBonusWinCount])
				,sum([SportBonusGGRAmount]) 
				,sum([OtherTotalBetAmount]) 
				,sum([OtherTotalBetCount])
				,sum([OtherTotalWinAmount]) 
				,sum([OtherTotalWinCount])
				,sum([OtherTotalGGRAmount]) 
				,sum([OtherCashBetAmount])  
				,sum([OtherCashBetCount])
				,sum([OtherCashWinAmount])  
				,sum([OtherCashWinCount])
				,sum([OtherCashGGRAmount]) 
				,sum([OtherBonusBetAmount])  
				,sum([OtherBonusBetCount])
				,sum([OtherBonusWinAmount])  
				,sum([OtherBonusWinCount])
				,sum([OtherBonusGGRAmount]) 
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
				,0 [ApportionCostAmount]
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

				,0 [BalanceEur]
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
				,sum([TotalBetAmountEur])
				,sum([TotalWinAmountEur])
				,sum([TotalGGRAmountEur])
				,sum([CashBetAmountEur])
				,sum([CashWinAmountEur])
				,sum([CashGGRAmountEur])
				,sum([BonusBetAmountEur])
				,sum([BonusWinAmountEur])
				,sum([BonusGGRAmountEur])
				,sum([SlotsTotalBetAmountEur])  
				,sum([SlotsTotalWinAmountEur])  
				,sum([SlotsTotalGGRAmountEur])  
				,sum([SlotsCashBetAmountEur])  
				,sum([SlotsCashWinAmountEur])  
				,sum([SlotsCashGGRAmountEur]) 
				,sum([SlotsBonusBetAmountEur])  
				,sum([SlotsBonusWinAmountEur])  
				,sum([SlotsBonusGGRAmountEur]) 
				,sum([LiveTotalBetAmountEur]) 
				,sum([LiveTotalWinAmountEur]) 
				,sum([LiveTotalGGRAmountEur]) 
				,sum([LiveCashBetAmountEur])  
				,sum([LiveCashWinAmountEur])  
				,sum([LiveCashGGRAmountEur]) 
				,sum([LiveBonusBetAmountEur])  
				,sum([LiveBonusWinAmountEur])  
				,sum([LiveBonusGGRAmountEur]) 
				,sum([SportTotalBetAmountEur]) 
				,sum([SportTotalWinAmountEur]) 
				,sum([SportTotalGGRAmountEur]) 
				,sum([SportCashBetAmountEur])  
				,sum([SportCashWinAmountEur])  
				,sum([SportCashGGRAmountEur]) 
				,sum([SportBonusBetAmountEur])  
				,sum([SportBonusWinAmountEur])  
				,sum([SportBonusGGRAmountEur]) 
				,sum([OtherTotalBetAmountEur]) 
				,sum([OtherTotalWinAmountEur]) 
				,sum([OtherTotalGGRAmountEur]) 
				,sum([OtherCashBetAmountEur])  
				,sum([OtherCashWinAmountEur])  
				,sum([OtherCashGGRAmountEur]) 
				,sum([OtherBonusBetAmountEur])  
				,sum([OtherBonusWinAmountEur])  
				,sum([OtherBonusGGRAmountEur]) 
				,0 [JackpotAmountEur]
				,0 [LiveDealerTipAmountEur]
				,0 [BonusAmountEur]
				,0 [CasinoBonusAmountEur] 
				,0 [SportBonusAmountEur] 
				,0 [BonusCancelledAmountEur]
				,0 [BonusRedeemedAmountEur]
				,0 [ApportionCostAmountEur]
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
			FROM [GoldblueUTC].[dbo].[ClientGameKPIHistorical] a
			where [Date]>= DATEADD(DAY,-2,GETDATE())
			group by 				
				[ClientId]
				,[UserName]
				,[Date]
				,[CurrencyId]
				,[Country]
		union all	
			select distinct
				a.user_id Clientid
				,b.user_name
				,convert(date, a.tran_time) [date]
				,a.currency
				,a.country
				,0 [Balance]
				,0 [BonusWalletBalance]
				,0 [SlotBonusWalletBalance]
				,0 [SportBonusWalletBalance]
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
				,0 [TotalBetAmount]
				,0 [TotalBetCount]
				,0 [TotalWinAmount]
				,0 [TotalWinCount]
				,0 [TotalGGRAmount]
				,0 [CashBetAmount]
				,0 [CashBetCount]
				,0 [CashWinAmount]
				,0 [CashWinCount]
				,0 [CashGGRAmount]
				,0 [BonusBetAmount]
				,0 [BonusBetCount]
				,0 [BonusWinAmount]
				,0 [BonusWinCount]
				,0 [BonusGGRAmount]
				,0 [SlotsTotalBetAmount]  
				,0 [SlotsTotalBetCount]
				,0 [SlotsTotalWinAmount]  
				,0 [SlotsTotalWinCount]
				,0 [SlotsTotalGGRAmount]  
				,0 [SlotsCashBetAmount]  
				,0 [SlotsCashBetCount]
				,0 [SlotsCashWinAmount]  
				,0 [SlotsCashWinCount]
				,0 [SlotsCashGGRAmount] 
				,0 [SlotsBonusBetAmount]  
				,0 [SlotsBonusBetCount]
				,0 [SlotsBonusWinAmount]  
				,0 [SlotsBonusWinCount]
				,0 [SlotsBonusGGRAmount] 
				,0 [LiveTotalBetAmount] 
				,0 [LiveTotalBetCount]
				,0 [LiveTotalWinAmount] 
				,0 [LiveTotalWinCount]
				,0 [LiveTotalGGRAmount] 
				,0 [LiveCashBetAmount]  
				,0 [LiveCashBetCount]
				,0 [LiveCashWinAmount]  
				,0 [LiveCashWinCount]
				,0 [LiveCashGGRAmount] 
				,0 [LiveBonusBetAmount]  
				,0 [LiveBonusBetCount]
				,0 [LiveBonusWinAmount]  
				,0 [LiveBonusWinCount]
				,0 [LiveBonusGGRAmount] 
				,0 [SportTotalBetAmount] 
				,0 [SportTotalBetCount]
				,0 [SportTotalWinAmount] 
				,0 [SportTotalWinCount]
				,0 [SportTotalGGRAmount] 
				,0 [SportCashBetAmount]  
				,0 [SportCashBetCount]
				,0 [SportCashWinAmount]  
				,0 [SportCashWinCount]
				,0 [SportCashGGRAmount] 
				,0 [SportBonusBetAmount]  
				,0 [SportBonusBetCount]
				,0 [SportBonusWinAmount]  
				,0 [SportBonusWinCount]
				,0 [SportBonusGGRAmount] 
				,0 [OtherTotalBetAmount] 
				,0 [OtherTotalBetCount]
				,0 [OtherTotalWinAmount] 
				,0 [OtherTotalWinCount]
				,0 [OtherTotalGGRAmount] 
				,0 [OtherCashBetAmount]  
				,0 [OtherCashBetCount]
				,0 [OtherCashWinAmount]  
				,0 [OtherCashWinCount]
				,0 [OtherCashGGRAmount] 
				,0 [OtherBonusBetAmount]  
				,0 [OtherBonusBetCount]
				,0 [OtherBonusWinAmount]  
				,0 [OtherBonusWinCount]
				,0 [OtherBonusGGRAmount] 
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
				,0 [ApportionCostAmount]
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

				,0 [BalanceEur]
				,0 [BonusWalletBalanceEur]
				,0 [SlotBonusWalletBalanceEur]
				,0 [SportBonusWalletBalanceEur]
				,sum(case when a.transaction_status = 'Completed' then a.[deposit_amount_eur] else 0 end) [DepositAmountEur]
				,sum(case when a.transaction_status = 'Completed' then a.[withdraw_amount_eur] else 0 end) [WithdrawalAmountEur]
				,sum(case when a.transaction_status = 'Failed' then a.[deposit_amount_eur] else 0 end)  RejectedDepositAmountEur
				,sum(case when a.transaction_status = 'Failed' then a.[withdraw_amount_eur] else 0 end) [RejectedWithdrawalAmountEur]
				,sum(case when a.transaction_status = 'In progress' then a.[deposit_amount_eur] else 0 end) PendingDepositAmountEur
				,sum(case when a.transaction_status = 'In Progress' then a.[withdraw_amount_eur] else 0 end) [PendingWithdrawalAmountEur]
				,sum(case when a.transaction_status = 'Completed' then a.[deposit_amount_eur] else 0 end) -sum(case when a.transaction_status = 'Completed' then a.[withdraw_amount_eur] else 0 end) NetSpreadAmountEur
				,0 [TotalBetAmountEur]
				,0 [TotalWinAmountEur]
				,0 [TotalGGRAmountEur]
				,0 [CashBetAmountEur]
				,0 [CashWinAmountEur]
				,0 [CashGGRAmountEur]
				,0 [BonusBetAmountEur]
				,0 [BonusWinAmountEur]
				,0 [BonusGGRAmountEur]
				,0 [SlotsTotalBetAmountEur]  
				,0 [SlotsTotalWinAmountEur]  
				,0 [SlotsTotalGGRAmountEur]  
				,0 [SlotsCashBetAmountEur]  
				,0 [SlotsCashWinAmountEur]  
				,0 [SlotsCashGGRAmountEur] 
				,0 [SlotsBonusBetAmountEur]  
				,0 [SlotsBonusWinAmountEur]  
				,0 [SlotsBonusGGRAmountEur] 
				,0 [LiveTotalBetAmountEur] 
				,0 [LiveTotalWinAmountEur] 
				,0 [LiveTotalGGRAmountEur] 
				,0 [LiveCashBetAmountEur]  
				,0 [LiveCashWinAmountEur]  
				,0 [LiveCashGGRAmountEur] 
				,0 [LiveBonusBetAmountEur]  
				,0 [LiveBonusWinAmountEur]  
				,0 [LiveBonusGGRAmountEur] 
				,0 [SportTotalBetAmountEur] 
				,0 [SportTotalWinAmountEur] 
				,0 [SportTotalGGRAmountEur] 
				,0 [SportCashBetAmountEur]  
				,0 [SportCashWinAmountEur]  
				,0 [SportCashGGRAmountEur] 
				,0 [SportBonusBetAmountEur]  
				,0 [SportBonusWinAmountEur]  
				,0 [SportBonusGGRAmountEur] 
				,0 [OtherTotalBetAmountEur] 
				,0 [OtherTotalWinAmountEur] 
				,0 [OtherTotalGGRAmountEur] 
				,0 [OtherCashBetAmountEur]  
				,0 [OtherCashWinAmountEur]  
				,0 [OtherCashGGRAmountEur] 
				,0 [OtherBonusBetAmountEur]  
				,0 [OtherBonusWinAmountEur]  
				,0 [OtherBonusGGRAmountEur] 
				,0 [JackpotAmountEur]
				,0 [LiveDealerTipAmountEur]
				,0 [BonusAmountEur]
				,0 [CasinoBonusAmountEur] 
				,0 [SportBonusAmountEur] 
				,0 [BonusCancelledAmountEur]
				,0 [BonusRedeemedAmountEur]
				,0 [ApportionCostAmountEur]
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
			FROM [dw_prod].[dbo].[dw_user_transactions] a
				join dw_prod.dbo.dw_user_header_dm b on a.user_id =  b.user_id
			where a.transaction_type in ('Deposit','Withdraw')
				and convert(date, a.tran_time)>= DATEADD(DAY,-2,GETDATE())
			group by a.user_id, b.user_name,convert(date, a.tran_time) ,a.currency,a.country		
) a
group by 		
	[ClientId]
	,[UserName]
	,[Date]
	,[CurrencyId]
	,[Country]