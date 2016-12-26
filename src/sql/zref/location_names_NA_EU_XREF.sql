SELECT 

CASE WHEN NA.body <> EU.body THEN 'Different' ELSE '' END different,
EU.name, NA.body NA, EU.body EU

FROM ENG_Data_Strings_client_strings_level EU
JOIN ENU_Data_Strings_client_strings_level NA
ON EU.id = NA.id

WHERE length(NA.body) < 100 
and length(EU.body) < 100
--and NA.body <> EU.body

order by different desc, EU.name