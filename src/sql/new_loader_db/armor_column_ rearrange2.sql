drop table if exists _gear_stats;
create table _gear_stats as
/*
with strings_lower as (
select lower(name) lower_name, body from strings
where folder like '/ENU%'
)
*/

SELECT folder, file, id, 1 bonus_num, null cond_aug_lvl, substr(bonus_attr1, 1, instr(bonus_attr1, ' ') - 1) bonus_attr_type, substr(bonus_attr1, instr(bonus_attr1, ' ') + 1) bonus_attr_value from client_items where bonus_attr1 is not null and file <> 'client_items_etc.xml' union all
SELECT folder, file, id, 2 bonus_num, null cond_aug_lvl, substr(bonus_attr2, 1, instr(bonus_attr2, ' ') - 1) bonus_attr_type, substr(bonus_attr2, instr(bonus_attr2, ' ') + 1) bonus_attr_value from client_items where bonus_attr2 is not null and file <> 'client_items_etc.xml' union all
SELECT folder, file, id, 3 bonus_num, null cond_aug_lvl, substr(bonus_attr3, 1, instr(bonus_attr3, ' ') - 1) bonus_attr_type, substr(bonus_attr3, instr(bonus_attr3, ' ') + 1) bonus_attr_value from client_items where bonus_attr3 is not null and file <> 'client_items_etc.xml' union all
SELECT folder, file, id, 4 bonus_num, null cond_aug_lvl, substr(bonus_attr4, 1, instr(bonus_attr4, ' ') - 1) bonus_attr_type, substr(bonus_attr4, instr(bonus_attr4, ' ') + 1) bonus_attr_value from client_items where bonus_attr4 is not null and file <> 'client_items_etc.xml' union all
SELECT folder, file, id, 5 bonus_num, null cond_aug_lvl, substr(bonus_attr5, 1, instr(bonus_attr5, ' ') - 1) bonus_attr_type, substr(bonus_attr5, instr(bonus_attr5, ' ') + 1) bonus_attr_value from client_items where bonus_attr5 is not null and file <> 'client_items_etc.xml' union all
SELECT folder, file, id, 6 bonus_num, null cond_aug_lvl, substr(bonus_attr6, 1, instr(bonus_attr6, ' ') - 1) bonus_attr_type, substr(bonus_attr6, instr(bonus_attr6, ' ') + 1) bonus_attr_value from client_items where bonus_attr6 is not null and file <> 'client_items_etc.xml' union all
SELECT folder, file, id, 7 bonus_num, null cond_aug_lvl, substr(bonus_attr7, 1, instr(bonus_attr7, ' ') - 1) bonus_attr_type, substr(bonus_attr7, instr(bonus_attr7, ' ') + 1) bonus_attr_value from client_items where bonus_attr7 is not null and file <> 'client_items_etc.xml' union all
SELECT folder, file, id, 8 bonus_num, null cond_aug_lvl, substr(bonus_attr8, 1, instr(bonus_attr8, ' ') - 1) bonus_attr_type, substr(bonus_attr8, instr(bonus_attr8, ' ') + 1) bonus_attr_value from client_items where bonus_attr8 is not null and file <> 'client_items_etc.xml' union all
SELECT folder, file, id, 9 bonus_num, null cond_aug_lvl, substr(bonus_attr9, 1, instr(bonus_attr9, ' ') - 1) bonus_attr_type, substr(bonus_attr9, instr(bonus_attr9, ' ') + 1) bonus_attr_value from client_items where bonus_attr9 is not null and file <> 'client_items_etc.xml' union all
SELECT folder, file, id, 10 bonus_num, null cond_aug_lvl, substr(bonus_attr10, 1, instr(bonus_attr10, ' ') - 1) bonus_attr_type, substr(bonus_attr10, instr(bonus_attr10, ' ') + 1) bonus_attr_value from client_items where bonus_attr10 is not null and file <> 'client_items_etc.xml' union all
SELECT folder, file, id, 11 bonus_num, null cond_aug_lvl, substr(bonus_attr11, 1, instr(bonus_attr11, ' ') - 1) bonus_attr_type, substr(bonus_attr11, instr(bonus_attr11, ' ') + 1) bonus_attr_value from client_items where bonus_attr11 is not null and file <> 'client_items_etc.xml' union all
SELECT folder, file, id, 12 bonus_num, null cond_aug_lvl, substr(bonus_attr12, 1, instr(bonus_attr12, ' ') - 1) bonus_attr_type, substr(bonus_attr12, instr(bonus_attr12, ' ') + 1) bonus_attr_value from client_items where bonus_attr12 is not null and file <> 'client_items_etc.xml' union all

