
with skillGroups as (
    select distinct 
    skill_group_name,
    strings.body
    from skill_base_clients skills
    
    left join _ENGLISH_STRINGS_NA_EU_XREF strings
    on upper(skills.desc) = strings.upper_name
    where skill_group_name is not null
),
sum_skill_prob as (
    select
    id,
    sum(skill_prob) skill_prob
    from client_item_skill_enhances_enchant_skill_list
    group by id
)
select distinct
items.id,
strings.body,
/*
armor_type,
weapon_type,
equipment_slots,
*/
coalesce(weapon_type, case when armor_type <> 'no_armor' then armor_type else equipment_slots end) gear_type,
equipment_slots,
level,
chance1.enchant_prob / 1000.0 plus1_prob_pct,
chance2.enchant_prob / 1000.0 plus2_prob_pct,
chance3.enchant_prob / 1000.0 plus3_prob_pct,
skillGroups.body possible_enchant_skills,
enhance_skills.skill_prob * 1.0 / sum_skill_prob.skill_prob skill_prob_pct
from _items_with_separated_bonus_stats items

join client_item_skill_enhances enhance_base
on items.skill_enchant_set_name = enhance_base.name

left join client_item_skill_enhances_enchant_skill_list enhance_skills
on enhance_base.id = enhance_skills.id

left join client_item_skill_enhances_enchant_prob_list chance1
on enhance_base.id = chance1.id and chance1.maxperiod_insertion_order = 1

left join client_item_skill_enhances_enchant_prob_list chance2
on enhance_base.id = chance2.id and chance2.maxperiod_insertion_order = 2

left join client_item_skill_enhances_enchant_prob_list chance3
on enhance_base.id = chance3.id and chance3.maxperiod_insertion_order = 3

left join skillGroups
on skillGroups.skill_group_name = enhance_skills.skill_group_name

left join sum_skill_prob
on sum_skill_prob.id = enhance_base.id

left join _ENGLISH_STRINGS_NA_EU_XREF strings
on upper(items.desc) = strings.upper_name

order by gear_type, level desc, equipment_slots, strings.body
;