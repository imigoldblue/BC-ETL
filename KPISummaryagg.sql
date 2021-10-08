
drop table if exists [GoldblueUTC].dbo.KPISummaryDaily;
drop table if exists [GoldblueUTC].dbo.KPISummaryWeekly;
drop table if exists [GoldblueUTC].dbo.KPISummaryMonthly;
create table [GoldblueUTC].dbo.KPISummaryDaily
(dateid [int] NULL, 
calendardt [date] NOT NULL,
country [nvarchar](255)NOT NULL,
brandid [nvarchar](255)NOT NULL,
BrandName  [nvarchar](255)NOT NULL,
Registrations [int] NULL, 
FTD [int] NULL,
FTD_Amount [decimal](18, 2) NULL,
UniqueActiveDepositors [int] NULL,
[DepositAmount] [decimal](18, 2) NULL,
WithdrawalAmount [decimal](18, 2) NULL,
NetSpreadAmount  [decimal](18, 2) NULL,
UniqueActivePlayers [int] NULL,
[CashBetAmount] [decimal](18, 2) NULL,
[CashWinCount] [decimal](18, 2) NULL,
[CashGGRAmount] [decimal](18, 2) NULL,
[CashBetCount] [int] NULL,
[BonusBetAmount] [decimal](18, 2) NULL,
[BonusWinAmount] [decimal](18, 2) NULL,
[BonusGGRAmount] [decimal](18, 2) NULL,
[BonusBetCount] [int] NULL,
[TotalBetAmount] [decimal](18, 2) NULL,
[TotalWinAmount] [decimal](18, 2) NULL,
[TotalGGRAmount] [decimal](18,2) NULL,
[TotalBetCount] [int] NULL,
BonusIssued [decimal](18, 2) NULL,
Rebate  [decimal](18, 2) NULL,
Cashback [decimal](18, 2) NULL,
CashBonus  [decimal](18, 2) NULL,
CasinoBonusWallet  [decimal](18, 2) NULL,
SportBonusWallet  [decimal](18, 2) NULL,
Adjustment [decimal](18, 2) NULL,
BonusRedeemed  [decimal](18, 2) NULL,
ApportionCost  [decimal](18, 2) NULL,
BonusRedeemedplusRebate  [decimal](18, 2) NULL,
DepRet [int] NULL,
FTDDepRet [int] NULL,
ActiveRet[int] NULL,
CPA [decimal](18, 2) NULL,
AcquisitionCosts  [decimal](18, 2) NULL,
AffiliateCosts [decimal](18, 2) NULL,
OtherMarketingCosts [decimal](18, 2) NULL,
BonusIssuedLine  [decimal](18, 2) NULL
);
create table [GoldblueUTC].dbo.KPISummaryWeekly
(dateid [int] NULL, 
calendardt [date] NOT NULL,
country [nvarchar](255)NOT NULL,
brandid [nvarchar](255)NOT NULL,
BrandName  [nvarchar](255)NOT NULL,
Registrations [int] NULL, 
FTD [int] NULL,
FTD_Amount [decimal](18, 2) NULL,
UniqueActiveDepositors [int] NULL,
[DepositAmount] [decimal](18, 2) NULL,
WithdrawalAmount [decimal](18, 2) NULL,
NetSpreadAmount  [decimal](18, 2) NULL,
UniqueActivePlayers [int] NULL,
[CashBetAmount] [decimal](18, 2) NULL,
[CashWinCount] [decimal](18, 2) NULL,
[CashGGRAmount] [decimal](18, 2) NULL,
[CashBetCount] [int] NULL,
[BonusBetAmount] [decimal](18, 2) NULL,
[BonusWinAmount] [decimal](18, 2) NULL,
[BonusGGRAmount] [decimal](18, 2) NULL,
[BonusBetCount] [int] NULL,
[TotalBetAmount] [decimal](18, 2) NULL,
[TotalWinAmount] [decimal](18, 2) NULL,
[TotalGGRAmount] [decimal](18,2) NULL,
[TotalBetCount] [int] NULL,
BonusIssued [decimal](18, 2) NULL,
Rebate  [decimal](18, 2) NULL,
Cashback [decimal](18, 2) NULL,
CashBonus  [decimal](18, 2) NULL,
CasinoBonusWallet  [decimal](18, 2) NULL,
SportBonusWallet  [decimal](18, 2) NULL,
Adjustment [decimal](18, 2) NULL,
BonusRedeemed  [decimal](18, 2) NULL,
ApportionCost  [decimal](18, 2) NULL,
BonusRedeemedplusRebate  [decimal](18, 2) NULL,
DepRet [int] NULL,
FTDDepRet [int] NULL,
ActiveRet[int] NULL,
CPA [decimal](18, 2) NULL,
AcquisitionCosts  [decimal](18, 2) NULL,
AffiliateCosts [decimal](18, 2) NULL,
OtherMarketingCosts [decimal](18, 2) NULL,
BonusIssuedLine  [decimal](18, 2) NULL
);
create table [GoldblueUTC].dbo.KPISummaryMonthly
(dateid [int] NULL, 
calendardt [date] NOT NULL,
country [nvarchar](255)NOT NULL,
brandid [nvarchar](255)NOT NULL,
BrandName  [nvarchar](255)NOT NULL,
Registrations [int] NULL, 
FTD [int] NULL,
FTD_Amount [decimal](18, 2) NULL,
UniqueActiveDepositors [int] NULL,
[DepositAmount] [decimal](18, 2) NULL,
WithdrawalAmount [decimal](18, 2) NULL,
NetSpreadAmount  [decimal](18, 2) NULL,
UniqueActivePlayers [int] NULL,
[CashBetAmount] [decimal](18, 2) NULL,
[CashWinCount] [decimal](18, 2) NULL,
[CashGGRAmount] [decimal](18, 2) NULL,
[CashBetCount] [int] NULL,
[BonusBetAmount] [decimal](18, 2) NULL,
[BonusWinAmount] [decimal](18, 2) NULL,
[BonusGGRAmount] [decimal](18, 2) NULL,
[BonusBetCount] [int] NULL,
[TotalBetAmount] [decimal](18, 2) NULL,
[TotalWinAmount] [decimal](18, 2) NULL,
[TotalGGRAmount] [decimal](18,2) NULL,
[TotalBetCount] [int] NULL,
BonusIssued [decimal](18, 2) NULL,
Rebate  [decimal](18, 2) NULL,
Cashback [decimal](18, 2) NULL,
CashBonus  [decimal](18, 2) NULL,
CasinoBonusWallet  [decimal](18, 2) NULL,
SportBonusWallet  [decimal](18, 2) NULL,
Adjustment [decimal](18, 2) NULL,
BonusRedeemed  [decimal](18, 2) NULL,
ApportionCost  [decimal](18, 2) NULL,
BonusRedeemedplusRebate  [decimal](18, 2) NULL,
DepRet [int] NULL,
FTDDepRet [int] NULL,
ActiveRet[int] NULL,
CPA [decimal](18, 2) NULL,
AcquisitionCosts  [decimal](18, 2) NULL,
AffiliateCosts [decimal](18, 2) NULL,
OtherMarketingCosts [decimal](18, 2) NULL,
BonusIssuedLine  [decimal](18, 2) NULL
)