SELECT folder, file, id, 1 bonus_num, 1 cond_aug_lvl, substr(bonus_attr_a1, 1, instr(bonus_attr_a1, ' ') - 1) bonus_attr_type, substr(bonus_attr_a1, instr(bonus_attr_a1, ' ') + 1) bonus_attr_value from client_items where bonus_attr_a1 is not null and file <> 'client_items_etc.xml' union all
SELECT folder, file, id, 2 bonus_num, 1 cond_aug_lvl, substr(bonus_attr_a2, 1, instr(bonus_attr_a2, ' ') - 1) bonus_attr_type, substr(bonus_attr_a2, instr(bonus_attr_a2, ' ') + 1) bonus_attr_value from client_items where bonus_attr_a2 is not null and file <> 'client_items_etc.xml' union all
SELECT folder, file, id, 3 bonus_num, 1 cond_aug_lvl, substr(bonus_attr_a3, 1, instr(bonus_attr_a3, ' ') - 1) bonus_attr_type, substr(bonus_attr_a3, instr(bonus_attr_a3, ' ') + 1) bonus_attr_value from client_items where bonus_attr_a3 is not null and file <> 'client_items_etc.xml' union all
SELECT folder, file, id, 4 bonus_num, 1 cond_aug_lvl, substr(bonus_attr_a4, 1, instr(bonus_attr_a4, ' ') - 1) bonus_attr_type, substr(bonus_attr_a4, instr(bonus_attr_a4, ' ') + 1) bonus_attr_value from client_items where bonus_attr_a4 is not null and file <> 'client_items_etc.xml' union all

SELECT folder, file, id, 1 bonus_num, 2 cond_aug_lvl, substr(bonus_attr_b1, 1, instr(bonus_attr_b1, ' ') - 1) bonus_attr_type, substr(bonus_attr_b1, instr(bonus_attr_b1, ' ') + 1) bonus_attr_value from client_items where bonus_attr_b1 is not null and file <> 'client_items_etc.xml' union all
SELECT folder, file, id, 2 bonus_num, 2 cond_aug_lvl, substr(bonus_attr_b2, 1, instr(bonus_attr_b2, ' ') - 1) bonus_attr_type, substr(bonus_attr_b2, instr(bonus_attr_b2, ' ') + 1) bonus_attr_value from client_items where bonus_attr_b2 is not null and file <> 'client_items_etc.xml' union all
SELECT folder, file, id, 3 bonus_num, 2 cond_aug_lvl, substr(bonus_attr_b3, 1, instr(bonus_attr_b3, ' ') - 1) bonus_attr_type, substr(bonus_attr_b3, instr(bonus_attr_b3, ' ') + 1) bonus_attr_value from client_items where bonus_attr_b3 is not null and file <> 'client_items_etc.xml' union all
SELECT folder, file, id, 4 bonus_num, 2 cond_aug_lvl, substr(bonus_attr_b4, 1, instr(bonus_attr_b4, ' ') - 1) bonus_attr_type, substr(bonus_attr_b4, instr(bonus_attr_b4, ' ') + 1) bonus_attr_value from client_items where bonus_attr_b4 is not null and file <> 'client_items_etc.xml' 

;



--select distinct file from client_items;
drop table if exists _items_with_separated_bonus_stats;
create table _items_with_separated_bonus_stats as
/*
with strings_lower as (
select lower(name) lower_name, body from strings
where folder like '/ENU%'
)
*/
SELECT
folder,
file,
--body,

