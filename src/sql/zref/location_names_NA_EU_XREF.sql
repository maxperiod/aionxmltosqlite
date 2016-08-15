SELECT 

CASE WHEN NA.body <> EU.body THEN 'Different' ELSE '' END different,
EU.name, NA.body NA, EU.body EU

FROM ENG_Data_Strings_client_strings_level EU
JOIN ENU_Data_Strings_client_strings_level NA
ON EU.id = NA.id

WHERE --NA.body <> EU.body
length(NA.body) < 100

order by EU.name