truncate table [GoldblueUTC].[dbo].[KPISummaryDaily] ;
insert into [GoldblueUTC].[dbo].[KPISummaryDaily]
select distinct 
	a.Dateid,a.CalendarDt,a.Country,a.Brand,a.BrandName, a.Registrations,a.FTD,a.[FTDAmountEur],
	a.UniqueActiveDepositors,a.[DepositAmountEur],a.[WithdrawalAmountEur],a.[NetSpreadAmountEur],
	a.UniqueActivePlayers,a.[CashBetAmountEur] ,a.[CashWinAmountEur],a.[CashGGRAmountEur],a.[CashBetCount],
	a.[BonusBetAmountEur],a.[BonusWinAmountEur],a.[BonusGGRAmountEur],a.[BonusBetCount],
	a.[TotalBetAmountEur],a.[TotalWinAmountEur],a.[TotalGGRAmountEur],a.[TotalBetCount],
	a.BonusIssued,0 Rebate,0 Cashback,0 CashBonus,0 CasioBonusWallet,0 SportBonusWallet,0 Adjustment, 
	a.BonusRedeemed,0 ApportionCost, 0 BonusRedeemedplusRebate,
	a.DepRet,a.FTDDepRet,a.ActiveRet,
	null CPA,null AcquisitionCosts, null AffiliateCosts,null OtherMarketingCosts,null BonusIssuedLine
