-- SELECT * FROM sales
-- WHERE volume > 1000;
-- 
-- CREATE VIEW base_result AS
-- SELECT
--   *
-- FROM
--   sales
-- WHERE
--   volume > 1000;
-- 
-- // with VIEW
-- SELECT
--   customer_name,
--   product_name
-- FROM
--   base_result;
-- 
-- // without VIEW, nested queries
SELECT
  customer_name,
  product_name
FROM
  (
    SELECT
      *
    FROM
      sales
    WHERE
      volume > 1000
  ) AS base_result
-- 
--  SHOW FULL TABLES 
-- WHERE Table_type = 'VIEW';