id,
name,
desc,
armor_type,
item_type,
material,
icon_name,
price,
max_stack_count,
equipment_slots,
dodge,
quality,
level,
magical_resist,
physical_defend,
lore,
can_exchange,
can_sell_to_npc,
can_deposit_to_character_warehouse,
can_deposit_to_account_warehouse,
can_deposit_to_guild_warehouse,
breakable,
soul_bind,
remove_when_logout,
can_exchange_only_guildmember,
gender_permitted,
warrior,
scout,
mage,
cleric,
engineer,
artist,
fighter,
knight,
assassin,
ranger,
wizard,
elementalist,
chanter,
priest,
gunner,
bard,
rider,
warrior_max,
scout_max,
mage_max,
cleric_max,
engineer_max,
artist_max,
fighter_max,
knight_max,
assassin_max,
ranger_max,
wizard_max,
elementalist_max,
chanter_max,
priest_max,
gunner_max,
bard_max,
rider_max,
option_slot_value,
special_slot_value,
option_slot_bonus,
bonus_apply,
no_enchant,
max_enchant_value,
exceed_enchant,
cannot_changeskin,
ui_sound_type,
cash_item,
can_split,
item_drop_permitted,
can_ap_extraction,
oversea_only,
mesh,
mesh_change,
can_dye,
race_permitted,
default_color_m,
default_color_f,
visual_slot,
magical_defend,
magical_skill_boost_resist,
block,
damage_reduce,
reduce_max,
max_hp,
physical_critical_reduce_rate,
parts_slot_value,
parts_slot_bonus_value,
max_enchant_bonus,
extract_skin_type,
bm_restrict_category,
disposable_trade_item,
disposable_trade_item_count,

substr(bonus_attr1, 1, instr(bonus_attr1, ' ')) bonus_attr1_type,
substr(bonus_attr1, instr(bonus_attr1, ' ') + 1) bonus_attr1_value,
substr(bonus_attr2, 1, instr(bonus_attr2, ' ')) bonus_attr2_type,
substr(bonus_attr2, instr(bonus_attr2, ' ') + 1) bonus_attr2_value,
substr(bonus_attr3, 1, instr(bonus_attr3, ' ')) bonus_attr3_type,
substr(bonus_attr3, instr(bonus_attr3, ' ') + 1) bonus_attr3_value,
substr(bonus_attr4, 1, instr(bonus_attr4, ' ')) bonus_attr4_type,
substr(bonus_attr4, instr(bonus_attr4, ' ') + 1) bonus_attr4_value,
substr(bonus_attr5, 1, instr(bonus_attr5, ' ')) bonus_attr5_type,
substr(bonus_attr5, instr(bonus_attr5, ' ') + 1) bonus_attr5_value,
substr(bonus_attr6, 1, instr(bonus_attr6, ' ')) bonus_attr6_type,
substr(bonus_attr6, instr(bonus_attr6, ' ') + 1) bonus_attr6_value,
substr(bonus_attr7, 1, instr(bonus_attr7, ' ')) bonus_attr7_type,
substr(bonus_attr7, instr(bonus_attr7, ' ') + 1) bonus_attr7_value,
substr(bonus_attr8, 1, instr(bonus_attr8, ' ')) bonus_attr8_type,
substr(bonus_attr8, instr(bonus_attr8, ' ') + 1) bonus_attr8_value,
substr(bonus_attr9, 1, instr(bonus_attr9, ' ')) bonus_attr9_type,
substr(bonus_attr9, instr(bonus_attr9, ' ') + 1) bonus_attr9_value,
substr(bonus_attr10, 1, instr(bonus_attr10, ' ')) bonus_attr10_type,
substr(bonus_attr10, instr(bonus_attr10, ' ') + 1) bonus_attr10_value,
substr(bonus_attr11, 1, instr(bonus_attr11, ' ')) bonus_attr11_type,
substr(bonus_attr11, instr(bonus_attr11, ' ') + 1) bonus_attr11_value,
substr(bonus_attr12, 1, instr(bonus_attr12, ' ')) bonus_attr12_type,
substr(bonus_attr12, instr(bonus_attr12, ' ') + 1) bonus_attr12_value,
substr(bonus_attr_a1, 1, instr(bonus_attr_a1, ' ')) bonus_attr_a1_type,
substr(bonus_attr_a1, instr(bonus_attr_a1, ' ') + 1) bonus_attr_a1_value,
substr(bonus_attr_a2, 1, instr(bonus_attr_a2, ' ')) bonus_attr_a2_type,
substr(bonus_attr_a2, instr(bonus_attr_a2, ' ') + 1) bonus_attr_a2_value,
substr(bonus_attr_a3, 1, instr(bonus_attr_a3, ' ')) bonus_attr_a3_type,
substr(bonus_attr_a3, instr(bonus_attr_a3, ' ') + 1) bonus_attr_a3_value,
substr(bonus_attr_a4, 1, instr(bonus_attr_a4, ' ')) bonus_attr_a4_type,
substr(bonus_attr_a4, instr(bonus_attr_a4, ' ') + 1) bonus_attr_a4_value,

