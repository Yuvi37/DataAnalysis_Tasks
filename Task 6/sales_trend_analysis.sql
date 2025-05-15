
-- Monthly Revenue and Order Volume Analysis (SQLite)
SELECT 
    STRFTIME('%Y-%m', order_date) AS month_year,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM 
    online_sales
GROUP BY 
    month_year
ORDER BY 
    month_year;

-- For PostgreSQL:
-- SELECT 
--     TO_CHAR(order_date, 'YYYY-MM') AS month_year,
--     SUM(amount) AS total_revenue,
--     COUNT(DISTINCT order_id) AS total_orders
-- FROM 
--     online_sales
-- GROUP BY 
--     month_year
-- ORDER BY 
--     month_year;

-- Top 3 Months by Revenue
SELECT 
    STRFTIME('%Y-%m', order_date) AS month_year,
    SUM(amount) AS total_revenue
FROM 
    online_sales
GROUP BY 
    month_year
ORDER BY 
    total_revenue DESC
LIMIT 3;
