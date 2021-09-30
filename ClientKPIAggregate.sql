USE [GoldblueUTC]
GO

/****** Object:  Table [dbo].[ClientKPIAggregate]    Script Date: 28/08/2021 21:25:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
drop table if exists [GoldblueUTC].[dbo].[ClientKPIAggregate]
GO
CREATE TABLE [GoldblueUTC].[dbo].[ClientKPIAggregate]
(	
	[ClientId] [int] NOT NULL
	,[Login] [nvarchar](255) NOT NULL
	,[BrandId] [int] NOT NULL
	,[BrandName] [nvarchar](255) NOT NULL
	,[Country] [nvarchar](255) NOT NULL
	,[RegDate] [date] NOT NULL
	,[FTDDate] [date] 
	,[FTDAmount] [decimal](18, 2)
	,[FTDAmountEur] [decimal](18, 2)
	,[CurrencyId] [char](3) 
	,[Balance] [decimal] (18,2) NULL 
	,[BonusWalletBalance] [decimal] (18,2) NULL 
	,[SlotBonusWalletBalance] [decimal] (18,2) NULL 
	,[SportBonusWalletBalance] [decimal] (18,2) NULL 
	,[DepositAmount] [decimal] (18,2) NULL 
	,[DepositCount] [int] NULL 
	,[WithdrawalAmount] [decimal] (18,2) NULL 
	,[WithdrawalCount] [int] NULL 
	,[RejectedDepositAmount] [decimal] (18,2) NULL 
	,[RejectedDepositCount] [int] NULL 
	,[RejectedWithdrawalAmount] [decimal] (18,2) NULL 
	,[RejectedWithdrawalCount] [int] NULL 
	,[PendingDepositAmount] [decimal] (18,2) NULL 
	,[PendingDepositCount] [int] NULL 
	,[PendingWithdrawalAmount] [decimal] (18,2) NULL 
	,[PendingWithdrawalCount] [int] NULL 	
	,[NetSpreadAmount] [decimal] (18,2) NULL 
	,[TotalBetAmount] [decimal] (18,2) NULL 	
	,[TotalBetCount] [int] NULL 	
	,[TotalWinAmount] [decimal] (18,2) NULL 	
	,[TotalWinCount] [int] NULL 	
	,[TotalGGRAmount] [decimal] (18,2) NULL 
	,[CashBetAmount] [decimal] (18,2) NULL 	
	,[CashBetCount] [int] NULL 	
	,[CashWinAmount] [decimal] (18,2) NULL 	
	,[CashWinCount] [int] NULL 	
	,[CashGGRAmount] [decimal] (18,2) NULL 	
	,[BonusBetAmount] [decimal] (18,2) NULL 	
	,[BonusBetCount] [int] NULL 	
	,[BonusWinAmount] [decimal] (18,2) NULL 	
	,[BonusWinCount] [int] NULL 	
	,[BonusGGRAmount] [decimal] (18,2) NULL 
	,[SlotsTotalBetAmount] [decimal] (18,2) NULL 
	,[SlotsTotalBetCount] [int] NULL 
	,[SlotsTotalWinAmount] [decimal] (18,2) NULL 
	,[SlotsTotalWinCount] [int] NULL 
	,[SlotsTotalGGRAmount] [decimal] (18,2) NULL 
	,[SlotsCashBetAmount] [decimal] (18,2) NULL 
	,[SlotsCashBetCount] [int] NULL 
	,[SlotsCashWinAmount] [decimal] (18,2) NULL 
	,[SlotsCashWinCount] [int] NULL 
	,[SlotsCashGGRAmount] [decimal] (18,2) NULL
	,[SlotsBonusBetAmount] [decimal] (18,2) NULL 
	,[SlotsBonusBetCount] [int] NULL 
	,[SlotsBonusWinAmount] [decimal] (18,2) NULL 
	,[SlotsBonusWinCount] [int] NULL 
	,[SlotsBonusGGRAmount] [decimal] (18,2) NULL
	,[LiveTotalBetAmount] [decimal] (18,2) NULL
	,[LiveTotalBetCount] [int] NULL
	,[LiveTotalWinAmount] [decimal] (18,2) NULL
	,[LiveTotalWinCount] [int] NULL
	,[LiveTotalGGRAmount] [decimal] (18,2) NULL
	,[LiveCashBetAmount] [decimal] (18,2) NULL 
	,[LiveCashBetCount] [int] NULL 
	,[LiveCashWinAmount] [decimal] (18,2) NULL 
	,[LiveCashWinCount] [int] NULL 
	,[LiveCashGGRAmount] [decimal] (18,2) NULL
	,[LiveBonusBetAmount] [decimal] (18,2) NULL 
	,[LiveBonusBetCount] [int] NULL 
	,[LiveBonusWinAmount] [decimal] (18,2) NULL 
	,[LiveBonusWinCount] [int] NULL 
	,[LiveBonusGGRAmount] [decimal] (18,2) NULL
	,[SportTotalBetAmount] [decimal] (18,2) NULL
	,[SportTotalBetCount] [int] NULL
	,[SportTotalWinAmount] [decimal] (18,2) NULL
	,[SportTotalWinCount] [int] NULL
	,[SportTotalGGRAmount] [decimal] (18,2) NULL
	,[SportCashBetAmount] [decimal] (18,2) NULL 
	,[SportCashBetCount] [int] NULL 
	,[SportCashWinAmount] [decimal] (18,2) NULL 
	,[SportCashWinCount] [int] NULL 
	,[SportCashGGRAmount] [decimal] (18,2) NULL
	,[SportBonusBetAmount] [decimal] (18,2) NULL 
	,[SportBonusBetCount] [int] NULL 
	,[SportBonusWinAmount] [decimal] (18,2) NULL 
	,[SportBonusWinCount] [int] NULL 
	,[SportBonusGGRAmount] [decimal] (18,2) NULL
	,[JackpotAmount] [decimal] (18,2) NULL 
	,[JackpotCount] [int] NULL 
	,[LiveDealerTipAmount] [decimal] (18,2) NULL 
	,[LiveDealerTipCount] [int] NULL 
	,[BonusAmount] [decimal] (18,2) NULL 
	,[BonusCount] [int] NULL 
	,[CasinoBonusAmount] [decimal] (18,2) NULL  
	,[CasinoBonusCount] [int] NULL  
	,[SportBonusAmount] [decimal] (18,2) NULL  
	,[SportBonusCount] [int] NULL 
	,[BonusCancelledAmount] [decimal] (18,2) NULL 
	,[BonusCancelledCount] [int] NULL 
	,[BonusRedeemedAmount] [decimal] (18,2) NULL 
	,[BonusRedeemedCount] [int] NULL 
	,[CashbackBonus] [decimal] (18,2) NULL 
	,[CasinoCashbackBonus] [decimal] (18,2) NULL 
	,[LoyaltyPointReward] [decimal] (18,2) NULL 
	,[PointExchange] [decimal] (18,2) NULL 
	,[LoyaltyPointItemPurchase] [decimal] (18,2) NULL 
	,[AgentToAgentTransferAmount] [decimal] (18,2) NULL 
	,[AgentToAgentTransferCount] [int] NULL 
	,[AgentToPlayerTransferAmount] [decimal] (18,2) NULL 
	,[AgentToPlayerTransferCount] [int] NULL 
	,[AgentToClientCreditUpAmount] [decimal] (18,2) NULL 
	,[AgentToClientCreditUpCount] [int] NULL 
	,[AgentToClientCreditDownAmount] [decimal] (18,2) NULL 
	,[AgentToClientCreditDownCount] [int] NULL 
	,[AgentToAgentCreditUpAmount] [decimal] (18,2) NULL 
	,[AgentToAgentCreditUpCount] [int] NULL 
	,[AgentToAgentCreditDownAmount] [decimal] (18,2) NULL 
	,[AgentToAgentCreditDownCount] [int] NULL 
	,[AgentCreditIncreaseAmount] [decimal] (18,2) NULL 
	,[AgentCreditIncreaseCount] [int] NULL 
	,[AgentCreditDecreaseAmount] [decimal] (18,2) NULL 
	,[AgentCreditDecreaseCount] [int] NULL 
	,[AgentCorrectionAmount] [decimal] (18,2) NULL 
	,[AgentCorrectionCount] [int] NULL 
	,[AgentClientDepositAmount] [decimal] (18,2) NULL 
	,[AgentClientDepositCount] [int] NULL 
	,[AgentClientWithdrawAmount] [decimal] (18,2) NULL 
	,[AgentClientWithdrawCount] [int] NULL 
	,[ClientDepositByAgentAmount] [decimal] (18,2) NULL 
	,[ClientDepositByAgentCount] [int] NULL 
	,[CorrectionUpAmount] [decimal] (18,2) NULL 
	,[CorrectionUpCount] [int] NULL 
	,[CorrectionDownAmount] [decimal] (18,2) NULL 
	,[CorrectionDownCount] [int] NULL 
	,[BonusCorrectionAmount] [decimal] (18,2) NULL 
	,[BonusCorrectionCount] [int] NULL 
	,[BonusCorrectionUpAmount] [decimal] (18,2) NULL 
	,[BonusCorrectionUpCount] [int] NULL 
	,[BonusCorrectionDownAmount] [decimal] (18,2) NULL 
	,[BonusCorrectionDownCount] [int] NULL 
	,[LoyaltyPointCorrectionUpAmount] [decimal] (18,2) NULL 
	,[LoyaltyPointCorrectionUpCount] [int] NULL 
	,[LoyaltyPointCorrectionDownAmount] [decimal] (18,2) NULL 
	,[LoyaltyPointCorrectionDownCount] [int] NULL 
	,[DepositCorrectionAmount] [decimal] (18,2) NULL 
	,[DepositCorrectionCount] [int] NULL 
	,[CashBackCorrectionAmount] [decimal] (18,2) NULL 
	,[CashBackCorrectionCount] [int] NULL 

	,[BalanceEur] [decimal] (18,2) NULL 
	,[BonusWalletBalanceEur] [decimal] (18,2) NULL 
	,[SlotBonusWalletBalanceEur] [decimal] (18,2) NULL 
	,[SportBonusWalletBalanceEur] [decimal] (18,2) NULL 
	,[DepositAmountEur] [decimal] (18,2) NULL
	,[WithdrawalAmountEur] [decimal] (18,2) NULL
	,[RejectedDepositAmountEur] [decimal] (18,2) NULL 
	,[RejectedWithdrawalAmountEur] [decimal] (18,2) NULL
	,[PendingDepositAmountEur] [decimal] (18,2) NULL 
	,[PendingWithdrawalAmountEur] [decimal] (18,2) NULL
	,[NetSpreadAmountEur] [decimal] (18,2) NULL
	,[TotalBetAmountEur] [decimal] (18,2) NULL		
	,[TotalWinAmountEur] [decimal] (18,2) NULL		
	,[TotalGGRAmountEur] [decimal] (18,2) NULL
	,[CashBetAmountEur] [decimal] (18,2) NULL		
	,[CashWinAmountEur] [decimal] (18,2) NULL		
	,[CashGGRAmountEur] [decimal] (18,2) NULL	
	,[BonusBetAmountEur] [decimal] (18,2) NULL 
	,[BonusWinAmountEur] [decimal] (18,2) NULL		
	,[BonusGGRAmountEur] [decimal] (18,2) NULL 
	,[SlotsTotalBetAmountEur] [decimal] (18,2) NULL 
	,[SlotsTotalWinAmountEur] [decimal] (18,2) NULL
	,[SlotsTotalGGRAmountEur] [decimal] (18,2) NULL 
	,[SlotsCashBetAmountEur] [decimal] (18,2) NULL 
	,[SlotsCashWinAmountEur] [decimal] (18,2) NULL 
	,[SlotsCashGGRAmountEur] [decimal] (18,2) NULL 
	,[SlotsBonusBetAmountEur] [decimal] (18,2) NULL 
	,[SlotsBonusWinAmountEur] [decimal] (18,2) NULL 
	,[SlotsBonusGGRAmountEur] [decimal] (18,2) NULL 
	,[LiveTotalBetAmountEur] [decimal] (18,2) NULL 
	,[LiveTotalWinAmountEur] [decimal] (18,2) NULL 
	,[LiveTotalGGRAmountEur] [decimal] (18,2) NULL 
	,[LiveCashBetAmountEur] [decimal] (18,2) NULL 
	,[LiveCashWinAmountEur] [decimal] (18,2) NULL 
	,[LiveCashGGRAmountEur] [decimal] (18,2) NULL 
	,[LiveBonusBetAmountEur] [decimal] (18,2) NULL 
	,[LiveBonusWinAmountEur] [decimal] (18,2) NULL 
	,[LiveBonusGGRAmountEur] [decimal] (18,2) NULL 
	,[SportTotalBetAmountEur] [decimal] (18,2) NULL
	,[SportTotalWinAmountEur] [decimal] (18,2) NULL
	,[SportTotalGGRAmountEur] [decimal] (18,2) NULL 
	,[SportCashBetAmountEur] [decimal] (18,2) NULL 
	,[SportCashWinAmountEur] [decimal] (18,2) NULL 
	,[SportCashGGRAmountEur] [decimal] (18,2) NULL 
	,[SportBonusBetAmountEur] [decimal] (18,2) NULL 
	,[SportBonusWinAmountEur] [decimal] (18,2) NULL 
	,[SportBonusGGRAmountEur] [decimal] (18,2) NULL 
	,[JackpotAmountEur] [decimal] (18,2) NULL
	,[LiveDealerTipAmountEur] [decimal] (18,2) NULL
	,[BonusAmountEur] [decimal] (18,2) NULL
	,[CasinoBonusAmountEur] [decimal] (18,2) NULL 
	,[SportBonusAmountEur] [decimal] (18,2) NULL 
	,[BonusCancelledAmountEur] [decimal] (18,2) NULL
	,[BonusRedeemedAmountEur] [decimal] (18,2) NULL
	,[CashbackBonusEur] [decimal] (18,2) NULL
	,[CasinoCashbackBonusEur] [decimal] (18,2) NULL
	,[LoyaltyPointRewardEur] [decimal] (18,2) NULL
	,[PointExchangeEur] [decimal] (18,2) NULL
	,[LoyaltyPointItemPurchaseEur] [decimal] (18,2) NULL
	,[AgentToAgentTransferAmountEur] [decimal] (18,2) NULL
	,[AgentToPlayerTransferAmountEur] [decimal] (18,2) NULL
	,[AgentToClientCreditUpAmountEur] [decimal] (18,2) NULL
	,[AgentToClientCreditDownAmountEur] [decimal] (18,2) NULL
	,[AgentToAgentCreditUpAmountEur] [decimal] (18,2) NULL
	,[AgentToAgentCreditDownAmountEur] [decimal] (18,2) NULL
	,[AgentCreditIncreaseAmountEur] [decimal] (18,2) NULL
	,[AgentCreditDecreaseAmountEur] [decimal] (18,2) NULL
	,[AgentCorrectionAmountEur] [decimal] (18,2) NULL
	,[AgentClientDepositAmountEur] [decimal] (18,2) NULL
	,[AgentClientWithdrawAmountEur] [decimal] (18,2) NULL
	,[ClientDepositByAgentAmountEur] [decimal] (18,2) NULL
	,[CorrectionUpAmountEur] [decimal] (18,2) NULL
	,[CorrectionDownAmountEur] [decimal] (18,2) NULL
	,[BonusCorrectionAmountEur] [decimal] (18,2) NULL
	,[BonusCorrectionUpAmountEur] [decimal] (18,2) NULL
	,[BonusCorrectionDownAmountEur] [decimal] (18,2) NULL
	,[LoyaltyPointCorrectionUpAmountEur] [decimal] (18,2) NULL
	,[LoyaltyPointCorrectionDownAmountEur] [decimal] (18,2) NULL
	,[DepositCorrectionAmountEur] [decimal] (18,2) NULL
	,[CashBackCorrectionAmountEur] [decimal] (18,2) NULL

 CONSTRAINT [PK_ClientKPIAggregate] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC,	
	[RegDate] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/*

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [DepositAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [DepositCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [RejectedDepositAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [RejectedDepositCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [WithdrawalAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [WithdrawalCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [RejectedWithdrawalAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [RejectedWithdrawalCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [NetSpreadAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CorrectionUpAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CorrectionUpCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CorrectionDownAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CorrectionDownCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [BonusCorrectionUpAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [BonusCorrectionUpCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [BonusCorrectionDownAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [BonusCorrectionDownCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoDepositAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoDepositCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoWithdrawalAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoWithdrawalCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoRejectedWithdrawalAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoRejectedWithdrawalCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoCorrectionUpAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoCorrectionUpCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoCorrectionDownAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoCorrectionDownCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [TotalBetAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [TotalBetCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [TotalWinCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [TotalWinAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [TotalGGRAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [TotalHold]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [TotalCashBetAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [TotalCashBetCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [TotalCashWinCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [TotalCashWinAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [TotalCashGGRAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [TotalCashHold]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [TotalBonusBetAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [TotalBonusBetCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [TotalBonusWinAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [TotalBonusWinCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [TotalBonusGGRAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [TotalBonusHold]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [TotalCashReturnAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [TotalCashReturnCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoTotalBetAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoTotalBetCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoTotalWinAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoTotalWinCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoTotalGGRAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoTotalHold]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoCashBetAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoCashBetCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoCashWinAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoCashWinCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoCashGGRAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoCashHold]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoBonusBetAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoBonusBetCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoBonusWinAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoBonusWinCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoBonusGGRAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoBonusHold]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoCashReturnAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoCashReturnCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportTotalBetAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportTotalBetCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportTotalWinAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportTotalWinCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportTotalGGRAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportTotalHold]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportCashBetAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportCashBetCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportCashWinAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportCashWinCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportCashGGRAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportCashHold]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportBonusBetAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportBonusBetCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportBonusWinAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportBonusWinCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SporBonusGGRAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportBonusHold]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportCashReturnAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportCashReturnCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportDecreaseWinAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportDecreaseWinCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoBonusAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoBonusCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportBonusAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportBonusCount]
GO


ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [TransferFromMainAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [TransferFromMainCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [TransferToMainAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [TransferToMainCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [MoneyFromPointAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [MoneyFromPointCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [PointEarnedAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [PointEarnedCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [PointToMoneyAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [PointToMoneyCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [BuddyToBuddyWithdrawalAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [BuddyToBuddyWithdrawalCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [BuddyToBuddyDepositAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [BuddyToBuddyDepositCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportDepositCashBackBonusAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportDepositCashBackBonusCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoDepositCashBackBonusAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [CasinoDepositCashBackBonusCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [ClaimBetCount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [ClaimBetAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [ClaimBetReturnAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [ClaimBetWinAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [WalletTransferInAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [WalletTransferOutAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [StakeTaxAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [JackPotWin]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [WithdrawTaxAmount]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportBetAmountAPI]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportBetCountAPI]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportWinAmountAPI]
GO

ALTER TABLE [dbo].[ClientKPIAggregate] ADD  DEFAULT ((0)) FOR [SportWinCountAPI]
GO*/
;

