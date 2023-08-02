with Hotels as (
select * from dbo.['2018$']
union
select * from dbo.['2019$']
union
select * from dbo.['2020$']
)
select * 
from Hotels
left join dbo.market_segment$
	on Hotels.market_segment = dbo.market_segment$.market_segment
left join dbo.meal_cost$
	on Hotels.meal = dbo.meal_cost$.meal;
