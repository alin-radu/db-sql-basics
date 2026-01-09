SELECT
  c.name AS city_name,
  a.street,
  a.house_number,
  u.first_name
FROM
  cities AS c
  LEFT JOIN addresses AS a ON a.city_id = c.id
  LEFT JOIN users AS u ON u.address_id = a.id;
-- WHERE a.street IS NOT NULL;