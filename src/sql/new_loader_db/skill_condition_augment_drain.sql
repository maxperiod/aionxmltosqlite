--drop TABLE IF EXISTS _CONDITION_AUGMENT_ARMOR;
--CREATE TABLE _CONDITION_AUGMENT_ARMOR AS


SELECT DISTINCT
--id,
--class,
skill_group_name, 
--skills.name, 
str.body english_name, 
cost_charge_armor,
cost_charge_weapon,
polish_charge_weapon

FROM
skill_base_clients skills--client_items_armor
LEFT OUTER JOIN _ENGLISH_STRINGS_NA_EU_XREF str
ON upper(skills.desc) = str.upper_name

/*
left outer join 
client_skill_learns learn
on skills.name = learn.skill
*/
where skill_group_name is not null --1=1--(cost_charge_armor is not null or cost_charge_weapon is not null) 
--and (upper(substr(skills.name, 1, 3)) in ('ALL_', 'EV_', 'WA_', 'FI_', 'KN_', 'SC_', 'RA_', 'AS_', 'MG_', 'WI_', 'EL_', 'CL_', 'PR_', 'CH_', 'EN_', 'GU_', 'RI_', 'AR_', 'BA_'))
and coalesce(activation_attribute, '') <> 'Passive'
order by lower(skill_group_name), upper(substr(skills.name, 1, 3)), english_name
;