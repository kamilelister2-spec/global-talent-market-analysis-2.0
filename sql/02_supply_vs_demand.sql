Internal hiring demand vs external talent supply

SELECT i.region, i.role, COUNT(i.employee_id) AS internal_headcount, e.total_openings AS external_openings, e.total_openings - COUNT(i.employee_id) AS gap
FROM data.raw.internal_employee_data i
JOIN data.raw.external_labor_market_data e
  ON i.region = e.region
  AND i.role = e.role
GROUP BY i.region, i.role, e.total_openings
ORDER BY gap DESC
;