truncate table [GoldblueUTC].[dbo].[ClientKPIAggregate];
insert into [GoldblueUTC].[dbo].[ClientKPIAggregate]
select distinct 
	cl.id,cl.login,1 as Brand,'Happistar' as BrandName,reg.Alpha2Code ,convert(date,cl.Created) RegDate,fd.FTDDate,fd.FTDAmount,fd.FTDAmountEur,cl.CurrencyId
	,bal.[RealWalletBalance],bal.[BonusWalletBalance],bal.[CasinoBonusWalletBalance],bal.[SportBonusWalletBalance]
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

	,bal.[RealWalletBalanceEur],bal.[BonusWalletBalanceEur],bal.[CasinoBonusWalletBalanceEur],bal.[SportBonusWalletBalanceEur]

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
from [GoldblueUTC].[dbo].Client cl
	join [GoldblueUTC].[dbo].Region reg on cl.RegionId = reg.Id 
	left join (
  					select distinct cr.[ClientId],convert(date,cr.created) FTDDate, cr.Amount FTDAmount,cr.AmountEur FTDAmountEur,cr.CurrencyId Currency
					from [GoldblueUTC].[dbo].Document cr
						join ( select distinct cr.clientid,min(cr.id) id from [GoldblueUTC].[dbo].Document cr where cr.Typeid in (3,7)  and cr.State = 10 group by cr.clientid) b on cr.ClientId = b.ClientId and cr.id = b.id
					where cr.TypeId  in (3,7) and cr.State = 10
				) fd on cl.id = fd.ClientId 
	LEFT JOIN (
				SELECT DISTINCT
						a.ObjectId [ClientId]
						,sum(case when a.BalanceTypeId=5211 then a.[Balance] else 0 end) RealWalletBalance
						,sum(case when a.BalanceTypeId=8124 then a.[Balance] else 0 end)+sum(case when a.BalanceTypeId=8154 then a.[Balance] else 0 end) [BonusWalletBalance] 
						,sum(case when a.BalanceTypeId=8124 then a.[Balance] else 0 end) CasinoBonusWalletBalance
						,sum(case when a.BalanceTypeId=8154 then a.[Balance] else 0 end) SportBonusWalletBalance
						,sum(case when a.BalanceTypeId=5211 then a.[AmountEur] else 0 end) RealWalletBalanceEur
						,sum(case when a.BalanceTypeId=8124 then a.[AmountEur] else 0 end)+sum(case when a.BalanceTypeId=8154 then a.[AmountEur] else 0 end) [BonusWalletBalanceEur] 
						,sum(case when a.BalanceTypeId=8124 then a.[AmountEur] else 0 end) CasinoBonusWalletBalanceEur
						,sum(case when a.BalanceTypeId=8154 then a.[AmountEur] else 0 end) SportBonusWalletBalanceEur
					FROM [GoldblueUTC].[dbo].[Account] a 
					group by ObjectId 			
				) bal on cl.id = bal.clientid
	left join  [GoldblueUTC].[dbo].[ClientKPI] kpi on cl.id = kpi.ClientId
where cl.IsTest = 0
group by
		cl.id,cl.login,reg.Alpha2Code ,convert(date,cl.Created),fd.FTDDate,fd.FTDAmount,fd.FTDAmountEur,cl.CurrencyId
		,bal.[RealWalletBalance],bal.[BonusWalletBalance],bal.[CasinoBonusWalletBalance],bal.[SportBonusWalletBalance]
		,bal.[RealWalletBalanceEur],bal.[BonusWalletBalanceEur],bal.[CasinoBonusWalletBalanceEur],bal.[SportBonusWalletBalanceEur]