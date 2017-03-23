

with strings_lowercase as (
select lower(name) name, body
from strings
where strings.folder like ?
)
SELECT client_items.id, COALESCE(strings_lowercase.body, client_items.name) FROM
client_items
LEFT OUTER JOIN strings_lowercase
ON lower(client_items.desc) = strings_lowercase.name
WHERE client_items.desc NOT LIKE '%NPC%'
AND client_items.desc NOT LIKE '%TEST%'

--select distinct folder from strings
--/DEU/data/String
--/ENG/Data/String
--/ESN/data/String
--/FRA/data/String
--/ITA/data/String
--/PLK/data/String

--/ENU/data/string
;
