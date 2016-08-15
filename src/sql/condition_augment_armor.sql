drop TABLE IF EXISTS _CONDITION_AUGMENT_ARMOR;
CREATE TABLE _CONDITION_AUGMENT_ARMOR AS

WITH client_strings AS (
SELECT id, upper(name) name, body FROM client_strings_bm
UNION ALL
SELECT id, upper(name) name, body FROM client_strings_bmrestrict
UNION ALL
SELECT id, upper(name) name, body FROM client_strings_dic_etc
UNION ALL
SELECT id, upper(name) name, body FROM client_strings_dic_item
UNION ALL
SELECT id, upper(name) name, body FROM client_strings_dic_monster
UNION ALL
SELECT id, upper(name) name, body FROM client_strings_dic_people
UNION ALL
SELECT id, upper(name) name, body FROM client_strings_dic_place
UNION ALL
SELECT id, upper(name) name, body FROM client_strings_etc
UNION ALL
SELECT id, upper(name) name, body FROM client_strings_funcpet
UNION ALL
SELECT id, upper(name) name, body FROM client_strings_gossip
UNION ALL
SELECT id, upper(name) name, body FROM client_strings_item
UNION ALL
SELECT id, upper(name) name, body FROM client_strings_item2
UNION ALL
SELECT id, upper(name) name, body FROM client_strings_item3
UNION ALL
SELECT id, upper(name) name, body FROM client_strings_level
UNION ALL
SELECT id, upper(name) name, body FROM client_strings_monster
UNION ALL
SELECT id, upper(name) name, body FROM client_strings_msg
UNION ALL
SELECT id, upper(name) name, body FROM client_strings_npc
UNION ALL
SELECT id, upper(name) name, body FROM client_strings_quest
UNION ALL
SELECT id, upper(name) name, body FROM client_strings_skill
UNION ALL
SELECT id, upper(name) name, body FROM client_strings_ui
),
item_quality AS (
SELECT lower(substr(name, 17)) quality, body FROM client_strings_item
WHERE substr(name, 1, 16) = 'STR_ITEMQUALITY_'
),
armor_union AS (
SELECT 
id,
name,
desc,
armor_type,
item_type,
price,
equipment_slots,
quality,
level,
abyss_point,
charge_way,
charge_level,
charge_price1,
burn_on_attack,
burn_on_defend,
charge_price2,
usable_rank_min,
purchable_rank_min,
recommend_rank,
usable_rank_max,
case when recommend_rank > usable_rank_min then recommend_rank
else usable_rank_min end actual_rank
FROM client_items_armor

union all

SELECT 
id,
name,
desc,
armor_type,
item_type,
price,
equipment_slots,
quality,
level,
abyss_point,
charge_way,
charge_level,
charge_price1,
burn_on_attack,
burn_on_defend,
charge_price2,
usable_rank_min,
purchable_rank_min,
recommend_rank,
usable_rank_max,
case when recommend_rank > usable_rank_min then recommend_rank
else usable_rank_min end actual_rank
FROM client_items_armor_1

union all

SELECT 
id,
name,
desc,
armor_type,
item_type,
price,
equipment_slots,
quality,
level,
abyss_point,
charge_way,
charge_level,
charge_price1,
burn_on_attack,
burn_on_defend,
charge_price2,
usable_rank_min,
purchable_rank_min,
recommend_rank,
usable_rank_max,
case when recommend_rank > usable_rank_min then recommend_rank
else usable_rank_min end actual_rank
FROM client_items_armor_2
)
/*,
item_slot AS (
SELECT lower(substr(name, 17)) quality, body FROM client_strings_item
WHERE substr(name, 1, 16) = 'STR_ITEMQUALITY_'
)*/

SELECT 
armor_union.id, 
coalesce(client_strings.body, armor_union.desc) body, 
level,
armor_type,
equipment_slots,
item_quality.body,
--price,
--abyss_point,
charge_way,
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
armor_union--client_items_armor
LEFT OUTER JOIN client_strings
ON upper(armor_union.desc) = client_strings.name

LEFT OUTER JOIN item_quality
ON armor_union.quality = item_quality.quality

WHERE charge_level >= 1
ORDER BY charge_way, armor_type, equipment_slots, armor_union.id --equipment_slots, level desc, charge_way 
;