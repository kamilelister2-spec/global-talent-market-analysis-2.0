Attrition risk signals by role and geography

SELECT region, role, 
  AVG(tenure_years) AS avg_tenure,
  SUM(attrition_flag)*1.0/COUNT(*) AS attrition_rate
FROM data.raw.internal_employee_data
GROUP BY region, role
HAVING attrition_rate > 0.15
ORDER BY attrition_rate DESC;
