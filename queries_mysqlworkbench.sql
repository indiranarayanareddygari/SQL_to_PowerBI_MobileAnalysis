Create schema DataTalesUnveiled;
Use DataTalesUnveiled;
show tables from DatatalesUnveiled;
select * from MobileMobile;

-- list of questions
-- Q1	"What are the names of the phones and their prices listed in the 'mobilemobile' table?"
-- Q2	 Find out the price of 5 most expensive phones
-- Q3	 Find out the price of 5 most cheapest phones
-- Q4	 List of top 5 Samsung phones with price and all features
-- Q5	 Must have android phone list then top 5 High price android phones
-- Q6	 Must have androidphone list then top 5 lower price android phones
-- Q7	 Must have IOS phone list then top 5 High price IOS phones
-- Q8	 Must have IOS phone list then top 5 lower price IOS phones
-- Q9	 write a query which phone support 5g and also top 5 phone with 5g support
-- Q10	 Total price of all mobile is to be found with brand name

-- 1. Check "What are the names of the phones and their prices listed in the 'mobilemobile' table?" --
select phone_name,price from mobilemobile;

--  2. Find out the price of 5 most expensive phones --
select phone_name,price
from mobilemobile 
order by price desc
limit 5;

-- 3. Find out the price of 5 most cheapest phone--
select phone_name,price
from mobilemobile 
order by price 
limit 5;

--- 4. List of top 5 Samsung phones with price and all features --
select * 
from mobilemobile
where Brands = 'samsung'
order by price desc
limit 5;

 -- 5. Must have android phone list then top 5 High price android phones -- 
select *
from mobilemobile
where Operating_System_Type = 'Android'
order by price desc
limit 5;

-- 6. Must have androidphone list then top 5 lower price android phones
select *
from mobilemobile
where Operating_System_Type = 'Android'
order by price asc
limit 5;

-- 7. Must have IOS phone list then top 5 High price IOS phones
select *
from mobilemobile
where Operating_System_Type = 'IOS'
order by price desc
limit 5;

-- 8. Must have IOS phone list then top 5 lower price IOS phones
select *
from mobilemobile
where Operating_System_Type = 'IOS'
order by price asc
limit 5;

-- 9. write a query which phone support 5g and also top 5 phone with 5g support
select * 
from mobilemobile
where 5G_Availability = 'Yes'
order by price desc
limit 5;

-- 10. Total price of all mobile is to be found with brand name
select brands,sum(price) as total_price
from mobilemobile
group by brands;
