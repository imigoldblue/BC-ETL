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
	[ClientId] [int] NOT NULL,
	[Login] [nvarchar](255) NOT NULL,
	[BrandId] [int] NOT NULL,
	[BrandName] [nvarchar](255)NOT NULL,
	[Country] [nvarchar](255) NOT NULL,
	[RegDate] [date] NOT NULL,
	[FTDDate] [date] ,
	[FTDAmount] [decimal](18, 2),
	[FTDAmountEur] [decimal](18, 2),
	[CurrencyId] [char](3) ,
	[DepositAmount] [decimal](18, 2) NULL,
	[DepositCount] [int] NULL,
	[RejectedDepositAmount] [decimal](18, 2) NULL,
	[RejectedDepositCount] [int] NULL,
	[WithdrawalAmount] [decimal](18, 2) NULL,
	[WithdrawalCount] [int] NULL,
	[RejectedWithdrawalAmount] [decimal](18, 2) NULL,
	[RejectedWithdrawalCount] [int] NULL,
	[NetSpreadAmount] [decimal](18, 2) NULL,
	[CorrectionUpAmount] [decimal](18, 2) NULL,
	[CorrectionUpCount] [int] NULL,
	[CorrectionDownAmount] [decimal](18, 2) NULL,
	[CorrectionDownCount] [int] NULL,
	[BonusCorrectionUpAmount] [decimal](18, 2) NULL,
	[BonusCorrectionUpCount] [int] NULL,
	[BonusCorrectionDownAmount] [decimal](18, 2) NULL,
	[BonusCorrectionDownCount] [int] NULL,
	[CasinoDepositAmount] [decimal](18, 2) NULL,
	[CasinoDepositCount] [int] NULL,
	[CasinoWithdrawalAmount] [decimal](18, 2) NULL,
	[CasinoWithdrawalCount] [int] NULL,
	[CasinoRejectedWithdrawalAmount] [decimal](18, 2) NULL,
	[CasinoRejectedWithdrawalCount] [int] NULL,
	[CasinoCorrectionUpAmount] [decimal](18, 2) NULL,
	[CasinoCorrectionUpCount] [int] NULL,
	[CasinoCorrectionDownAmount] [decimal](18, 2) NULL,
	[CasinoCorrectionDownCount] [int] NULL,
	[TotalBetAmount] [decimal](18, 2) NULL,
	[TotalBetCount] [int] NULL,
	[TotalWinCount] [decimal](18, 2) NULL,
	[TotalWinAmount] [int] NULL,
	[TotalGGRAmount] [decimal](18, 2) NULL,
	[TotalHold] [decimal](18, 5) NULL,
	[TotalCashBetAmount] [decimal](18, 2) NULL,
	[TotalCashBetCount] [int] NULL,
	[TotalCashWinCount] [decimal](18, 2) NULL,
	[TotalCashWinAmount] [int] NULL,
	[TotalCashGGRAmount] [decimal](18, 2) NULL,
	[TotalCashHold] [decimal](18, 5) NULL,
	[TotalBonusBetAmount] [decimal](18, 2) NULL,
	[TotalBonusBetCount] [int] NULL,
	[TotalBonusWinAmount] [decimal](18, 2) NULL,
	[TotalBonusWinCount] [int] NULL,
	[TotalBonusGGRAmount] [decimal](18, 2) NULL,
	[TotalBonusHold] [decimal](18, 5) NULL,
	[TotalCashReturnAmount] [decimal](18, 2) NULL,
	[TotalCashReturnCount] [int] NULL,
	[CasinoTotalBetAmount] [decimal](18, 2) NULL,
	[CasinoTotalBetCount] [int] NULL,
	[CasinoTotalWinAmount] [decimal](18, 2) NULL,
	[CasinoTotalWinCount] [int] NULL,
	[CasinoTotalGGRAmount] [decimal](18, 2) NULL,
	[CasinoTotalHold] [decimal](18, 5) NULL,
	[CasinoCashBetAmount] [decimal](18, 2) NULL,
	[CasinoCashBetCount] [int] NULL,
	[CasinoCashWinAmount] [decimal](18, 2) NULL,
	[CasinoCashWinCount] [int] NULL,
	[CasinoCashGGRAmount] [decimal](18, 2) NULL,
	[CasinoCashHold] [decimal](18, 5) NULL,
	[CasinoBonusBetAmount] [decimal](18, 2) NULL,
	[CasinoBonusBetCount] [int] NULL,
	[CasinoBonusWinAmount] [decimal](18, 2) NULL,
	[CasinoBonusWinCount] [int] NULL,
	[CasinoBonusGGRAmount] [decimal](18, 2) NULL,
	[CasinoBonusHold] [decimal](18, 5) NULL,
	[CasinoCashReturnAmount] [decimal](18, 2) NULL,
	[CasinoCashReturnCount] [int] NULL,
	[SportTotalBetAmount] [decimal](18, 2) NULL,
	[SportTotalBetCount] [int] NULL,
	[SportTotalWinAmount] [decimal](18, 2) NULL,
	[SportTotalWinCount] [int] NULL,
	[SportTotalGGRAmount] [decimal](18, 2) NULL,
	[SportTotalHold] [decimal](18, 5) NULL,
	[SportCashBetAmount] [decimal](18, 2) NULL,
	[SportCashBetCount] [int] NULL,
	[SportCashWinAmount] [decimal](18, 2) NULL,
	[SportCashWinCount] [int] NULL,
	[SportCashGGRAmount] [decimal](18, 2) NULL,
	[SportCashHold] [decimal](18, 5) NULL,
	[SportBonusBetAmount] [decimal](18, 2) NULL,
	[SportBonusBetCount] [int] NULL,
	[SportBonusWinAmount] [decimal](18, 2) NULL,
	[SportBonusWinCount] [int] NULL,
	[SporBonusGGRAmount] [decimal](18, 2) NULL,
	[SportBonusHold] [decimal](18, 5) NULL,
	[SportCashReturnAmount] [decimal](18, 2) NULL,
	[SportCashReturnCount] [int] NULL,
	[SportDecreaseWinAmount] [decimal](18, 2) NULL,
	[SportDecreaseWinCount] [int] NULL,
	[CasinoBonusAmount] [decimal](18, 2) NULL,
	[CasinoBonusCount] [int] NULL,
	[SportBonusAmount] [decimal](18, 2) NULL,
	[SportBonusCount] [int] NULL,
	[TransferFromMainAmount] [decimal](18, 2) NULL,
	[TransferFromMainCount] [int] NULL,
	[TransferToMainAmount] [decimal](18, 2) NULL,
	[TransferToMainCount] [int] NULL,
	[MoneyFromPointAmount] [decimal](18, 2) NULL,
	[MoneyFromPointCount] [int] NULL,
	[PointEarnedAmount] [decimal](18, 2) NULL,
	[PointEarnedCount] [int] NULL,
	[PointToMoneyAmount] [decimal](18, 2) NULL,
	[PointToMoneyCount] [int] NULL,
	[BuddyToBuddyWithdrawalAmount] [decimal](18, 2) NULL,
	[BuddyToBuddyWithdrawalCount] [int] NULL,
	[BuddyToBuddyDepositAmount] [decimal](18, 2) NULL,
	[BuddyToBuddyDepositCount] [int] NULL,
	[SportDepositCashBackBonusAmount] [decimal](18, 2) NULL,
	[SportDepositCashBackBonusCount] [int] NULL,
	[CasinoDepositCashBackBonusAmount] [decimal](18, 2) NULL,
	[CasinoDepositCashBackBonusCount] [int] NULL,
	[ClaimBetCount] [int] NULL,
	[ClaimBetAmount] [decimal](18, 2) NULL,
	[ClaimBetReturnAmount] [decimal](18, 2) NULL,
	[ClaimBetWinAmount] [decimal](18, 2) NULL,
	[WalletTransferInAmount] [decimal](18, 2) NULL,
	[WalletTransferOutAmount] [decimal](18, 2) NULL,
	[StakeTaxAmount] [decimal](18, 2) NULL,
	[JackPotWin] [decimal](18, 2) NULL,
	[WithdrawTaxAmount] [decimal](18, 2) NULL,
	[SportBetAmountAPI] [decimal](18, 2) NULL,
	[SportBetCountAPI] [int] NULL,
	[SportWinAmountAPI] [decimal](18, 2) NULL,
	[SportWinCountAPI] [int] NULL,
 CONSTRAINT [PK_ClientKPIAggregate] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC,	
	[RegDate] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


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
GO
;