substr(bonus_attr_b1, 1, instr(bonus_attr_b1, ' ')) bonus_attr_b1_type,
substr(bonus_attr_b1, instr(bonus_attr_b1, ' ') + 1) bonus_attr_b1_value,
substr(bonus_attr_b2, 1, instr(bonus_attr_b2, ' ')) bonus_attr_b2_type,
substr(bonus_attr_b2, instr(bonus_attr_b2, ' ') + 1) bonus_attr_b2_value,
substr(bonus_attr_b3, 1, instr(bonus_attr_b3, ' ')) bonus_attr_b3_type,
substr(bonus_attr_b3, instr(bonus_attr_b3, ' ') + 1) bonus_attr_b3_value,
substr(bonus_attr_b4, 1, instr(bonus_attr_b4, ' ')) bonus_attr_b4_type,
substr(bonus_attr_b4, instr(bonus_attr_b4, ' ') + 1) bonus_attr_b4_value,

--bonus_attr1,
--bonus_attr2,
--bonus_attr3,
--bonus_attr4,
--bonus_attr5,
enchant_skill_set_name,
confirm_to_delete_cash_item,
tag,
desc_long,
cash_available_minute,
expire_time,
extra_currency_item,
extra_currency_item_count,
cannot_extraction,
item_highdeva,
parts_slot_type,
--bonus_attr8,
--bonus_attr9,
custom_set_name,
temporary_exchange_time,
tooltip_type,
enchant_type,
cannot_matter_option,
abyss_point,
--bonus_attr12,
abyss_item,
abyss_item_count,
can_pack_count,
--bonus_attr6,
--bonus_attr7,
--bonus_attr10,
--bonus_attr11,
desc_craftman,
guild_level_permitted,
use_emblem,
charge_way,
charge_level,
charge_price1,
--bonus_attr_a1,
--bonus_attr_a2,
--bonus_attr_a3,
--bonus_attr_a4,
burn_on_attack,
burn_on_defend,
charge_price2,
--bonus_attr_b1,
--bonus_attr_b2,
--bonus_attr_b3,
--bonus_attr_b4,
random_option_set,
usable_rank_min,
purchable_rank_min,
reidentify_count,
trade_in_abyss_point,
skill_enchant_set_name,
skin_skill,
equiplevel_adj_bonus_min,
equiplevel_adj_bonus_max,
equiplevel_adj_bonus_prob,
equiplevel_adj_bonus_prob_rivision,
recommend_rank,
enchant_name,
exclusive_attribute1,
exclusive_attribute2,
exclusive_attribute3,
exclusive_attribute4,
exclusive_attribute_desc,
trade_in_price,

