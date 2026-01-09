-- SELECT
--   date_created,
--   customer_name,
--   product_name AS label,
--   volume / 1000 AS total_sales
-- FROM
--   sales

SELECT 
  date_created,
  customer_name,
  product_name AS label_custom,
  volume / 1000 as total_sales
FROM
  sales