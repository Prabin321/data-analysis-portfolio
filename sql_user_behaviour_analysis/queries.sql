-- SQL User Behavior Analysis

-- Dataset: UCI Online Retail

-- 1. Preview the data
SELECT *
FROM online_retail
LIMIT 10;

-- 2. Count total rows
SELECT COUNT(*) AS total_rows
FROM online_retail;

-- 3. Count unique customers
SELECT COUNT(DISTINCT CustomerID) AS unique_customers
FROM online_retail
WHERE CustomerID IS NOT NULL;

-- 4. Identify canceled invoices
SELECT COUNT(DISTINCT InvoiceNo) AS canceled_invoices
FROM online_retail
WHERE InvoiceNo LIKE 'C%';

-- 5. Revenue by country
SELECT
    Country,
    ROUND(SUM(Quantity * UnitPrice), 2) AS revenue
FROM online_retail
WHERE CustomerID IS NOT NULL
  AND Quantity > 0
  AND UnitPrice > 0
  AND InvoiceNo NOT LIKE 'C%'
GROUP BY Country
ORDER BY revenue DESC
LIMIT 10;

-- 6. Top 10 products by revenue
SELECT
    StockCode,
    Description,
    ROUND(SUM(Quantity * UnitPrice), 2) AS revenue
FROM online_retail
WHERE CustomerID IS NOT NULL
  AND Quantity > 0
  AND UnitPrice > 0
  AND InvoiceNo NOT LIKE 'C%'
GROUP BY StockCode, Description
ORDER BY revenue DESC
LIMIT 10;

-- 7. Monthly revenue trend
SELECT
    strftime('%Y-%m', InvoiceDate) AS month,
    ROUND(SUM(Quantity * UnitPrice), 2) AS monthly_revenue
FROM online_retail
WHERE CustomerID IS NOT NULL
  AND Quantity > 0
  AND UnitPrice > 0
  AND InvoiceNo NOT LIKE 'C%'
GROUP BY month
ORDER BY month;

-- 8. Top customers by spend
SELECT
    CustomerID,
    ROUND(SUM(Quantity * UnitPrice), 2) AS total_spent
FROM online_retail
WHERE CustomerID IS NOT NULL
  AND Quantity > 0
  AND UnitPrice > 0
  AND InvoiceNo NOT LIKE 'C%'
GROUP BY CustomerID
ORDER BY total_spent DESC
LIMIT 10;

-- 9. Repeat customers (more than 1 distinct order)
SELECT
    CustomerID,
    COUNT(DISTINCT InvoiceNo) AS order_count
FROM online_retail
WHERE CustomerID IS NOT NULL
  AND Quantity > 0
  AND UnitPrice > 0
  AND InvoiceNo NOT LIKE 'C%'
GROUP BY CustomerID
HAVING COUNT(DISTINCT InvoiceNo) > 1
ORDER BY order_count DESC
LIMIT 20;

-- 10. Average order value
WITH order_totals AS (
    SELECT
        InvoiceNo,
        ROUND(SUM(Quantity * UnitPrice), 2) AS order_value
    FROM online_retail
    WHERE CustomerID IS NOT NULL
      AND Quantity > 0
      AND UnitPrice > 0
      AND InvoiceNo NOT LIKE 'C%'
    GROUP BY InvoiceNo
)
SELECT ROUND(AVG(order_value), 2) AS average_order_value
FROM order_totals;

-- 11. Products with highest average quantity per invoice
SELECT
    StockCode,
    Description,
    ROUND(AVG(Quantity), 2) AS avg_quantity
FROM online_retail
WHERE Quantity > 0
  AND UnitPrice > 0
  AND InvoiceNo NOT LIKE 'C%'
GROUP BY StockCode, Description
ORDER BY avg_quantity DESC
LIMIT 10;

-- 12. Cancellation rate by distinct invoice
WITH invoice_status AS (
    SELECT DISTINCT
        InvoiceNo,
        CASE
            WHEN InvoiceNo LIKE 'C%' THEN 'Canceled'
            ELSE 'Completed'
        END AS status
    FROM online_retail
)
SELECT
    status,
    COUNT(*) AS invoice_count,
    ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER (), 2) AS pct_of_invoices
FROM invoice_status
GROUP BY status;

-- 13. Customer segments based on spend
WITH customer_spend AS (
    SELECT
        CustomerID,
        SUM(Quantity * UnitPrice) AS total_spent
    FROM online_retail
    WHERE CustomerID IS NOT NULL
      AND Quantity > 0
      AND UnitPrice > 0
      AND InvoiceNo NOT LIKE 'C%'
    GROUP BY CustomerID
)
SELECT
    CASE
        WHEN total_spent >= 5000 THEN 'High Value'
        WHEN total_spent >= 1000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment,
    COUNT(*) AS customer_count
FROM customer_spend
GROUP BY customer_segment
ORDER BY customer_count DESC;

-- 14. Best sales month
SELECT
    strftime('%Y-%m', InvoiceDate) AS month,
    ROUND(SUM(Quantity * UnitPrice), 2) AS revenue
FROM online_retail
WHERE CustomerID IS NOT NULL
  AND Quantity > 0
  AND UnitPrice > 0
  AND InvoiceNo NOT LIKE 'C%'
GROUP BY month
ORDER BY revenue DESC
LIMIT 1;

-- 15. Top country by average order value
WITH country_orders AS (
    SELECT
        Country,
        InvoiceNo,
        SUM(Quantity * UnitPrice) AS order_value
    FROM online_retail
    WHERE CustomerID IS NOT NULL
      AND Quantity > 0
      AND UnitPrice > 0
      AND InvoiceNo NOT LIKE 'C%'
    GROUP BY Country, InvoiceNo
)
SELECT
    Country,
    ROUND(AVG(order_value), 2) AS avg_order_value
FROM country_orders
GROUP BY Country
ORDER BY avg_order_value DESC
LIMIT 10;
