SELECT e1.id, e1.first_name, e2.first_name as supervizor_fn
FROM employees AS e1
INNER JOIN employees AS e2 ON e1.supervisor_id = e2.id;