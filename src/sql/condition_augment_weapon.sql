DROP TABLE IF EXISTS _CONDITION_AUGMENT_WEAPON;
CREATE TABLE _CONDITION_AUGMENT_WEAPON AS

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
item_quality AS (
SELECT lower(substr(name, 17)) quality, body FROM ENU_data_strings_client_strings_item
WHERE substr(name, 1, 16) = 'STR_ITEMQUALITY_'
),
item_abyss_rank as (
SELECT 
id,
CASE WHEN recommend_rank > usable_rank_min THEN recommend_rank
ELSE usable_rank_min
end actual_rank
FROM items_client_items_etc
)
/*,
item_slot AS (
SELECT lower(substr(name, 17)) quality, body FROM ENU_data_strings_client_strings_item
WHERE substr(name, 1, 16) = 'STR_ITEMQUALITY_'
)*/

SELECT 
items_client_items_etc.id, 
coalesce(client_strings.body, items_client_items_etc.desc) rarity, 
level,
weapon_type,
equipment_slots,
item_quality.body,
--price,
--abyss_point,
case 
        when charge_way = 1 then 'Kinah' 
        when charge_way = 2 then 'Abyss Points'
end currency,        
charge_level,
charge_price1,
charge_price2,
round(charge_price1 * 500000, 0) l1_full_charge_price,
round(charge_price2 * 500000, 0) l2_full_charge_price,
round(charge_price1 * burn_on_attack, 2) l1_cost_per_auto_attack,
round(charge_price1 * burn_on_defend, 2) l1_cost_per_hit_received,
round(charge_price2 * burn_on_attack, 2) l2_cost_per_auto_attack,
round(charge_price2 * burn_on_defend, 2) l2_cost_per_hit_received,
CASE 
        WHEN CAST(actual_rank AS NUMBER) BETWEEN 1 AND 6
                THEN (10 - actual_rank)||'th Kyu'
        WHEN CAST(actual_rank AS NUMBER) = 7
                THEN '3rd Kyu'
        WHEN CAST(actual_rank AS NUMBER) = 8
                THEN '2nd Kyu'
        WHEN CAST(actual_rank AS NUMBER) = 9
                THEN '1st Kyu'
        WHEN CAST(actual_rank AS NUMBER) = 10
                THEN '1st Dan'
        WHEN CAST(actual_rank AS NUMBER) = 11
                THEN '2nd Dan'
        WHEN CAST(actual_rank AS NUMBER) = 12
                THEN '3rd Dan'        
        WHEN CAST(actual_rank AS NUMBER) > 9
                THEN (actual_rank - 9)||'th Dan'
END recommend_rank,
--usable_rank_min,
burn_on_attack,
burn_on_defend

FROM
items_client_items_etc
LEFT OUTER JOIN client_strings
ON upper(items_client_items_etc.desc) = client_strings.name

LEFT OUTER JOIN item_quality
ON items_client_items_etc.quality = item_quality.quality

LEFT OUTER JOIN item_abyss_rank
ON items_client_items_etc.id = item_abyss_rank.id

WHERE charge_level >= 1
ORDER BY charge_way, items_client_items_etc.id --equipment_slots, level desc, charge_way 
;





