SELECT * 
FROM pizza;

-- CONVERT TO DATE TYPE
UPDATE pizza 
	SET order_date = STR_TO_DATE(order_date, '%d-%m-%Y');
ALTER TABLE pizza 
	MODIFY COLUMN order_date DATE;

-- TOTAL REVENUE
SELECT 
ROUND(
	SUM(total_price),0) as Salary
FROM pizza;

-- TOTAL QUANTITY
SELECT 
SUM(quantity) 
FROM pizza;

-- TOTAL ORDERS
SELECT 
COUNT(distinct order_id) 
FROM pizza;

-- AOV
WITH cte as(
SELECT 
	ROUND(
		SUM(total_price),0) as total_salary,
COUNT(distinct order_id)  as total_orders
FROM pizza)
SELECT
ROUND(total_salary / total_orders,2) as AOV
FROM cte;

-- REVENUE BY MONTHS
WITH cte as(
	SELECT
		MONTH(order_date) as `Month`,
			ROUND(
				SUM(total_price),0) as current_revenue
FROM pizza
GROUP BY MONTH(order_date))
SELECT *,
CONCAT(
    ROUND(
        (current_revenue - LAG(current_revenue, 1) OVER (ORDER BY `Month`)) 
        / LAG(current_revenue, 1) OVER (ORDER BY `Month`) * 100, 2), 
'%') AS revenue_growth
FROM cte;

-- TOTAL SALES BY QUARTER
SELECT 
	ROUND(
		SUM(total_price),0) as revenue,
QUARTER(order_date) as Quarter_
FROM pizza
GROUP BY Quarter_;

-- ORDER BY DAY
SELECT
    DAYNAME(order_date) as days,
    COUNT(distinct order_id) as total_orders
FROM pizza
GROUP BY DAYNAME(order_date)
ORDER BY total_orders DESC;

-- AVERAGE ORDERS PER HOURS
WITH daily_hours_oders as (
	SELECT 
		HOUR(order_time) as order_hour,
COUNT(DISTINCT order_id) as daily_orders
FROM pizza
GROUP BY DATE(order_date), HOUR(order_time)
)
SELECT 
order_hour,
ROUND(
	AVG(daily_orders), 2) as avg_orders_per_hour
FROM daily_hours_oders
GROUP BY order_hour
ORDER BY avg_orders_per_hour DESC;

-- Quantity by products
SELECT
pizza_name, SUM(quantity) 
FROM pizza
GROUP BY pizza_name;

-- TOP PIZZA SOLD
SELECT 
pizza_name,
SUM(quantity) as pizza_sold,
RANK() OVER(ORDER BY COUNT(quantity) DESC) as top_5_pizza_sold
FROM pizza
GROUP BY pizza_name;

-- Total sales Category
SELECT
pizza_category,
	ROUND(
		SUM(total_price),0
) as revenue_c
FROM pizza
GROUP BY pizza_category;

-- TOTAL SALES BY PIZZA SIZE AND CATEGORY
SELECT
pizza_category,
pizza_size,
	COUNT(*) as total_sales,
RANK() 
	OVER(
		partition by pizza_category ORDER BY COUNT(*)) as r_pizza
FROM pizza
GROUP BY pizza_category,pizza_size;