from (
			SELECT DISTINCT
			dd.Dateid,dd.CalendarDt,dd.Country,dd.Brand,dd.BrandName, reg.Registrations,fd.FTD,fd.[FTDAmountEur],
			kpi.UniqueActiveDepositors,kpi.[DepositAmountEur],kpi.[WithdrawalAmountEur],kpi.[NetSpreadAmountEur],
			kpi.UniqueActivePlayers,kpi.[CashBetAmountEur] ,kpi.[CashWinAmountEur],kpi.[CashGGRAmountEur],kpi.[CashBetCount],
			kpi.[BonusBetAmountEur],kpi.[BonusWinAmountEur],kpi.[BonusGGRAmountEur],kpi.[BonusBetCount],
			kpi.[TotalBetAmountEur],kpi.[TotalWinAmountEur],kpi.[TotalGGRAmountEur],kpi.[TotalBetCount],
			bonus.BonusIssued,0 Rebate,0 Cashback,0 CashBonus,0 CasioBonusWallet,0 SportBonusWallet,0 Adjustment, 
			bonus.BonusRedeemed,0 ApportionCost, 0 BonusRedeemedplusRebate,
			ret.DepRet,ret.FTDDepRet,ret.ActiveRet,
			null CPA,null AcquisitionCosts, null AffiliateCosts,null OtherMarketingCosts,null BonusIssuedLine
			,coalesce(reg.Registrations,0)+coalesce(kpi.TotalBetAmountEur,0)+coalesce(kpi.DepositAmountEur,0)+coalesce(kpi.WithdrawalAmountEur,0) Sums
			FROM 
				(  select distinct dd.Dateid,dd.CalendarDt,reg.Alpha2Code Country,1 as Brand,'Happistar' as BrandName
					from [GoldblueUTC].DBO.DateDim dd
						cross join [Goldblue].[dbo].Region reg 
					where reg.Alpha2Code in ('IN','JP','ID','VN','TH') and dd.dateid>=20210901
		
				) dd
				left join (
							select  distinct a.RegDate,a.Country,count(distinct a.clientid) Registrations
							from [GoldblueUTC].[dbo].[ClientKPIAggregate] a
							group by a.RegDate,a.Country					
						) reg on dd.CalendarDt = reg.RegDate and dd.Country = reg.Country
				left join (
							select  distinct FTDDate,Country,count(distinct a.clientid) FTD,sum(a.[FTDAmountEur]) [FTDAmountEur]
							from [GoldblueUTC].[dbo].[ClientKPIAggregate] a
							group by FTDDate,Country					
						) fd on dd.CalendarDt = fd.FTDDate and dd.Country = fd.Country
				left join (
							select distinct a.Date,reg.Alpha2Code Country, count(distinct case when a.[DepositAmountEur] >0 then a.ClientId else null end) UniqueActiveDepositors,
							count(distinct case when a.[TotalBetAmountEur] >0 then a.ClientId else null end) UniqueActivePlayers,
							sum([DepositAmountEur]) [DepositAmountEur],sum([DepositCount]) [DepositCount],sum([WithdrawalAmountEur]) [WithdrawalAmountEur],sum([NetSpreadAmountEur]) [NetSpreadAmountEur],
							sum([CashBetAmountEur]) [CashBetAmountEur]
							,sum([CashWinAmountEur]) [CashWinAmountEur]
							,sum([CashGGRAmountEur]) [CashGGRAmountEur]
							,sum([CashBetCount])  [CashBetCount]
							,sum([BonusBetAmountEur]) [BonusBetAmountEur]
							,sum([BonusWinAmountEur]) [BonusWinAmountEur]
							,sum([BonusGGRAmountEur]) [BonusGGRAmountEur]
							,sum([BonusBetCount]) [BonusBetCount]
							,sum([TotalBetAmountEur]) [TotalBetAmountEur]
							,sum([TotalWinAmountEur]) [TotalWinAmountEur]
							,sum([TotalGGRAmountEur]) [TotalGGRAmountEur]
							,sum([TotalBetCount])  [TotalBetCount]
							from [GoldblueUTC].[dbo].[ClientKPI] a
								left join [GoldblueUTC].[dbo].[Client] cl on a.ClientId = cl.id 
								left join [GoldblueUTC].[dbo].Region reg on cl.RegionId = reg.Id 
							group by a.Date,reg.Alpha2Code 	
						) kpi on dd.CalendarDt = kpi.Date and dd.Country = kpi.Country
				left join (
							select  distinct  a.Date,reg.Alpha2Code Country, count(distinct case when a.[DepositAmountEur] >0 then a.ClientId else null end) UniqueActiveDepositors
							,count(distinct case when a.[TotalBetAmountEur] >0 then a.ClientId else null end) UniqueActivePlayers
							,sum(a.[DepositAmountEur]) [DepositAmountEur]
							,sum(a.[TotalBetAmountEur]) [TotalBetAmountEur]
							,count(distinct kpia.clientid) FTDDepRet
							,count(distinct kpib.clientid) DepRet
							,count(distinct kpic.clientid) ActiveRet
							from [GoldblueUTC].[dbo].[ClientKPI] a
								join [GoldblueUTC].[dbo].[Client] cl on a.ClientId = cl.id 
								join [GoldblueUTC].[dbo].Region reg on cl.RegionId = reg.Id 
								left join [GoldblueUTC].[dbo].[ClientKPIAggregate] ftd on a.ClientId = ftd.clientid 
								left join [GoldblueUTC].[dbo].[ClientKPI] kpia on a.ClientId=kpia.ClientId and ftd.FTDDate=a.date and ftd.FTDDate = DATEADD(day,-1,a.date)
								left join [GoldblueUTC].[dbo].[ClientKPI] kpib on a.ClientId=kpib.ClientId and kpib.DepositAmount>0 and a.date = DATEADD(DAY,-1,kpib.date)
								left join [GoldblueUTC].[dbo].[ClientKPI] kpic on a.ClientId=kpic.ClientId  and a.date = DATEADD(DAY,-1,kpic.date) and kpic.[TotalBetAmountEur]>0
							group by a.Date,reg.Alpha2Code 	
						) ret on dd.CalendarDt = ret.Date and dd.Country = ret.Country
				Left join (
								SELECT DISTINCT
									convert(date,[AcceptanceDate]) [AcceptanceDate]
									  ,reg.Alpha2Code Country
									  --,sum(cb.[Amount]) [BonusIssued]	
									  --,sum(cb.[PaidAmount]) [BonusClaimed]
									  ,sum(cb.[AmountEur]) [BonusIssued]
									  ,sum(cb.[PaidAmountEur]) [BonusRedeemed]
								  FROM [GoldblueUTC].[dbo].[ClientBonus] cb
  									join [GoldblueUTC].dbo.Client cl on cb.ClientId = cl.id
									join [GoldblueUTC].[dbo].Region reg on cl.RegionId = reg.Id
									join [GoldblueUTC].dbo.Document d on cb.documentid = d.id
									join [GoldblueUTC].[dbo].[PartnerBonus] pb on cb.[PartnerBonusId] = pb.Id
								where cl.IsTest =0 
								GROUP BY reg.Alpha2Code,convert(date,[AcceptanceDate])	
							) bonus on dd.calendarDt = bonus.AcceptanceDate and dd.country = bonus.Country
)a
where a.sums <>0
order by 1,2,3

