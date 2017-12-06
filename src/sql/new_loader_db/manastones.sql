

SELECT distinct
--coalesce(strings_lowercase.body, client_items.name),
--client_items.name, 
icon_name, 
quality, 
level,  
stat_enchant_type1,
stat_enchant_value1,
stat_enchant_type2,
stat_enchant_value2,
stat_enchant_value3,
stat_enchant_type4,
stat_enchant_value4,
stat_enchant_type5,
stat_enchant_value5,
target_parts_slot_type,
package_permitted
FROM
client_items

WHERE motion_name = 'Enchant2'
AND stat_enchant_type1 IS NOT NULL
order by level desc
--where strings_lowercase.body like '%Manastone%'
