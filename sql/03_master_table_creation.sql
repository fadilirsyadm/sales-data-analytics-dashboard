CREATE OR REPLACE TABLE `rakamin-data-analytics.bank_muamalat_bi_analyst_project_based_internship.master_table` AS

SELECT 
    o.Date                                 AS order_date, 
    pc.CategoryName                        AS category_name, 
    p.ProdName                             AS product_name, 
    p.Price                                AS product_price, 
    o.Quantity                             AS order_qty, 
    (p.Price * o.Quantity)                 AS total_sales, 
    SPLIT(c.CustomerEmail, '#')[OFFSET(0)] AS cust_email, 
    c.CustomerCity                         AS cust_city

FROM `rakamin-data-analytics.bank_muamalat_bi_analyst_project_based_internship.Orders`                   AS o

    LEFT JOIN `rakamin-data-analytics.bank_muamalat_bi_analyst_project_based_internship.Customers`       AS c
        ON o.CustomerID = c.CustomerID
    LEFT JOIN `rakamin-data-analytics.bank_muamalat_bi_analyst_project_based_internship.Products`        AS p
        ON o.ProdNumber = p.ProdNumber
    LEFT JOIN `rakamin-data-analytics.bank_muamalat_bi_analyst_project_based_internship.ProductCategory` AS pc
        ON p.Category = pc.CategoryID

ORDER BY order_date ASC;