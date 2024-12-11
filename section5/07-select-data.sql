SELECT
  date_created,
  customer_name,
  product_name AS label,
  volume / 1000 AS total_sales
FROM
  sales