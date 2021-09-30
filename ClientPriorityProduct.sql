/*
 
 select distinct 
	cl.id Clientid,fd.FTDDate,
	kpi.[CasinoTotalBetAmount] [CasinoTotalBetAmountFirstWeek],kpi.[SportTotalBetAmount] [SportTotalBetAmountFistWeek],kpilt.[CasinoTotalBetAmount] [CasinoTotalBetAmountLifetime],kpilt.[SportTotalBetAmount] [SportTotalBetAmountLifetime]
	,count(distinct case when kpi.[CasinoTotalBetAmount]>0 then [Date] else null end ) CasinoDaysFirstWeek 
	,count(distinct case when kpi.[SportTotalBetAmount]>0 then [Date] else null end) SportDaysFirstWeek,
	,count(distinct case when kpilt.[CasinoTotalBetAmount]>0 then [Date] else null end ) CasinoDaysLifetime 
	,count(distinct case when kpilt.[SportTotalBetAmount]>0 then [Date] else null end) SportDaysLifetime
 from goldblue.dbo.client cl
	left join (
					select distinct cr.clientid,convert(date,DATEADD(HOUR,4,cr.AllowTime)) FTDDate, cr.Amount FTDAmount,cr.CurrencyId Currency
					from [Goldblue].[dbo].ClientRequest cr
						join ( select distinct cr.clientid,min(cr.paymentdocumentid) paymentdocumentid from [Goldblue].[dbo].ClientRequest cr where cr.Type =2 and cr.State = 3 group by cr.clientid) b on cr.ClientId = b.ClientId and cr.PaymentDocumentId = b.paymentdocumentid
					where cr.Type =2 and cr.State = 3					
				) fd on cl.id = fd.ClientId 
	left join (	
						SELECT distinct [ClientId],[Date]
							,count(distinct case when [CasinoBetAmount]+[CasinoBonusBetAmount]>0 then [Date] else null end ) CasinoDaysFirstWeek 
							,count(distinct case when [SportBetAmount]+[SportBonusBetAmount]>0 then [Date] else null end) SportDaysFirstWeek
							,sum([CasinoBetAmount])+sum([CasinoBonusBetAmount])  [CasinoTotalBetAmount]
							,sum([CasinoBetAmount]) [CasinoCashBetAmount]
							,sum([CasinoBonusBetAmount]) [CasinoBonusBetAmount]
							,sum([SportBetAmount])+sum([SportBonusBetAmount]) [SportTotalBetAmount]
							,sum([SportBetAmount]) [SportCashBetAmount]
							,sum([SportBonusBetAmount]) [SportBonusBetAmount]
						FROM [Goldblue].[dbo].[ClientKPI]
						group by [ClientId],[Date]
			) kpi on cl.id = kpi.ClientId and kpi.Date>= fd.FTDDate and kpi.Date<= DATEADD(day,7,fd.FTDDate)
	left join (	
						SELECT distinct [ClientId]
							,count(distinct case when [CasinoBetAmount]+[CasinoBonusBetAmount]>0 then [Date] else null end ) CasinoDaysLifetime 
							,count(distinct case when [SportBetAmount]+[SportBonusBetAmount]>0 then [Date] else null end) SportDaysLifetime
							,sum([CasinoBetAmount])+sum([CasinoBonusBetAmount])  [CasinoTotalBetAmount]
							,sum([CasinoBetAmount]) [CasinoCashBetAmount]
							,sum([CasinoBonusBetAmount]) [CasinoBonusBetAmount]
							,sum([SportBetAmount])+sum([SportBonusBetAmount]) [SportTotalBetAmount]
							,sum([SportBetAmount]) [SportCashBetAmount]
							,sum([SportBonusBetAmount]) [SportBonusBetAmount]
						FROM [Goldblue].[dbo].[ClientKPI]
						group by [ClientId],[Date]
			) kpilt on cl.id = kpilt.ClientId 


create table Goldblue.dbo.ClientPriorityProduct
	(	ClientId int not null,
		FirstPriorityProductDaysFirstWeek nvarchar(255) not null,
		FirstPriorityProductBetAmountsFirstWeek nvarchar(255) not null,
		FirstPriorityProductDaysLifetime nvarchar(255) not null,
		FirstPriorityProductBetAmountsLifetime nvarchar(255) not null
	);*/

