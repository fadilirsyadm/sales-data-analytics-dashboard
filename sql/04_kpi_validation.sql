SELECT
    ROUND(SUM(total_sales), 2) AS total_sales,
    SUM(order_qty)             AS total_qty,
    COUNT(*)                   AS total_transactions,
    MIN(order_date)            AS first_order_date,
    MAX(order_date)            AS last_order_date

FROM `rakamin-data-analytics.bank_muamalat_bi_analyst_project_based_internship.master_table`;