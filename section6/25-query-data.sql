-- // first query 
-- SELECT * from projects_employees
-- WHERE employee_id = 4
-- 
-- SELECT
--   e.id AS employee_id,
--   e.first_name,
--   e.last_name,
--   p.title
-- FROM
--   employees AS e
--   LEFT JOIN projects_employees AS pe ON pe.employee_id = e.id
--   LEFT JOIN projects AS p ON pe.project_id = p.id;
-- 
-- // second query
-- SELECT e.id AS employee_id, e.first_name, e.last_name, p.title FROM employees AS e
-- INNER JOIN projects_employees AS pe ON pe.employee_id = e.id
-- LEFT JOIN projects AS p ON pe.project_id = p.id;
-- 
-- // third query
-- SELECT e.id AS employee_id, e.first_name, e.last_name, t.name
-- FROM employees AS e
-- INNER JOIN teams AS t ON e.team_id = t.id
-- WHERE t.id = 2;
-- 
-- // fourth query
-- SELECT e.id AS employee_id, e.first_name, e.last_name, b.name
-- FROM employees AS e
-- INNER JOIN teams AS t ON e.team_id = t.id
-- INNER JOIN company_buildings AS b ON t.building_id = b.id
-- WHERE b.id = 3
-- ORDER BY e.birthdate;

SELECT e.id, e.first_name, b.name
FROM employees as e
INNER JOIN teams as t ON e.team_id = t.id
INNER JOIN company_buildings as b ON t.building_id = b.id
WHERE b.id = 3