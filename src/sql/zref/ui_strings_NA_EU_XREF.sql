SELECT 
CASE WHEN trim(NA.body) <> trim(EU.body) THEN 'different' ELSE '' END different,
EU.name, NA.body NA, EU.body EU

FROM ENG_Data_Strings_client_strings_ui EU
JOIN ENU_Data_Strings_client_strings_ui NA
ON EU.id = NA.id

WHERE length(NA.body) < 100 and length(EU.body) < 100
AND EU.name like '%TOOLTIP%'

and trim(NA.body) <> trim(EU.body)