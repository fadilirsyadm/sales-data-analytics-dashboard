(
  SUM(
    CASE
      WHEN YEAR(order_date) = 2021 THEN total_sales
      ELSE 0
    END
  )
  -
  SUM(
    CASE
      WHEN YEAR(order_date) = 2020 THEN total_sales
      ELSE 0
    END
  )
)
/
SUM(
  CASE
    WHEN YEAR(order_date) = 2020 THEN total_sales
    ELSE 0
  END
)