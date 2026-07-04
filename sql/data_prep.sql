Air Jordan Resale Analysis: Data Preparation
Purpose: Aggregate 5K transactions into analysis-ready table for Power BI
Author: Wilfred Gatimu

select*
From jordanmarketdata
;
Select	
round(sum(Resale_Price_USD), 2) As total_revenue,    
round(sum(Profit_Margin_USD), 2) As total_profit
From jordanmarketdata
;

Select	
      date_format(Sale_Date, '%Y - %m') As month,    
      sum(Resale_Price_USD) As revenue
From jordanmarketdata
group by month
order by month
;
Select	
     round(sum(Resale_Price_USD), 2) As total_revenue,    
     round(sum(Profit_Margin_USD), 2) As total_profit
From jordanmarketdata
;
select*
From jordanmarketdata
;
Select
 	Shoe_Model, 
    sum(Resale_Price_USD) As revenue
From jordanmarketdata
group by Shoe_Model
order by revenue Desc
;
Select 	
     Shoe_Model, 
     round(sum(Resale_Price_USD), 2) As revenue
From jordanmarketdata
group by Shoe_Model
order by revenue Desc
Limit 5
;

Select 	
     Shoe_Model, 
     round(sum(Profit_Margin_USD), 2) As profit
From jordanmarketdata
group by Shoe_Model
Having sum(Profit_Margin_USD) >= 60000
;

Select 	
    Shoe_Model, 
    round(sum(Resale_Price_USD), 2) As revenue
From jordanmarketdata
group by Shoe_Model
order by revenue Desc
Limit 5
;


Select	
     Count(*) As total_transactions,	
     round(sum(Resale_Price_USD), 2) As total_resale_revenue,    
     round(sum(Retail_Price_USD), 2) As total_Retail_cost,    
     round(sum(Profit_Margin_USD), 2) As total_profit
From jordanmarketdata
;
Select 	
     avg(Resale_Price_USD) As avg_resale_price,    
     avg(Profit_Margin_USD) As avg_profit_margin,    
     Avg(Days_in_Inventory) As avg_days_in_inventory
From jordanmarketdata
;
Select	
    Shoe_Model,    
    Count(*) As total_sales
From jordanmarketdata
Group by Shoe_Model
order by total_sales Desc
;
Select 	
round(avg(Resale_Price_USD), 2) As avg_resale_price,   
round(avg(Profit_Margin_USD), 2) As avg_profit_margin,   
round(Avg(Days_in_Inventory), 2) As avg_days_in_inventory
From jordanmarketdata
;
Select 	
   Shoe_Model,    
   count(*) As transactions,	
   round(sum(Profit_Margin_USD), 2) As total_profit,    
   round(avg(Profit_Margin_USD), 2) As avg_profit
From jordanmarketdata
Group by Shoe_Model
Order by total_profit Desc
;

Select	
     Shoe_Model,    
     Count(*) As total_sales
From jordanmarketdata
Group by Shoe_Model
order by total_sales Desc
;
Select 	
     Shoe_Model,    
     count(*) As transactions,	
     round(sum(Profit_Margin_USD), 2) As total_profit,    
     round(avg(Profit_Margin_USD), 2) As avg_profit
From jordanmarketdata
Group by Shoe_Model
Order by total_profit Desc
;


Select 	
      Shoe_Model,    
      count(*) As transactions,	
      round(sum(Profit_Margin_USD), 2) As total_profit
From jordanmarketdata
Group by Shoe_Model
Order by total_profit Asc
;
select *
From jordanmarketdata
;
Select 	
      `Condition`,    
      Count(*) As total_sales,	
      round(sum(Profit_Margin_USD), 2) As total_profit,    
      round(avg(Profit_Margin_USD), 2) As avg_profit
From jordanmarketdata
Group by `condition`
order by total_profit Desc
;
select*
From jordanmarketdata
;
Select 	
     Sales_Channel,    
     count(*) As total_sales,    
     round(sum(Resale_Price_USD), 2) As total_revenue,    
     round(sum(Profit_Margin_USD), 2) As total_profit,    
     round(Avg(Profit_Margin_USD), 2) As avg_profit