usable_rank_max,
authorize_type,
max_authorize,
authorize_name,
can_change_permanent,
highreform_input_groupset,
highreform_output_groupset,
limit_attribute_desc,
blade_fx,
item_fx,
authorize_condition,
gathering_point,
weapon_type,
dmg_decal,
trail_tex,
equip_bone,
min_damage,
max_damage,
str,
agi,
kno,
hit_accuracy,
critical,
parry,
magical_skill_boost,
magical_hit_accuracy,
attack_type,
attack_delay,
hit_count,
attack_gap,
attack_range,
can_proc_enchant,
can_composite_weapon,
can_polish,
polish_burn_on_attack,
polish_burn_on_defend,
combat_equip_bone,
basic_length,
combat_item_fx,
basic_skill_set_name,
attack_fx,
ammo_bone,
ammo_fx,
ammo_speed,
disuse_item,
disuse_item_master_rate,
data_data_trade_in_item_count,
robot_name,
extra_inventory,
quest,
quest_label,
gain_skill_group1,
stigma_type,
motion_name,
gain_skill_group2,
tool_type,
combineskill,
category,
boost_str_desc,
boost_material,
boost_material_num,
disassembly_item,
activation_mode,
activation_count,
breakdown,
activate_target,
use_delay_type_id,
use_delay,
casting_delay,
target_item_category,
ap_extraction_rate,
sub_enchant_material_many,
package_permitted,
looting_fx_name,
polish_set_name,
sub_enchant_material_effect_type,
sub_enchant_material_effect,
target_item_level_min,
target_item_level_max,
reidentify_type,
reidentify_count_not_decrease,
authorize_reset_type,
stat_enchant_type1,
stat_enchant_value1,
stat_enchant_type2,
stat_enchant_value2,
stat_enchant_type3,
stat_enchant_value3,
stat_enchant_type4,
stat_enchant_value4,
stat_enchant_type5,
stat_enchant_value5,
target_parts_slot_type,
proc_enchant_skill,
proc_enchant_skill_level,
proc_enchant_effect_occur_prob,
proc_fx,
desc_proc,
proc_enchant_effect_occur_left_prob,
proc_enchant_break_prob,
proc_enchant_non_break_count,
charge_capacity,
unit_sell_count,
weapon_boost_value,
dyeing_color,
use_fx,
use_fx_bone,
skill_to_learn,
summon_housing_object,
doc_bg,
custom_part_name,
area_to_use,
activation_skill,
activation_level,
activate_target_race,
drop_each_member,
equip_type,
difficulty,
scale,
booster_wing,
wing_fx,
wing_sound,
func_pet_name,
func_pet_dur_minute,
luna_price,
craft_recipe_info,
default_prohibit,
doping_pet_useable,
ownership_world,
ride_usable,
return_alias,
return_worldid,
multi_return_item,
cash_social,
cash_title,
auto_use_on_mail_get_item,
inven_warehouse_max_extendlevel,
housing_change_size,
cosmetic_name,
coupon_item,
coupon_item_count,
toy_pet_name,
enchant_cpstone,
use_notice,
disassembly_type,
assembly_item,
trial_user_can_vendor_buy,
custom_idle_anim,
custom_run_anim,
custom_jump_anim,
custom_rest_anim,
anim_expire_time,
custom_shop_anim,
reset_instance_coolt_sync_id,
recovery_instance_count,
f2p_pack_name,
f2p_pack_available,
char_bm_name,
char_bm_available_duration,
char_bm_unique,
bonus_addexp_item,
megaphone_rgb,
exp_extraction_cost,
exp_extraction_reward,
gain_skill_costume,
ride_data_name
/*
id,
name,
desc,
armor_type,
item_type,
material,
icon_name,
price,
max_stack_count,
equipment_slots,
dodge,
quality,
level,
magical_resist,
physical_defend,
magical_defend,
magical_skill_boost_resist,
block,
damage_reduce,
reduce_max,
max_hp,
physical_critical_reduce_rate,
lore,
can_exchange,
can_sell_to_npc,
can_deposit_to_character_warehouse,
can_deposit_to_account_warehouse,
can_deposit_to_guild_warehouse,
breakable,
soul_bind,
remove_when_logout,
can_exchange_only_guildmember,
gender_permitted,
warrior,
scout,
mage,
cleric,
engineer,
artist,
fighter,
knight,
assassin,
ranger,
wizard,
elementalist,
chanter,
priest,
gunner,
bard,
rider,
warrior_max,
scout_max,
mage_max,
cleric_max,
engineer_max,
artist_max,
fighter_max,
knight_max,
assassin_max,
ranger_max,
wizard_max,
elementalist_max,
chanter_max,
priest_max,
gunner_max,
bard_max,
rider_max,

option_slot_value,
special_slot_value,
option_slot_bonus,
*/

