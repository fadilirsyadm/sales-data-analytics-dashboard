SELECT
    COUNT(*)                       AS total_orders,
    COUNTIF(c.CustomerID IS NULL)  AS missing_customer,
    COUNTIF(p.ProdNumber IS NULL)  AS missing_product,
    COUNTIF(pc.CategoryID IS NULL) AS missing_category

FROM `rakamin-data-analytics.bank_muamalat_bi_analyst_project_based_internship.Orders`                   AS o

    LEFT JOIN `rakamin-data-analytics.bank_muamalat_bi_analyst_project_based_internship.Customers`       AS c
        ON o.CustomerID = c.CustomerID
    LEFT JOIN `rakamin-data-analytics.bank_muamalat_bi_analyst_project_based_internship.Products`        AS p
        ON o.ProdNumber = p.ProdNumber
    LEFT JOIN `rakamin-data-analytics.bank_muamalat_bi_analyst_project_based_internship.ProductCategory` AS pc
        ON p.Category = pc.CategoryID;