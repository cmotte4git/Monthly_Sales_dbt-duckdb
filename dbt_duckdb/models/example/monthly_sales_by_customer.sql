-- File: models/monthly_sales_by_customer.sql

-- Description: This model aggregates sales by customer on a monthly basis.

-- Define the model


-- Query to aggregate sales by customer on a monthly basis
SELECT
    customer_id,
    DATE_TRUNC('month', transaction_date) AS month,
    SUM(amount) AS total_sales
FROM
    {{ ref('sales') }} as sales-- Utilisez la référence à la source externe
GROUP BY
    customer_id,
    DATE_TRUNC('month', transaction_date)