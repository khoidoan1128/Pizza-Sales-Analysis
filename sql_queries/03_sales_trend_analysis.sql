-- =============================================
-- 03. SALES TREND ANALYSIS
-- =============================================

-- 1. Revenue by Month and MoM Growth
WITH monthly_revenue AS (
    SELECT
        MONTH(order_date) AS month,
        SUM(total_price) AS current_revenue
    FROM pizza
    GROUP BY MONTH(order_date)
),
revenue_comparison AS (
    SELECT
        month,
        current_revenue,
        LAG(current_revenue) OVER (ORDER BY month) AS previous_revenue
    FROM monthly_revenue
)
SELECT
    month,
    ROUND(current_revenue, 2) AS current_revenue,
    ROUND(
        (current_revenue - previous_revenue)
        / previous_revenue * 100, 2
    ) AS revenue_growth_pct
FROM revenue_comparison
ORDER BY month;


-- 2. Total Revenue by Quarter
SELECT
    QUARTER(order_date) AS quarter,
    ROUND(SUM(total_price), 2) AS revenue
FROM pizza
GROUP BY QUARTER(order_date)
ORDER BY quarter;


-- 3. Orders by Day of Week
SELECT
    DAYNAME(order_date) AS day_name,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza
GROUP BY DAYNAME(order_date)
ORDER BY total_orders DESC;


-- 4. Average Orders by Hour
WITH daily_hourly_orders AS (
    SELECT
        DATE(order_date) AS order_date,
        HOUR(order_time) AS order_hour,
        COUNT(DISTINCT order_id) AS daily_orders
    FROM pizza
    GROUP BY DATE(order_date), HOUR(order_time)
)
SELECT
    order_hour,
    ROUND(AVG(daily_orders), 2) AS avg_orders_per_hour
FROM daily_hourly_orders
GROUP BY order_hour
ORDER BY avg_orders_per_hour DESC;
