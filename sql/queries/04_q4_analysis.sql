-- Query 1: Q4 Revenue by Region per Year
SELECT
    order_year,
    region,
    ROUND(SUM(sales::numeric),2) as revenue_by_region_per_year
FROM superstore
WHERE order_quarter=4
GROUP BY region,order_year
ORDER BY order_year,revenue_by_region_per_year DESC

-- Query 2: Q4 Revenue by Category per Year
SELECT
    order_year,
    category,
    ROUND(SUM(sales::numeric),2) AS revenue_by_category
FROM superstore
WHERE order_quarter = 4
GROUP BY category, order_year
ORDER BY order_year, revenue_by_category DESC;

-- Query 3: Q4 Revenue by Segment per Year
SELECT
    order_year,
    segment,
    ROUND(SUM(sales::numeric),2) AS revenue_by_segment
FROM superstore
WHERE order_quarter = 4
GROUP BY segment, order_year
ORDER BY order_year, revenue_by_segment DESC;

-- Query 4: Top Q4 Combinations (Region + Category + Segment)
SELECT
    order_year,
    region,
    category,
    segment,
    ROUND(SUM(sales::numeric),2) AS revenue
FROM superstore
WHERE order_quarter = 4
GROUP BY order_year, region, category, segment
ORDER BY revenue DESC
LIMIT 10;