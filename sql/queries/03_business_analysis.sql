-- Query 1: Q4 revenue as percentage of annual revenue
WITH q4_revenue AS(
    SELECT 
        order_quarter,
        order_year,
        ROUND(SUM(sales::numeric),2) AS revenue
    FROM superstore
    WHERE order_quarter=4
    GROUP BY order_quarter,order_year
),
 total_revenue AS(
    SELECT 
        order_year,
        ROUND(SUM(sales::numeric),2) AS revenue
    FROM superstore
    GROUP BY order_year
)

SELECT A.order_year,(A.revenue/B.revenue)*100 as percentage_revenue
FROM q4_revenue A
JOIN total_revenue B 
ON A.order_year=B.order_year

-- Query 2: Revenue trend year over year
SELECT
    order_year,
    ROUND(SUM(sales::numeric),2) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(AVG(sales::numeric),2) AS avg_order_value
FROM superstore
GROUP BY order_year
ORDER BY order_year;

-- Query 3: Top 10 customers by revenue
SELECT
    customer_id,
    customer_name,
    ROUND(SUM(sales::numeric),2) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore
GROUP BY customer_id, customer_name
ORDER BY total_revenue DESC
LIMIT 10;

-- Query 4: Top 10 sub-categories by revenue
SELECT
    sub_category,
    category,
    ROUND(SUM(sales::numeric),2) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore
GROUP BY sub_category, category
ORDER BY total_revenue DESC
LIMIT 10;