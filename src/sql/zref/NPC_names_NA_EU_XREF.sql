SELECT 
CASE WHEN NA.body <> EU.body THEN 'Different' ELSE '' END different,
EU.name, NA.body NA, EU.body EU

FROM ENG_Data_Strings_client_strings_npc EU
JOIN ENU_Data_Strings_client_strings_npc NA
ON EU.id = NA.id

WHERE EU.name NOT LIKE '%CHAT%'

ORDER BY EU.name