truncate table GoldblueUTC.[dbo].[ClientKPIAggregate];
insert into GoldblueUTC.[dbo].[ClientKPIAggregate]
select distinct 
	cl.id,cl.login,1 as Brand,'Happistar' as BrandName,reg.Alpha2Code ,convert(date,cl.Created) RegDate,fd.FTDDate,fd.FTDAmount,fd.FTDAmountEur,cl.CurrencyId,
	[Balance],
 from [Goldblue].[dbo].Client cl
	join [Goldblue].[dbo].Region reg on cl.RegionId = reg.Id 
	left join (
  					select distinct cr.[ClientId],convert(date,cr.created) FTDDate, cr.Amount FTDAmount,cr.AmountEur FTDAmountEur,cr.CurrencyId Currency
					from [GoldblueUTC].[dbo].Document cr
						join ( select distinct cr.clientid,min(cr.id) id from [GoldblueUTC].[dbo].Document cr where cr.Typeid in (3,7)  and cr.State = 10 group by cr.clientid) b on cr.ClientId = b.ClientId and cr.id = b.id
					where cr.TypeId  in (3,7) and cr.State = 10
				) fd on cl.id = fd.ClientId 
	left join (	SELECT distinct a.[ClientId]
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
			  FROM [GoldblueUTC].[dbo].[ClientKPI] a
			  group by [ClientId]
		) kpi on cl.id = kpi.ClientId
	where cl.IsTest = 0