;
truncate table [GoldblueUTC].[dbo].[KPISummaryWeekly] ;
insert into [GoldblueUTC].[dbo].[KPISummaryWeekly]
select distinct 
	a.Dateid,a.CalendarDt,a.Country,a.Brand,a.BrandName, a.Registrations,a.FTD,a.[FTDAmountEur],
	a.UniqueActiveDepositors,a.[DepositAmountEur],a.[WithdrawalAmountEur],a.[NetSpreadAmountEur],
	a.UniqueActivePlayers,a.[CashBetAmountEur] ,a.[CashWinAmountEur],a.[CashGGRAmountEur],a.[CashBetCount],
	a.[BonusBetAmountEur],a.[BonusWinAmountEur],a.[BonusGGRAmountEur],a.[BonusBetCount],
	a.[TotalBetAmountEur],a.[TotalWinAmountEur],a.[TotalGGRAmountEur],a.[TotalBetCount],
	a.BonusIssued,0 Rebate,0 Cashback,0 CashBonus,0 CasioBonusWallet,0 SportBonusWallet,0 Adjustment, 
	a.BonusRedeemed,0 ApportionCost, 0 BonusRedeemedplusRebate,
	a.DepRet,a.FTDDepRet,a.ActiveRet,
	null CPA,null AcquisitionCosts, null AffiliateCosts,null OtherMarketingCosts,null BonusIssuedLine
