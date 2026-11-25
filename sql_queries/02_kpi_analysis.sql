-- =============================================
-- 02. KPI ANALYSIS
-- =============================================

-- Overall Business KPIs
SELECT
    ROUND(SUM(total_price), 2) AS total_revenue,
    SUM(quantity) AS total_quantity,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(
        SUM(total_price) / COUNT(DISTINCT order_id), 2
    ) AS AOV
FROM pizza;

SELECT 
    pizza_size,
    ROUND(SUM(quantity) / COUNT(DISTINCT order_id), 2) AS avg_pizza_per_order
FROM pizza
GROUP BY pizza_size
ORDER BY avg_pizza_per_order DESC;

