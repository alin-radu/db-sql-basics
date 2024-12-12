-- SELECT
--   *
-- FROM
--   users AS u
--   INNER JOIN addresses AS a ON u.address_id = a.id;
-- 
SELECT
  u.first_name,
  a.street
FROM
  users AS u
   JOIN users AS u ON u.address_id = a.id;