from (
SELECT distinct
dd.Dateid,dd.CalendarDt,dd.Country,dd.Brand,dd.BrandName, reg.Registrations,fd.FTD,fd.[FTDAmountEur],
kpi.UniqueActiveDepositors,kpi.[DepositAmountEur],kpi.[WithdrawalAmountEur],kpi.[NetSpreadAmountEur],
kpi.UniqueActivePlayers,kpi.[CashBetAmountEur] ,kpi.[CashWinAmountEur],kpi.[CashGGRAmountEur],kpi.[CashBetCount],
kpi.[BonusBetAmountEur],kpi.[BonusWinAmountEur],kpi.[BonusGGRAmountEur],kpi.[BonusBetCount],
kpi.[TotalBetAmountEur],kpi.[TotalWinAmountEur],kpi.[TotalGGRAmountEur],kpi.[TotalBetCount],
bonus.BonusIssued,0 Rebate,0 Cashback,0 CashBonus,0 CasioBonusWallet,0 SportBonusWallet,0 Adjustment, 
bonus.BonusRedeemed,0 ApportionCost, 0 BonusRedeemedplusRebate,
ret.DepRet,ret.FTDDepRet,ret.ActiveRet,
null CPA,null AcquisitionCosts, null AffiliateCosts,null OtherMarketingCosts,null BonusIssuedLine
,coalesce(reg.Registrations,0)+coalesce(kpi.TotalBetAmountEur,0)+coalesce(kpi.DepositAmountEur,0)+coalesce(kpi.WithdrawalAmountEur,0) Sums

FROM 
	(  select distinct dd.Dateid,dd.calendaryearweekstartdt CalendarDt,reg.Alpha2Code Country,1 as Brand,'Happistar' as BrandName
		from [GoldblueUTC].DBO.DateDim d
			join (select distinct calendaryearweekstartdt,min(dateid) dateid from [GoldblueUTC].[dbo].DateDim d group by calendaryearweekstartdt ) dd on d.calendaryearweekstartdt = dd.calendaryearweekstartdt
			cross join [Goldblue].[dbo].Region reg 
		where reg.Alpha2Code in ('IN','JP','ID','VN','TH')	and dd.dateid>=20210901
	) dd
	left join (
				select distinct  d.calendaryearweekstartdt,a.Country,count(distinct a.clientid) Registrations
				from [GoldblueUTC].[dbo].[ClientKPIAggregate] a
					join [GoldblueUTC].[dbo].[DateDim] d on a.RegDate = d.CalendarDt
				group by d.calendaryearweekstartdt,a.Country					
			) reg on dd.CalendarDt = reg.calendaryearweekstartdt and dd.Country = reg.Country
	left join (
				select distinct  d.calendaryearweekstartdt,Country,count(distinct a.clientid) FTD,sum(a.[FTDAmountEur]) [FTDAmountEur]
				from [GoldblueUTC].[dbo].[ClientKPIAggregate] a
					join [GoldblueUTC].[dbo].[DateDim] d on a.FTDDate = d.CalendarDt
				group by d.calendaryearweekstartdt,Country					
			) fd on dd.CalendarDt = fd.calendaryearweekstartdt and dd.Country = fd.Country
	left join (
				select distinct  d.calendaryearweekstartdt,reg.Alpha2Code Country, count(distinct case when a.[DepositAmountEur] >0 then a.ClientId else null end) UniqueActiveDepositors,
				count(distinct case when a.[TotalBetAmountEur] >0 then a.ClientId else null end) UniqueActivePlayers,
				sum([DepositAmountEur]) [DepositAmountEur],sum([DepositCount]) [DepositCount],sum([WithdrawalAmountEur]) [WithdrawalAmountEur],sum([NetSpreadAmountEur]) [NetSpreadAmountEur],
				sum([CashBetAmountEur]) [CashBetAmountEur]
				,sum([CashWinAmountEur]) [CashWinAmountEur]
				,sum([CashGGRAmountEur]) [CashGGRAmountEur]
				,sum([CashBetCount])  [CashBetCount]
				,sum([BonusBetAmountEur]) [BonusBetAmountEur]
				,sum([BonusWinAmountEur]) [BonusWinAmountEur]
				,sum([BonusGGRAmountEur]) [BonusGGRAmountEur]
				,sum([BonusBetCount]) [BonusBetCount]
				,sum([TotalBetAmountEur]) [TotalBetAmountEur]
				,sum([TotalWinAmountEur]) [TotalWinAmountEur]
				,sum([TotalGGRAmountEur]) [TotalGGRAmountEur]
				,sum([TotalBetCount])  [TotalBetCount]
				from [GoldblueUTC].[dbo].[ClientKPI] a
					join [GoldblueUTC].[dbo].[DateDim] d on a.Date = d.CalendarDt
					join [GoldblueUTC].[dbo].[Client] cl on a.ClientId = cl.id 
					join [GoldblueUTC].[dbo].Region reg on cl.RegionId = reg.Id 
				group by d.calendaryearweekstartdt,reg.Alpha2Code 	
			) kpi on dd.CalendarDt = kpi.calendaryearweekstartdt and dd.Country = kpi.Country
	left join (
					select distinct
						d.calendaryearweekstartdt,reg.Alpha2Code Country
						,count(distinct case when a.[DepositAmountEur] >0 then a.ClientId else null end) UniqueActiveDepositors
						,count(distinct case when a.[TotalBetAmountEur] >0 then a.ClientId else null end) UniqueActivePlayers
						,sum(a.[DepositAmountEur]) [DepositAmountEur]
						,sum(a.[TotalBetAmountEur]) [TotalBetAmountEur]
						,count(distinct kpia.clientid) FTDDepRet
						,count(distinct kpib.clientid) DepRet
						,count(distinct kpic.clientid) ActiveRet
					from [GoldblueUTC].[dbo].[ClientKPI] a
						join [GoldblueUTC].[dbo].[DateDim] d on a.Date = d.CalendarDt
						join [GoldblueUTC].[dbo].[Client] cl on a.ClientId = cl.id 
						join [GoldblueUTC].[dbo].Region reg on cl.RegionId = reg.Id 
						left join (	
									select distinct d.calendaryearweekstartdt FTDDate,ftd.clientid
									from [GoldblueUTC].[dbo].[ClientKPIAggregate] ftd 
										join [GoldblueUTC].[dbo].[DateDim] d on ftd.FTDDate = d.CalendarDt
									)ftd on a.ClientId = ftd.ClientId
						left join (	
								select distinct d.calendaryearweekstartdt ,a.clientid
								from [GoldblueUTC].[dbo].[ClientKPI] a
									join [GoldblueUTC].[dbo].[DateDim] d on a.date = d.CalendarDt
								--where a.ClientId = 441781766
								) kpia on a.ClientId = kpia.clientid and d.calendaryearweekstartdt = ftd.FTDDate and   ftd.FTDDate = DATEADD(WEEK,-1,kpia.calendaryearweekstartdt)	
						left join (	
									select distinct d.calendaryearweekstartdt,a.clientid,sum(a.[DepositAmountEur]) [DepositAmountEur]
									from [GoldblueUTC].[dbo].[ClientKPI] a
										join [GoldblueUTC].[dbo].[DateDim] d on a.[Date] = d.CalendarDt
									--where a.ClientId = 441781766
									group by d.calendaryearweekstartdt,a.clientid
								) kpib on a.ClientId=kpib.ClientId and kpib.[DepositAmountEur]>0 and d.calendaryearweekstartdt = DATEADD(week,-1,kpib.calendaryearweekstartdt)
						left join (	
									select distinct d.calendaryearweekstartdt,a.clientid,sum(a.[TotalBetAmountEur]) [TotalBetAmountEur]
									from [GoldblueUTC].[dbo].[ClientKPI] a
										join [GoldblueUTC].[dbo].[DateDim] d on a.[Date] = d.CalendarDt
									--where a.ClientId = 441781766
									group by d.calendaryearweekstartdt,a.clientid
								) kpic on a.ClientId=kpic.ClientId  and d.calendaryearweekstartdt = DATEADD(week,-1,kpic.calendaryearweekstartdt) and kpic.[TotalBetAmountEur]>0
					group by d.calendaryearweekstartdt,reg.Alpha2Code 
			) ret on dd.CalendarDt = ret.calendaryearweekstartdt and dd.Country = ret.Country
				Left join (
								SELECT DISTINCT
									dd.calendaryearweekstartdt [AcceptanceDate]
									  ,reg.Alpha2Code Country
									  --,sum(cb.[Amount]) [BonusIssued]	
									  --,sum(cb.[PaidAmount]) [BonusClaimed]
									  ,sum(cb.[AmountEur]) [BonusIssued]
									  ,sum(cb.[PaidAmountEur]) [BonusRedeemed]
								  FROM [GoldblueUTC].[dbo].[ClientBonus] cb
  									join [GoldblueUTC].dbo.Client cl on cb.ClientId = cl.id
									join [GoldblueUTC].[dbo].Region reg on cl.RegionId = reg.Id
									join [GoldblueUTC].dbo.Document d on cb.documentid = d.id
									join [GoldblueUTC].[dbo].[PartnerBonus] pb on cb.[PartnerBonusId] = pb.Id
									join [GoldblueUTC].[dbo].[DateDim] dd on convert(date,[AcceptanceDate]) = dd.CalendarDt
								where cl.IsTest =0 
								GROUP BY reg.Alpha2Code,dd.calendaryearweekstartdt	
							) bonus on dd.calendarDt = bonus.AcceptanceDate and dd.country = bonus.Country

)a
where a.sums <>0
order by 1,2,3
;
truncate table [GoldblueUTC].[dbo].[KPISummaryMonthly] ;
insert into [GoldblueUTC].[dbo].[KPISummaryMonthly]
select distinct 
	a.Dateid,a.CalendarDt,a.Country,a.Brand,a.BrandName, a.Registrations,a.FTD,a.[FTDAmountEur],
	a.UniqueActiveDepositors,a.[DepositAmountEur],a.[WithdrawalAmountEur],a.[NetSpreadAmountEur],
	a.UniqueActivePlayers,a.[CashBetAmountEur] ,a.[CashWinAmountEur],a.[CashGGRAmountEur],a.[CashBetCount],
	a.[BonusBetAmountEur],a.[BonusWinAmountEur],a.[BonusGGRAmountEur],a.[BonusBetCount],
	a.[TotalBetAmountEur],a.[TotalWinAmountEur],a.[TotalGGRAmountEur],a.[TotalBetCount],
	a.BonusIssued,0 Rebate,0 Cashback,0 CashBonus,0 CasioBonusWallet,0 SportBonusWallet,0 Adjustment, 
	a.BonusRedeemed,0 ApportionCost, 0 BonusRedeemedplusRebate,
	a.DepRet,a.FTDDepRet,a.ActiveRet,
	null CPA,null AcquisitionCosts, null AffiliateCosts,null OtherMarketingCosts,null BonusIssuedLine
