


SELECT client_items.id, COALESCE(strings.body, client_items.name) FROM
client_items
LEFT OUTER JOIN _strings_upper_name strings
ON upper(client_items.desc) = strings.upper_name
WHERE client_items.desc NOT LIKE '%NPC%'
AND client_items.desc NOT LIKE '%TEST%'
AND strings.folder like ?

--select distinct folder from strings
--/DEU/data/String
--/ENG/Data/String
--/ESN/data/String
--/FRA/data/String
--/ITA/data/String
--/PLK/data/String

--/ENU/data/string
;
