Wage trend analysis to identify future cost pressures

SELECT region, role, year, avg_wage_usd, avg_wage_usd - LAG(avg_wage_usd) 
  OVER (PARTITION BY region, role ORDER BY year) AS wage_change 
FROM data.raw.external_labor_market_data 
ORDER BY region, role, year
;
