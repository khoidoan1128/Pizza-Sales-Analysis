-- =============================================
-- 01. DATA EXPLORATION & CLEANING
-- =============================================

-- Preview dataset
SELECT *
FROM pizza;

-- Convert order_date from VARCHAR to DATE
UPDATE pizza
SET order_date = STR_TO_DATE(order_date, '%d-%m-%Y');

ALTER TABLE pizza
MODIFY COLUMN order_date DATE;
