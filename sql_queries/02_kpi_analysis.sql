-- =============================================
-- 02. KPI ANALYSIS
-- =============================================

-- Overall Business KPIs
SELECT
    ROUND(SUM(total_price), 2) AS total_revenue,
    SUM(quantity) AS total_quantity,
    SUM(quantity) / COUNT(distinct order_id) AS avg_pizza_orders,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(
        SUM(total_price) / COUNT(DISTINCT order_id), 2
    ) AS AOV
FROM pizza;


