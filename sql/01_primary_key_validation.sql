SELECT
    'Customers'                           AS table_name,
    COUNT(*)                              AS total_rows,
    COUNT(DISTINCT CustomerID)            AS distinct_primary_key,
    COUNT(*) - COUNT(DISTINCT CustomerID) AS duplicate_primary_key
FROM `rakamin-data-analytics.bank_muamalat_bi_analyst_project_based_internship.Customers`

UNION ALL

SELECT
    'Products'                            AS table_name, 
    COUNT(*)                              AS total_rows,
    COUNT(DISTINCT ProdNumber)            AS distinct_primary_key,
    COUNT(*) - COUNT(DISTINCT ProdNumber) AS duplicate_primary_key
FROM `rakamin-data-analytics.bank_muamalat_bi_analyst_project_based_internship.Products`

UNION ALL

SELECT
    'Orders'                           AS table_name, 
    COUNT(*)                           AS total_rows,
    COUNT(DISTINCT OrderID)            AS distinct_primary_key,
    COUNT(*) - COUNT(DISTINCT OrderID) AS duplicate_primary_key
FROM `rakamin-data-analytics.bank_muamalat_bi_analyst_project_based_internship.Orders`

UNION ALL

SELECT
    'ProductCategory'                     AS table_name,
    COUNT(*)                              AS total_rows,
    COUNT(DISTINCT CategoryID)            AS distinct_primary_key,
    COUNT(*) - COUNT(DISTINCT CategoryID) AS duplicate_primary_key
FROM `rakamin-data-analytics.bank_muamalat_bi_analyst_project_based_internship.ProductCategory`;