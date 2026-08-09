-- =============================================
-- Query 1: Row Count
-- Purpose: Verify all rows loaded correctly
-- =============================================
SELECT COUNT(*) AS total_rows FROM superstore;

-- =============================================
-- Query 2: Null Check
-- Purpose: Verify no critical nulls exist
-- =============================================
SELECT 
    COUNT(*) - COUNT(order_id) AS null_order_ids,
    COUNT(*) - COUNT(customer_id) AS null_customer_ids,
    COUNT(*) - COUNT(sales) AS null_sales,
    COUNT(*) - COUNT(region) AS null_regions,
    COUNT(*) - COUNT(category) AS null_categories
FROM superstore;

-- =============================================
-- Query 3: Duplicate Check
-- Purpose: Verify order_id duplicates are intentional
-- =============================================

SELECT 
    COUNT(*) AS total_rows,
    COUNT(DISTINCT order_id) AS unique_orders,
    COUNT(*) - COUNT(DISTINCT order_id) AS duplicate_order_ids
FROM superstore;

-- =============================================
-- Query 4: Date Range Validation
-- Purpose: Confirm data covers 2015-2018
-- =============================================
SELECT 
    MIN(order_date) AS earliest_order,
    MAX(order_date) AS latest_order,
    COUNT(DISTINCT order_year) AS years_covered
FROM superstore;