From jordanmarketdata
Group by Sales_Channel
order by total_profit Desc
;

Select 	 
      Colorway,     
      Count(*) As total_sales,     
      round(sum(Resale_Price_USD), 2) As total_revenue
From jordanmarketdata
Group by Colorway
Order by total_revenue Desc
;
Select 	 
      Colorway,     
      Count(*) As total_sales,     
      round(sum(Resale_Price_USD), 2) As total_revenue
From jordanmarketdata
Group by Colorway
Order by total_revenue Desc
limit 5
;
Select 	
      colorway,    
      round(sum(Profit_Margin_USD), 2) As total_profit,    
      round(Avg(Profit_Margin_USD), 2) As avg_profit
From jordanmarketdata
Group by colorway
Order by total_profit Desc
;
Select 	
     colorway,    
     round(sum(Profit_Margin_USD), 2) As total_profit,    
     round(Avg(Profit_Margin_USD), 2) As avg_profit
From jordanmarketdata
Group by colorway
Order by total_profit Desc
Limit 5
;
Select *
From jordanmarketdata
;
Select	
      year(Sale_Date) As sale_year,    
      month(Sale_Date) As sale_month,    
      count(*) As total_transactions,    
      round(sum(Resale_Price_USD), 2) As monthly_revenue,    
      round(sum(Profit_Margin_USD), 2) As montly_profit
From jordanmarketdata
Group by year(sale_date), month(sale_date)
order by sale_year, sale_month
;
Select 	
      year(Sale_Date) As sale_year,    
      Count(*) As total_transactions,      
      round(sum(Resale_Price_USD), 2) As total_revenue,    
      round(sum(Profit_Margin_USD), 2) As total_profit
From jordanmarketdata
group by year(sale_date)
Order by sale_year
;
Select *
From jordanmarketdata
;
Select 	
      shoe_model,    
      Avg(Days_in_Inventory) As Avg_Inventory_days,    
      Count(*) As total_sales
From jordanmarketdata
Group by shoe_model
Order by Avg_Inventory_days Asc
;
Select 	
      shoe_model,    
      Avg(Days_in_Inventory) As Avg_Inventory_days,    
      Count(*) As total_sales
From jordanmarketdata
Group by shoe_model
Order by Avg_Inventory_days Desc
;
Select* 
From jordanmarketdata
;
Select 		
      Transaction_ID,    
      Sale_Date,    
      Shoe_Model,    
      Colorway,    
      Sales_Channel,    
      Resale_Price_USD,    
      Profit_Margin_USD
from jordanmarketdata
order by Profit_Margin_USD Desc
Limit 10
;
Select	
        Transaction_ID,    
        Shoe_Model,    
        retail_price_usd,    
        Resale_Price_USD,    
        Profit_Margin_USD,    
        Round((profit_margin_usd /  retail_price_usd) * 100,2) As Profit_margin_pct
From jordanmarketdata
;
Select 	
       shoe_model,    
       Round(Avg((profit_margin_usd / retail_price_usd) * 100), 2) As avg_margin_pct
From jordanmarketdata
Group by shoe_model
order by avg_margin_pct Desc
;
Select 	
     shoe_model,    
	Sum(profit_margin_usd) As total_profit,    
    Rank() over (order by sum(profit_margin_usd) Desc) As profit_rank
From jordanmarketdata
Group by shoe_model
;
Select 	
     sales_channel,    
     Sum(resale_price_usd) As total_revenue,    
     Rank() over (order by sum(resale_price_usd) Desc) As revenue_rank
from jordanmarketdata
Group by sales_channel
;
Select 	
     `condition`,    
     Count(*) As transactions,    
     avg(retail_price_usd) As avg_retail_price,    
     Avg(resale_price_usd) As avg_resale_price,    
     Avg(profit_margin_usd) As Avg_profit,    
     Avg(days_in_inventory) As avg_inventory_days
From jordanmarketdata
Group by `condition`
;
