
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
)/*,
item_slot AS (
SELECT lower(substr(name, 17)) quality, body FROM client_strings_item
WHERE substr(name, 1, 16) = 'STR_ITEMQUALITY_'
)*/

SELECT 
client_items_etc.id, 
coalesce(client_strings.body, client_items_etc.desc) body, 
level,
weapon_type,
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
        WHEN CAST(recommend_rank AS NUMBER) <= 9 
                THEN (10 - recommend_rank)||' Kyu'
        WHEN CAST(recommend_rank AS NUMBER) > 9
                THEN (recommend_rank - 9)||' Dan'
END recommend_rank,
--usable_rank_min,
burn_on_attack,
burn_on_defend

FROM
client_items_etc
LEFT OUTER JOIN client_strings
ON upper(client_items_etc.desc) = client_strings.name

LEFT OUTER JOIN item_quality
ON client_items_etc.quality = item_quality.quality

WHERE charge_level >= 1
ORDER BY charge_way, client_items_etc.id --equipment_slots, level desc, charge_way 
;





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
)/*,
item_slot AS (
SELECT lower(substr(name, 17)) quality, body FROM client_strings_item
WHERE substr(name, 1, 16) = 'STR_ITEMQUALITY_'
)*/

SELECT 
client_items_armor.id, 
coalesce(client_strings.body, client_items_armor.desc) body, 
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
        WHEN CAST(recommend_rank AS NUMBER) <= 9 
                THEN (10 - recommend_rank)||' Kyu'
        WHEN CAST(recommend_rank AS NUMBER) > 9
                THEN (recommend_rank - 9)||' Dan'
END recommend_rank,
--usable_rank_min,
burn_on_attack,
burn_on_defend

FROM
client_items_armor
LEFT OUTER JOIN client_strings
ON upper(client_items_armor.desc) = client_strings.name

LEFT OUTER JOIN item_quality
ON client_items_armor.quality = item_quality.quality

WHERE charge_level >= 1
ORDER BY charge_way, armor_type, equipment_slots, client_items_armor.id --equipment_slots, level desc, charge_way 
;