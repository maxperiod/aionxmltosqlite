with EU as
(
SELECT id, upper(name) name, body
FROM ENG_Data_Strings_client_strings_item
union all
SELECT id, upper(name) name, body
FROM ENG_Data_Strings_client_strings_item2
union all
SELECT id, upper(name) name, body
FROM ENG_Data_Strings_client_strings_item3
),

NA as (
SELECT id, upper(name) name, body
FROM ENU_Data_Strings_client_strings_item
union all
SELECT id, upper(name) name, body
FROM ENU_Data_Strings_client_strings_item2
union all
SELECT id, upper(name) name, body
FROM ENU_Data_Strings_client_strings_item3
)

SELECT 
CASE WHEN NA.body <> EU.body THEN 'Different' ELSE '' END different,
EU.name, NA.body NA, EU.body EU
FROM NA
JOIN EU
ON NA.name = EU.name
--AND NA.body <> EU.body

WHERE EU.name NOT LIKE '%DESC%'
AND length(NA.body) <= 100

ORDER BY EU.name