truncate table Goldblue.dbo.ClientPriorityProduct;
insert into Goldblue.dbo.ClientPriorityProduct
select 
	a.Clientid,
	case when coalesce(a.CasinoDaysFirstWeek+a.SportDaysFirstWeek,0) =0 then 'No Activity'
		when a.CasinoDaysFirstWeek > a.SportDaysFirstWeek then 'Casino' 
		when a.CasinoDaysFirstWeek < a.SportDaysFirstWeek then 'Sports' else 'Mixed' end FirstPriorityProductDaysFirstWeek,
	case when coalesce(a.[CasinoTotalBetAmountFirstWeek]+a.[SportTotalBetAmountFistWeek],0) =0 then 'No Activity'
		when a.[CasinoTotalBetAmountFirstWeek] > a.[SportTotalBetAmountFistWeek] then 'Casino' 
		when a.[CasinoTotalBetAmountFirstWeek] < a.[SportTotalBetAmountFistWeek] then 'Sports' else 'Mixed' end FirstPriorityProductBetAmountsFirstWeek,
	case when coalesce(a.CasinoDaysLifetime+a.SportDaysLifetime,0) =0 then 'No Activity'
		when a.CasinoDaysLifetime > a.SportDaysLifetime then 'Casino' 
		when a.CasinoDaysLifetime < a.SportDaysLifetime then 'Sports' else 'Mixed' end FirstPriorityProductDaysLifetime,
	case when coalesce(a.[CasinoTotalBetAmountLifetime]+a.[SportTotalBetAmountLifetime],0) =0 then 'No Activity'
		when a.[CasinoTotalBetAmountLifetime] > a.[SportTotalBetAmountLifetime] then 'Casino' 
		when a.[CasinoTotalBetAmountLifetime] < a.[SportTotalBetAmountLifetime] then 'Sports' else 'Mixed' end FirstPriorityProductBetAmountsLifetime

from (
		 select distinct 
			cl.id Clientid,fd.FTDDate
			,count(distinct case when kpi.[CasinoBetAmount]+kpi.[CasinoBonusBetAmount]>0 then kpi.[Date] else null end ) CasinoDaysFirstWeek 
			,count(distinct case when kpi.[SportBetAmount]+kpi.[SportBonusBetAmount]>0 then kpi.[Date] else null end) SportDaysFirstWeek
			,sum(kpi.[CasinoBetAmount])+sum(kpi.[CasinoBonusBetAmount])  [CasinoTotalBetAmountFirstWeek]
			,sum(kpi.[SportBetAmount])+sum(kpi.[SportBonusBetAmount]) [SportTotalBetAmountFistWeek]
			,count(distinct case when kpilt.[CasinoBetAmount]+kpilt.[CasinoBonusBetAmount]>0 then kpilt.[Date] else null end ) CasinoDaysLifetime 
			,count(distinct case when kpilt.[SportBetAmount]+kpilt.[SportBonusBetAmount]>0 then kpilt.[Date] else null end) SportDaysLifetime
			,sum(kpilt.[CasinoBetAmount])+sum(kpilt.[CasinoBonusBetAmount])  [CasinoTotalBetAmountLifetime]
			,sum(kpilt.[SportBetAmount])+sum(kpilt.[SportBonusBetAmount]) [SportTotalBetAmountLifetime]
		from goldblue.dbo.client cl
			left join (
							select distinct cr.clientid,convert(date,DATEADD(HOUR,4,cr.AllowTime)) FTDDate, cr.Amount FTDAmount,cr.CurrencyId Currency
							from [Goldblue].[dbo].ClientRequest cr
								join ( select distinct cr.clientid,min(cr.paymentdocumentid) paymentdocumentid from [Goldblue].[dbo].ClientRequest cr where cr.Type =2 and cr.State = 3 group by cr.clientid) b on cr.ClientId = b.ClientId and cr.PaymentDocumentId = b.paymentdocumentid
							where cr.Type =2 and cr.State = 3					
						) fd on cl.id = fd.ClientId 
			left join [Goldblue].[dbo].[ClientKPI] kpi on cl.id = kpi.ClientId and kpi.Date>= fd.FTDDate and kpi.Date<= DATEADD(day,7,fd.FTDDate)
			left join [Goldblue].[dbo].[ClientKPI] kpilt on cl.id = kpilt.ClientId and kpi.Date>= fd.FTDDate
		group by 
			cl.id ,fd.FTDDate
)a 	