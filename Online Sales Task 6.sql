-- Distinct transaction_ID count

select count(distinct Transaction_ID) FROM online_sales_data ;

-- Product category wise total product names

select distinct Product_Category, count(Product_Name) as Total_products from online_sales_data group by Product_Category;

-- Extract month from date column and convert it into name of the month

SELECT MONTH(STR_TO_DATE(Date, '%d/%m/%Y')) AS month_number from online_sales_data;

select monthname(str_to_date(Date, '%d/%m/%Y')) AS Month_Name from online_sales_data;

-- Retrive month wise product category total unit sold

select  Distinct Product_Category, monthname(str_to_date(Date, '%d/%m/%Y')) AS Month_Name, sum(Units_Sold) as unit_sold 
from online_sales_data group by Month_Name, Product_Category order by unit_sold desc;

-- Which product has the  highest  Total Unit price

select distinct Product_Name, sum(round(Unit_Price)) as Total_Unit_Price from online_sales_data 
group by Product_Name order by Total_Unit_Price desc limit 5;

-- Which product_category has the highest sales  region wise 

select distinct Region,  Product_Category, sum(Units_Sold) as Total_units_sold
 from online_sales_data group by Region, Product_Category order by Total_units_sold desc;

-- Which Product category has the highest revenue and which payment method is most preffered

select distinct Product_Category, sum(round(Total_Revenue)) as Total_Revenue , Payment_Method 
from online_sales_data group by Product_Category, Total_Revenue, Payment_Method order by Total_Revenue desc;




















































































