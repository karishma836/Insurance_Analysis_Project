
show databases;
create schema Insurance;
use insurance;

                 #KPI_1 No of Invoice by Accnt Exec...
select Account_Executive, income_class, count(invoice_number) Invoice_No
from invoice
group by Account_Executive, income_class;

                  #KPI_2 Yearly Meeting Count...                
 SELECT YEAR(meeting_date) as year,count(meeting_date) as No_Meeting_Count from meeting
 group by YEAR;
 
 				  # kpi_3_(1) New--Target,Achive,new
select b.income_class , round(sum(b.Amount)) Acheived,
(select sum(i.Amount)
from invoice i
where i.income_class = 'new') as Invoice,
(select sum(New_Budget)
from `individual budgets`) Target
from brokerage_fees b 
where b.income_class = 'new'
group by b.income_class ; 
  
				 # kpi_3_(2) Cross Sell--Target,Achive,new
select b.income_class , round(sum(b.Amount)) Acheived,
(select sum(i.Amount)
from invoice i
where i.income_class = 'cross sell') as Invoice,
(select sum(Cross_sell_bugdet)
from `individual budgets`) Target
from brokerage_fees b 
where b.income_class = 'cross sell'
group by b.income_class ;

			   # kpi_3_(3) Renewal--Target,Achive,new   
 select b.income_class , round(sum(b.Amount)) Acheived,
(select sum(i.Amount)
from invoice i
where i.income_class = 'Renewal') as Invoice,
(select sum(Renewal_Budget)
from `individual budgets`) Target
from brokerage_fees b 
where b.income_class = 'renewal'
group by b.income_class ; 

			  #KPI_4 Stage Funnel by Revenue....
SELECT STAGE , SUM(revenue_amount) Revenue_amt
from  opportunity
group by  stage;

               #KPI_5 No of meeting By Account Exe..
select 'Account Executive' , count(meeting_date) No_of_Meeting
from meeting
group by 'Account executive'
order by No_of_Meeting;
  

			  #KPI_6 Top Open Opportunity
SELECT COUNT( opportunity_id ) Open_Opportunity
FROM opportunity
WHERE STAGE = 'Qualify Opportunity' ;
 
			  #KPI_6 Top Opportunity
 SELECT COUNT( opportunity_id ) Open_Opportunity
 FROM opportunity;
 
             #KPI_7 Oppty by Revenue-Top 4
select opportunity_name, revenue_amount as Revenue_amt
from opportunity
ORDER BY revenue_amount DESC
limit 4;

              #KPI_8 Oppty Product Distribution
SELECT product_group, count(revenue_amount) Revenue_amt
FROM opportunity
group by product_group;

              #KPI_9 Top Open Opportunity by revenue
  select  opportunity_name, revenue_amount
  from opportunity
  where stage = 'Qualify Opportunity'
  order by revenue_amount desc
  limit 4;


#Create and append both table to know the achieved_amt from brokerage and fees table
create table Brokerage_fees as
select  income_class, Amount from brokerage
union all 
select income_class, Amount from fees;


				  # kpi_3_(1) New--Target,Achive,new
select b.income_class , round(sum(b.Amount)) Acheived,
(select sum(i.Amount)
from invoice i
where i.income_class = 'new') as Invoice,
(select sum(New_Budget)
from `individual budgets`) Target
from brokerage_fees b 
where b.income_class = 'new'
group by b.income_class ; 
  
				 # kpi_3_(2) Cross Sell--Target,Achive,new
select b.income_class , round(sum(b.Amount)) Acheived,
(select sum(i.Amount)
from invoice i
where i.income_class = 'cross sell') as Invoice,
(select sum(Cross_sell_bugdet)
from `individual budgets`) Target
from brokerage_fees b 
where b.income_class = 'cross sell'
group by b.income_class ;

			   # kpi_3_(3) Renewal--Target,Achive,new   
 select b.income_class , round(sum(b.Amount)) Acheived,
(select sum(i.Amount)
from invoice i
where i.income_class = 'Renewal') as Invoice,
(select sum(Renewal_Budget)
from `individual budgets`) Target
from brokerage_fees b 
where b.income_class = 'renewal'
group by b.income_class ; 