/*
charge_way,
charge_level,
charge_price1,
charge_price2,
burn_on_attack,
burn_on_defend,
recommend_rank,
usable_rank_min,
usable_rank_max,
purchable_rank_min,
random_option_set,
reidentify_count,
bonus_apply,
no_enchant,
max_enchant_value,
max_enchant_bonus,
exceed_enchant,
enchant_skill_set_name,
cannot_changeskin,
extract_skin_type,
ui_sound_type,
cash_item,
can_split,
item_drop_permitted,
temporary_exchange_time,
bm_restrict_category,
disposable_trade_item,
disposable_trade_item_count,
can_ap_extraction,
oversea_only,
mesh,
mesh_change,
default_color_m,
default_color_f,
can_dye,
race_permitted,

abyss_point,
extra_currency_item,
extra_currency_item_count,


can_pack_count,
abyss_item,
abyss_item_count,

cannot_extraction,

visual_slot,
parts_slot_value,
parts_slot_bonus_value,
desc_long,
enchant_name,
cannot_matter_option,
tag,
parts_slot_type,


use_emblem,
exclusive_attribute1,
exclusive_attribute2,
exclusive_attribute3,
exclusive_attribute4,
exclusive_attribute_desc,
confirm_to_delete_cash_item,
expire_time,
trade_in_price,
authorize_type,
max_authorize,
authorize_name,
tooltip_type,
item_highdeva,
enchant_type,
custom_set_name,
can_change_permanent,
highreform_groupset,
equiplevel_adj_bonus_min,
equiplevel_adj_bonus_max,
equiplevel_adj_bonus_prob,
equiplevel_adj_bonus_prob_rivision,
limit_attribute_desc,
skill_enchant_set_name,
cash_available_minute,
desc_craftman,
trade_in_abyss_point,
skin_skill,

--blade_fx,
--item_fx,
guild_level_permitted
--authorize_condition,
--gathering_point
*/

from client_items
--left join strings_lower
--on lower(client_items.desc) = strings_lower.lower_name
where file <> 'client_items_etc.xml' 
and lower(name) not like 'npc%_'
and coalesce(equipment_slots, 'none') <> 'none'

and not (min_damage = 15 and max_damage = 17 and quality = 'common' and str = 0 and kno = 0)
and not (coalesce(armor_type, 'no_armor') <> 'no_armor' and physical_defend = 0)
--where cast(chanter as number) >= 65
;

drop table if exists _EQUIPMENT_BONUS_ATTRIBUTES;
create table _EQUIPMENT_BONUS_ATTRIBUTES as

select
id,
1 attribute_number,
substr(bonus_attr1, 1, instr(bonus_attr1, ' ')) type,
substr(bonus_attr1, instr(bonus_attr1, ' ') + 1) value
from client_items 
where type is not null

union all

select
id,
2 attribute_number,
substr(bonus_attr2, 1, instr(bonus_attr2, ' ')) type,
substr(bonus_attr2, instr(bonus_attr2, ' ') + 1) value
from client_items 
where type is not null

union all

select
id,
3 attribute_number,
substr(bonus_attr3, 1, instr(bonus_attr3, ' ')) type,
substr(bonus_attr3, instr(bonus_attr3, ' ') + 1) value
from client_items 
where type is not null

union all

select
id,
4 attribute_number,
substr(bonus_attr4, 1, instr(bonus_attr4, ' ')) type,
substr(bonus_attr4, instr(bonus_attr4, ' ') + 1) value
from client_items 
where type is not null

union all

select
id,
5 attribute_number,
substr(bonus_attr5, 1, instr(bonus_attr5, ' ')) type,
substr(bonus_attr5, instr(bonus_attr5, ' ') + 1) value
from client_items 
where type is not null

union all

select
id,
6 attribute_number,
substr(bonus_attr6, 1, instr(bonus_attr6, ' ')) type,
substr(bonus_attr6, instr(bonus_attr6, ' ') + 1) value
from client_items 
where type is not null

union all

select
id,
7 attribute_number,
substr(bonus_attr7, 1, instr(bonus_attr7, ' ')) type,
substr(bonus_attr7, instr(bonus_attr7, ' ') + 1) value
from client_items 
where type is not null

union all

select
id,
8 attribute_number,
substr(bonus_attr8, 1, instr(bonus_attr8, ' ')) type,
substr(bonus_attr8, instr(bonus_attr8, ' ') + 1) value
from client_items 
where type is not null

union all

select
id,
9 attribute_number,
substr(bonus_attr9, 1, instr(bonus_attr9, ' ')) type,
substr(bonus_attr9, instr(bonus_attr9, ' ') + 1) value
from client_items 
where type is not null

union all

select
id,
10 attribute_number,
substr(bonus_attr10, 1, instr(bonus_attr10, ' ')) type,
substr(bonus_attr10, instr(bonus_attr10, ' ') + 1) value
from client_items 
where type is not null

union all

select
id,
11 attribute_number,
substr(bonus_attr11, 1, instr(bonus_attr11, ' ')) type,
substr(bonus_attr11, instr(bonus_attr11, ' ') + 1) value
from client_items 
where type is not null

