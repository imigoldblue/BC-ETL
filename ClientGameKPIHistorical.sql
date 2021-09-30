USE [GoldblueUTC]
GO

/****** Object:  Table [GoldblueUTC].[dbo].[ClientGameKPIHistorical]    Script Date: 04/09/2021 14:10:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
DROP TABLE IF EXISTS[GoldblueUTC].[dbo].[ClientGameKPIHistorical]
GO

CREATE TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical](
	[ClientId] [int] NOT NULL,
	[GameId] [varchar](255) NOT NULL,
	[Date] [date] NOT NULL,
	[Product] [varchar](255) NOT NULL,
	[Provider] [varchar](255)  NULL,
	[ProductCategory] [varchar](255) NOT NULL,
	[GameName] [varchar](255)  NULL,
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
	--[Modified] [datetime] NOT NULL,
	--[SessionId] [int] NOT NULL,
 CONSTRAINT [PK_ClientGameKPIHistorical] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC,
	[Date] DESC,
	[GameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [TotalBetAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [TotalBetCount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [TotalWinAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [TotalWinCount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [TotalGGRAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [CashBetAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [CashBetCount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [CashWinAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [CashWinCount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [CashGGRAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [BonusBetAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [BonusBetCount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [BonusWinAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [BonusWinCount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [BonusGGRAmount]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [TotalBetAmountEur]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [TotalWinAmountEur]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [TotalGGRAmountEur]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [CashBetAmountEur]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [CashWinAmountEur]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [CashGGRAmountEur]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [BonusBetAmountEur]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [BonusWinAmountEur]
GO

ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [BonusGGRAmountEur]
GO

--ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT (sysdatetime()) FOR [Modified]
--GO

--ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [TipAmount]
--GO

--ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [TipCount]
--GO

--ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [BonusAmount]
--GO

--ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [BonusCount]
--GO

--ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [BonusCashBackAmount]
--GO

--ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((0)) FOR [BonusCashBackCount]
--GO

--ALTER TABLE [GoldblueUTC].[dbo].[ClientGameKPIHistorical] ADD  DEFAULT ((1)) FOR [SessionId]
--GO

INSERT INTO [GoldblueUTC].[dbo].[ClientGameKPIHistorical]
select distinct
	a.dw_user_id 
	,a.game_id
	,a.full_date
	,a.product
	,a.game_reel
	,case when a.product= 'Sportsbook' then 'Sportsbook' else 'Casino' end ProductCategory
	,a.game_title
	,a.currency
	,a.country
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
	,sum(a.total_bet_eur) [TotalBetAmountEur]
	,sum(a.total_win_eur) [TotalWinAmountEur]
	,sum(a.total_ggr_eur) [TotalGGRAmountEur]
	,sum(a.cash_bet_amt_eur) [CashBetAmountEur]	
	,sum(a.cash_win_eur) [CashWinAmountEur]	
	,sum(a.cash_ggr_eur) [CashGGRAmountEur]
	,sum(a.bonus_bet_eur) [BonusBetAmountEur] 	
	,sum(a.[bonus_win_eur]) [BonusWinAmountEur]
	,sum(a.bonus_ggr_eur) [BonusGGRAmountEur]


from [dw_prod].[dbo].[dw_game_trans_dtl] a
where a.brand_id =1
group by 
	a.dw_user_id 
	,a.game_id
	,a.full_date
	,a.product
	,a.game_reel
	,case when a.product= 'Sportsbook' then 'Sportsbook' else 'Casino' end 
	,a.game_title
	,a.currency
	,a.country
order by a.full_date