from (
			SELECT distinct
			dd.Dateid,dd.CalendarDt,dd.Country,dd.Brand,dd.BrandName, reg.Registrations,fd.FTD,fd.[FTDAmountEur],
			kpi.UniqueActiveDepositors,kpi.[DepositAmountEur],kpi.[WithdrawalAmountEur],kpi.[NetSpreadAmountEur],
			kpi.UniqueActivePlayers,kpi.[CashBetAmountEur] ,kpi.[CashWinAmountEur],kpi.[CashGGRAmountEur],kpi.[CashBetCount],
			kpi.[BonusBetAmountEur],kpi.[BonusWinAmountEur],kpi.[BonusGGRAmountEur],kpi.[BonusBetCount],
			kpi.[TotalBetAmountEur],kpi.[TotalWinAmountEur],kpi.[TotalGGRAmountEur],kpi.[TotalBetCount],
			bonus.BonusIssued,0 Rebate,0 Cashback,0 CashBonus,0 CasioBonusWallet,0 SportBonusWallet,0 Adjustment, 
			bonus.BonusRedeemed,0 ApportionCost, 0 BonusRedeemedplusRebate,
			ret.DepRet,ret.FTDDepRet,ret.ActiveRet,
			null CPA,null AcquisitionCosts, null AffiliateCosts,null OtherMarketingCosts,null BonusIssuedLine
			,coalesce(reg.Registrations,0)+coalesce(kpi.TotalBetAmountEur,0)+coalesce(kpi.DepositAmountEur,0)+coalesce(kpi.WithdrawalAmountEur,0) Sums
			FROM 
				(  select distinct dd.Dateid,dd.CalendarYearMonthStartDt CalendarDt,reg.Alpha2Code Country,1 as Brand,'Happistar' as BrandName
					from [GoldblueUTC].DBO.DateDim d
						join (select distinct CalendarYearMonthStartDt,min(dateid) dateid from [GoldblueUTC].[dbo].DateDim d group by CalendarYearMonthStartDt ) dd on d.CalendarYearMonthStartDt = dd.CalendarYearMonthStartDt
						cross join [Goldblue].[dbo].Region reg 
					where reg.Alpha2Code in ('IN','JP','ID','VN','TH')	
					and d.dateid>=20210901
				) dd
				left join (
							select distinct  d.CalendarYearMonthStartDt,a.Country,count(distinct a.clientid) Registrations
							from [GoldblueUTC].[dbo].[ClientKPIAggregate] a
								join [GoldblueUTC].[dbo].[DateDim] d on a.RegDate = d.CalendarDt
							group by d.CalendarYearMonthStartDt,a.Country					
						) reg on dd.CalendarDt = reg.CalendarYearMonthStartDt and dd.Country = reg.Country
				left join (
							select distinct  d.CalendarYearMonthStartDt,Country,count(distinct a.clientid) FTD,sum(a.[FTDAmountEur]) [FTDAmountEur]
							from [GoldblueUTC].[dbo].[ClientKPIAggregate] a
								join [GoldblueUTC].[dbo].[DateDim] d on a.FTDDate = d.CalendarDt
							group by d.CalendarYearMonthStartDt,Country					
						) fd on dd.CalendarDt = fd.CalendarYearMonthStartDt and dd.Country = fd.Country
				left join (
							select distinct  d.CalendarYearMonthStartDt,reg.Alpha2Code Country, count(distinct case when a.[DepositAmountEur] >0 then a.ClientId else null end) UniqueActiveDepositors,
							count(distinct case when a.[TotalBetAmountEur] >0 then a.ClientId else null end) UniqueActivePlayers,
							sum([DepositAmountEur]) [DepositAmountEur],sum([DepositCount]) [DepositCount],sum([WithdrawalAmountEur]) [WithdrawalAmountEur],sum([NetSpreadAmountEur]) [NetSpreadAmountEur],
							sum([CashBetAmountEur]) [CashBetAmountEur]
							,sum([CashWinAmountEur]) [CashWinAmountEur]
							,sum([CashGGRAmountEur]) [CashGGRAmountEur]
							,sum([CashBetCount])  [CashBetCount]
							,sum([BonusBetAmountEur]) [BonusBetAmountEur]
							,sum([BonusWinAmountEur]) [BonusWinAmountEur]
							,sum([BonusGGRAmountEur]) [BonusGGRAmountEur]
							,sum([BonusBetCount]) [BonusBetCount]
							,sum([TotalBetAmountEur]) [TotalBetAmountEur]
							,sum([TotalWinAmountEur]) [TotalWinAmountEur]
							,sum([TotalGGRAmountEur]) [TotalGGRAmountEur]
							,sum([TotalBetCount])  [TotalBetCount]
							from [GoldblueUTC].[dbo].[ClientKPI] a
								join [GoldblueUTC].[dbo].[DateDim] d on a.Date = d.CalendarDt
								join [GoldblueUTC].[dbo].[Client] cl on a.ClientId = cl.id 
								join [GoldblueUTC].[dbo].Region reg on cl.RegionId = reg.Id 
							group by d.CalendarYearMonthStartDt,reg.Alpha2Code 	
						) kpi on dd.CalendarDt = kpi.CalendarYearMonthStartDt and dd.Country = kpi.Country
				left join (
								select distinct
									d.CalendarYearMonthStartDt,reg.Alpha2Code Country
									,count(distinct case when a.[DepositAmountEur] >0 then a.ClientId else null end) UniqueActiveDepositors
									,count(distinct case when a.[TotalBetAmountEur] >0 then a.ClientId else null end) UniqueActivePlayers
									,sum(a.[DepositAmountEur]) [DepositAmountEur]
									,sum(a.[TotalBetAmountEur]) [TotalBetAmountEur]
									,count(distinct kpia.clientid) FTDDepRet
									,count(distinct kpib.clientid) DepRet
									,count(distinct kpic.clientid) ActiveRet
								from [GoldblueUTC].[dbo].[ClientKPI] a
									join [GoldblueUTC].[dbo].[DateDim] d on a.Date = d.CalendarDt
									join [GoldblueUTC].[dbo].[Client] cl on a.ClientId = cl.id 
									join [GoldblueUTC].[dbo].Region reg on cl.RegionId = reg.Id 
									left join (	
												select distinct d.CalendarYearMonthStartDt FTDDate,ftd.clientid
												from [GoldblueUTC].[dbo].[ClientKPIAggregate] ftd 
													join [GoldblueUTC].[dbo].[DateDim] d on ftd.FTDDate = d.CalendarDt
												)ftd on a.ClientId = ftd.ClientId
									left join (	
											select distinct d.CalendarYearMonthStartDt ,a.clientid
											from [GoldblueUTC].[dbo].[ClientKPI] a
												join [GoldblueUTC].[dbo].[DateDim] d on a.date = d.CalendarDt
											--where a.ClientId = 441781766
											) kpia on a.ClientId = kpia.clientid and d.CalendarYearMonthStartDt = ftd.FTDDate and   ftd.FTDDate = DATEADD(month,-1,kpia.CalendarYearMonthStartDt)	
									left join (	
												select distinct d.CalendarYearMonthStartDt,a.clientid,sum(a.[DepositAmountEur]) [DepositAmountEur]
												from [GoldblueUTC].[dbo].[ClientKPI] a
													join [GoldblueUTC].[dbo].[DateDim] d on a.[Date] = d.CalendarDt
												--where a.ClientId = 441781766
												group by d.CalendarYearMonthStartDt,a.clientid
											) kpib on a.ClientId=kpib.ClientId and kpib.[DepositAmountEur]>0 and d.CalendarYearMonthStartDt = DATEADD(month,-1,kpib.CalendarYearMonthStartDt)
									left join (	
												select distinct d.CalendarYearMonthStartDt,a.clientid,sum(a.[TotalBetAmountEur]) [TotalBetAmountEur]
												from [GoldblueUTC].[dbo].[ClientKPI] a
													join [GoldblueUTC].[dbo].[DateDim] d on a.[Date] = d.CalendarDt
												--where a.ClientId = 441781766
												group by d.CalendarYearMonthStartDt,a.clientid
											) kpic on a.ClientId=kpic.ClientId  and d.CalendarYearMonthStartDt = DATEADD(month,-1,kpic.CalendarYearMonthStartDt) and kpic.[TotalBetAmountEur]>0
								group by d.CalendarYearMonthStartDt,reg.Alpha2Code 
						) ret on dd.CalendarDt = ret.CalendarYearMonthStartDt and dd.Country = ret.Country
							Left join (
											SELECT DISTINCT
												dd.CalendarYearMonthStartDt [AcceptanceDate]
												  ,reg.Alpha2Code Country
												  --,sum(cb.[Amount]) [BonusIssued]	
												  --,sum(cb.[PaidAmount]) [BonusClaimed]
												  ,sum(cb.[AmountEur]) [BonusIssued]
												  ,sum(cb.[PaidAmountEur]) [BonusRedeemed]
											  FROM [GoldblueUTC].[dbo].[ClientBonus] cb
  												join [GoldblueUTC].dbo.Client cl on cb.ClientId = cl.id
												join [GoldblueUTC].[dbo].Region reg on cl.RegionId = reg.Id
												join [GoldblueUTC].dbo.Document d on cb.documentid = d.id
												join [GoldblueUTC].[dbo].[PartnerBonus] pb on cb.[PartnerBonusId] = pb.Id
												join [GoldblueUTC].[dbo].[DateDim] dd on convert(date,[AcceptanceDate]) = dd.CalendarDt
											where cl.IsTest =0 
											GROUP BY reg.Alpha2Code,dd.CalendarYearMonthStartDt	
										) bonus on dd.calendarDt = bonus.AcceptanceDate and dd.country = bonus.Country

)a
where a.Sums<>0
order by 1,2,3


