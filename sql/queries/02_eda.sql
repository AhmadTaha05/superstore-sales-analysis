
-- Purpose: Identify top revenue categories
SELECT 
    category,
    ROUND(SUM(sales)::numeric, 2) AS total_revenue,
    ROUND(AVG(sales)::numeric, 2) AS avg_order_value,
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore
GROUP BY category
ORDER BY total_revenue DESC;

-- Purpose: Identify top revenue regions
SELECT 
    region,
    ROUND(SUM(sales)::numeric, 2) AS total_revenue,
    ROUND(AVG(sales)::numeric, 2) AS avg_order_value,
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore
GROUP BY region
ORDER BY total_revenue DESC;

-- Purpose: Identify top revenue segments
SELECT 
    segment,
    ROUND(SUM(sales)::numeric, 2) AS total_revenue,
    ROUND(AVG(sales)::numeric, 2) AS avg_order_value,
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore
GROUP BY segment
ORDER BY total_revenue DESC;

-- Purpose: Identify revenue by Quarter
SELECT
    order_quarter,
    order_year,
    ROUND(SUM(sales)::numeric,2) AS quarterly_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore
GROUP BY order_quarter, order_year
ORDER BY order_year, order_quarter;