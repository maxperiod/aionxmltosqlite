--drop TABLE IF EXISTS _CONDITION_AUGMENT_ARMOR;
--CREATE TABLE _CONDITION_AUGMENT_ARMOR AS

WITH client_strings_NA AS (
SELECT upper(name) name, body FROM strings
where folder like '/ENU%'
),
client_strings_EU AS (
SELECT upper(name) name, body FROM strings
where folder like '/ENG%'
),
item_quality AS (
SELECT lower(substr(name, 17)) quality, body FROM strings
WHERE substr(name, 1, 16) = 'STR_ITEMQUALITY_'
AND folder like '/ENU%'
),
armor_union AS (

SELECT 
id,
name,
desc,
weapon_type,
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
FROM client_items 
WHERE file <> 'client_items_etc.xml'
)
/*,
item_slot AS (
SELECT lower(substr(name, 17)) quality, body FROM ENU_data_strings_client_strings_item
WHERE substr(name, 1, 16) = 'STR_ITEMQUALITY_'
)*/

SELECT 
id, 
case 
    when coalesce(na.body, armor_union.desc) = coalesce(eu.body, armor_union.desc) then coalesce(na.body, armor_union.desc)
    else coalesce(na.body, armor_union.desc) || ' / ' || coalesce(eu.body, armor_union.desc)
end body, 
level,
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
coalesce(weapon_type, case when armor_type <> 'no_armor' then armor_type else equipment_slots end) gear_type,

--equipment_slots,
item_quality.body quality,
--price,
--abyss_point,
case when charge_way = 1 then 'Kinah'
    when charge_way = 2 then 'Abyss Points'
end charge_way,
charge_level,

cast(charge_price1 * 500000 as integer) l1_full_charge_price,
cast(charge_price2 * 500000 as integer) l2_full_charge_price,
round(charge_price1 * burn_on_attack, 2) l1_cost_per_auto_attack,
round(charge_price1 * burn_on_defend, 2) l1_cost_per_hit_received,
round(charge_price2 * burn_on_attack, 2) l2_cost_per_auto_attack,
round(charge_price2 * burn_on_defend, 2) l2_cost_per_hit_received,
charge_price1,
charge_price2,
--usable_rank_min,
burn_on_attack,
burn_on_defend

FROM
armor_union--client_items_armor
LEFT OUTER JOIN client_strings_NA na
ON upper(armor_union.desc) = na.name

LEFT OUTER JOIN client_strings_EU eu
ON upper(armor_union.desc) = eu.name

LEFT OUTER JOIN item_quality
ON armor_union.quality = item_quality.quality

WHERE charge_level >= 1
ORDER BY charge_way desc, gear_type, level desc, armor_union.id --equipment_slots, level desc, charge_way 
;