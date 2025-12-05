SELECT 
	country_name,
	indicator_name,
	debt AS lowest_repayment
FROM international_debt
WHERE indicator_code = 'DT.AMT.DLXF.CD'
ORDER BY debt
LIMIT 1