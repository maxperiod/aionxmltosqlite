SELECT 
CASE WHEN trim(NA.body) <> trim(EU.body) THEN 'different' ELSE '' END different,
EU.name, NA.body NA, EU.body EU

FROM ENG_Data_Strings_client_strings_skill EU
JOIN ENU_Data_Strings_client_strings_skill NA
ON EU.id = NA.id

WHERE EU.name not like '%DESC%'
AND EU.name not like '%Abnormal%'
AND EU.name like '%SKILLN%'

ORDER BY substr(EU.name, 12, 2), EU.name