union all

select
id,
12 attribute_number,
substr(bonus_attr12, 1, instr(bonus_attr12, ' ')) type,
substr(bonus_attr12, instr(bonus_attr12, ' ') + 1) value
from client_items 
where type is not null

union all

select
id,
101 attribute_number,
substr(bonus_attr_a1, 1, instr(bonus_attr_a1, ' ')) type,
substr(bonus_attr_a1, instr(bonus_attr_a1, ' ') + 1) value
from client_items 
where type is not null

union all

select
id,
102 attribute_number,
substr(bonus_attr_a2, 1, instr(bonus_attr_a2, ' ')) type,
substr(bonus_attr_a2, instr(bonus_attr_a2, ' ') + 1) value
from client_items 
where type is not null

union all

select
id,
103 attribute_number,
substr(bonus_attr_a3, 1, instr(bonus_attr_a3, ' ')) type,
substr(bonus_attr_a3, instr(bonus_attr_a3, ' ') + 1) value
from client_items 
where type is not null

union all

select
id,
104 attribute_number,
substr(bonus_attr_a4, 1, instr(bonus_attr_a4, ' ')) type,
substr(bonus_attr_a4, instr(bonus_attr_a4, ' ') + 1) value
from client_items 
where type is not null


union all

select
id,
201 attribute_number,
substr(bonus_attr_b1, 1, instr(bonus_attr_b1, ' ')) type,
substr(bonus_attr_b1, instr(bonus_attr_b1, ' ') + 1) value
from client_items 
where type is not null

union all

select
id,
202 attribute_number,
substr(bonus_attr_b2, 1, instr(bonus_attr_b2, ' ')) type,
substr(bonus_attr_b2, instr(bonus_attr_b2, ' ') + 1) value
from client_items 
where type is not null

union all

select
id,
203 attribute_number,
substr(bonus_attr_b3, 1, instr(bonus_attr_b3, ' ')) type,
substr(bonus_attr_b3, instr(bonus_attr_b3, ' ') + 1) value
from client_items 
where type is not null

union all

select
id,
204 attribute_number,
substr(bonus_attr_b4, 1, instr(bonus_attr_b4, ' ')) type,
substr(bonus_attr_b4, instr(bonus_attr_b4, ' ') + 1) value
from client_items 
where type is not null
;


with total_block as (
    select id,
    sum(value) value
    from _EQUIPMENT_BONUS_ATTRIBUTES
    where trim(lower(type)) = 'block'
    group by id
),
total_pvpdefendratio as (
    select id,
    sum(value) value
    from _EQUIPMENT_BONUS_ATTRIBUTES
    where trim(lower(type)) = 'pvpdefendratio'
    group by id
),
total_magicalresist as (
    select id,
    sum(value) value
    from _EQUIPMENT_BONUS_ATTRIBUTES
    where trim(lower(type)) = 'magicalresist'
    group by id
)
select
items.id, 
--coalesce(body, name) body,
strings.body item_name,
level,
quality,
reduce_max dmg_reduction_max,
damage_reduce dmg_reduction_pct,
max_enchant_value,
block + coalesce(total_block.value, 0) block, 
cast(total_pvpdefendratio.value as real) / 10 pvp_defense_pct, 
total_magicalresist.value magic_resist,

option_slot_value - option_slot_bonus manastone_slots,
option_slot_bonus manastone_slots_RNG

from _items_with_separated_bonus_stats items
left join total_block
on items.id = total_block.id

left join total_pvpdefendratio
on items.id = total_pvpdefendratio.id

left join total_magicalresist
on items.id = total_magicalresist.id

left join _ENGLISH_STRINGS_NA_EU_XREF strings
on upper(items.desc) = strings.upper_name

where equipment_slots = 'sub'
order by cast(level as integer) desc, reduce_max desc, items.id
;

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
chance1.enchant_prob / 10 plus1_prob_pct,
chance2.enchant_prob / 10 plus2_prob_pct,
chance3.enchant_prob / 10 plus3_prob_pct,
skillGroups.body,
enhance_skills.skill_prob * 100.0 / sum_skill_prob.skill_prob skill_prob_pct,
skillGroups.body
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
;
--where id = 101501519


select distinct type from _EQUIPMENT_BONUS_ATTRIBUTES