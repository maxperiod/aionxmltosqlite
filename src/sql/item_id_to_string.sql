--begin;

DROP TABLE IF EXISTS _ITEM_ID_TO_STRING;

CREATE TABLE _ITEM_ID_TO_STRING AS 

WITH client_strings AS (
SELECT id, upper(name) name, body FROM ENU_data_strings_client_strings_bm
UNION ALL
SELECT id, upper(name) name, body FROM ENU_data_strings_client_strings_bmrestrict
UNION ALL
SELECT id, upper(name) name, body FROM ENU_data_strings_client_strings_dic_etc
UNION ALL
SELECT id, upper(name) name, body FROM ENU_data_strings_client_strings_dic_item
UNION ALL
SELECT id, upper(name) name, body FROM ENU_data_strings_client_strings_dic_monster
UNION ALL
SELECT id, upper(name) name, body FROM ENU_data_strings_client_strings_dic_people
UNION ALL
SELECT id, upper(name) name, body FROM ENU_data_strings_client_strings_dic_place
UNION ALL
SELECT id, upper(name) name, body FROM ENU_data_strings_client_strings_etc
UNION ALL
SELECT id, upper(name) name, body FROM ENU_data_strings_client_strings_funcpet
UNION ALL
SELECT id, upper(name) name, body FROM ENU_data_strings_client_strings_gossip
UNION ALL
SELECT id, upper(name) name, body FROM ENU_data_strings_client_strings_item
UNION ALL
SELECT id, upper(name) name, body FROM ENU_data_strings_client_strings_item2
UNION ALL
SELECT id, upper(name) name, body FROM ENU_data_strings_client_strings_item3
UNION ALL
SELECT id, upper(name) name, body FROM ENU_data_strings_client_strings_level
UNION ALL
SELECT id, upper(name) name, body FROM ENU_data_strings_client_strings_monster
UNION ALL       
SELECT id, upper(name) name, body FROM ENU_data_strings_client_strings_msg
UNION ALL
SELECT id, upper(name) name, body FROM ENU_data_strings_client_strings_npc
UNION ALL
SELECT id, upper(name) name, body FROM ENU_data_strings_client_strings_quest
UNION ALL
SELECT id, upper(name) name, body FROM ENU_data_strings_client_strings_skill
UNION ALL
SELECT id, upper(name) name, body FROM ENU_data_strings_client_strings_ui
),

client_items AS (
SELECT id, name, upper(desc) desc FROM client_items_armor
UNION ALL
SELECT id, name, upper(desc) desc FROM client_items_etc
UNION ALL
SELECT id, name, upper(desc) desc FROM client_items_misc
)

SELECT client_items.id, COALESCE(client_strings.body, client_items.name) FROM
client_items
LEFT OUTER JOIN client_strings
ON client_items.desc = client_strings.name
WHERE client_items.desc NOT LIKE '%NPC%'
AND client_items.desc NOT LIKE '%TEST%'
;

--commit;