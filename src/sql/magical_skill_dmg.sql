with str_NA as (
select
upper(name) name, body
FROM ENU_data_strings_client_strings_skill
),
str_EU as (
select
upper(name) name, body
FROM ENG_data_strings_client_strings_skill
)
SELECT 
--body, skill_tag, type, sub_type, skill_category, ultra_skill, ultra_transfer, chain_category_level, skill_group_name, skillicon_name, delay_id, activation_attribute, cost_dp, cost_charge_weapon, cost_charge_armor, polish_charge_weapon, dispel_category, required_dispel_level, target_slot, target_stop, hostile_type, delay_type, delay_time, first_target, first_target_valid_distance, target_range, target_species_restriction, target_relation_restriction, cancel_rate, obstacle, add_wpn_range, move_casting, auto_attack, motion_name, target_marker_radius, show_weapon, fire_fx, fire_fx_bone, effect1_type, effect1_noresist, effect1_remain1, effect1_remain2, effect1_effectid, effect1_basiclv, effect1_target_type, effect1_reserved7, effect1_reserved8, effect1_reserved9, effect1_reserved16, effect1_hop_type, effect1_hop_b, effect2_type, effect2_noresist, effect2_checkforchain, effect2_remain1, effect2_remain2, effect2_effectid, effect2_basiclv, effect2_target_type, effect2_cond_preeffect, effect2_cond_preeffect_prob1, effect2_cond_preeffect_prob2, effect2_reserved1, effect2_reserved2, effect2_reserved6, effect2_reserved13, effect2_reserved16, effect3_type, effect3_noresist, effect3_checkforchain, effect3_remain1, effect3_remain2, effect3_effectid, effect3_basiclv, effect3_target_type, effect3_cond_preeffect, effect3_cond_preeffect_prob1, effect3_cond_preeffect_prob2, effect3_reserved1, effect3_reserved2, effect3_reserved6, effect3_reserved13, effect3_reserved16, effect4_type, effect4_noresist, effect4_checkforchain, effect4_remain1, effect4_remain2, effect4_effectid, effect4_basiclv, effect4_target_type, effect4_cond_preeffect, effect4_cond_preeffect_prob1, effect4_cond_preeffect_prob2, effect4_reserved1, effect4_reserved2, effect4_reserved6, effect4_reserved13, effect4_reserved16, effect1_hop_a, pvp_remain_time_ratio, cost_parameter, cost_end, revision_distance, casting_delay, peace_skill, cast_fx, cast_fx_bone, cast_voice, hit_fx, hit_fx_bone, hit_fx_attacker_oriented, status_fx, status_fx_bone, status_fx_slot, effect1_reserved10, effect1_reserved11, effect1_acc_mod2, effect1_critical_prob_mod2, effect3_reserved7, effect3_reserved8, effect3_reserved9, effect3_reserved10, effect3_reserved11, effect3_critical_prob_mod2, effect3_hop_type, effect3_hop_b, chain_category_name, chain_skill_prob2, effect1_randomtime, effect1_reserved1, effect1_reserved2, effect1_reserved12, effect2_randomtime, effect2_reserved7, effect2_reserved8, effect2_reserved9, effect2_reserved10, effect2_reserved11, effect2_critical_prob_mod2, effect2_hop_type, effect2_hop_b, effect3_randomtime, cost_end_lv, instant_skill, motion_play_speed, effect1_reserved3, effect1_reserved4, effect1_reserved5, effect3_hop_a, effect4_hop_a, effect4_hop_b, effect1_reserved6, interval_hit_fx, interval_hit_fx_bone, effect1_reserved13, effect4_hop_type, spend_time_on_logout, target_maxcount, target_range_area_type, target_range_opt1, target_range_opt3, effect1_reserved14, effect1_reserved15, effect1_reserved17, effect1_reserved18, effect2_reserved3, effect2_reserved4, effect2_reserved14, effect3_reserved3, effect3_reserved5, no_remove_at_die, self_flying_restriction, component, component_count, component_expendable, effect2_checktime, effect1_checktime, no_save_on_logout, effect1_reserved_cond1, effect1_reserved_cond1_prob1, effect1_reserved_cond1_prob2, required_sword, required_mace, required_dagger, required_orb, required_book, required_2hsword, required_polearm, required_staff, required_bow, ammo_bone, ammo_fx, ammo_speed, target_valid_status1, target_valid_status2, target_valid_status3, target_valid_status4, target_valid_status5, nouse_combat_state, effect3_hidemsg, target_slot_level, system_fire_fx, system_fire_fx_bone, allow_use_form_category, no_jump_cancel, trail_tex, hit_camera_shake, effect1_critical_add_dmg_mod2, splash, hit_fx_ex1, effect2_acc_mod2, effect2_hop_a, target_flying_restriction, pvp_damage_ratio, effect3_reserved4, penalty_type_succ, effect2_reserved_cond1, effect2_reserved_cond1_prob1, effect2_reserved_cond1_prob2, effect2_reserved15, effect2_reserved17, effect2_reserved18, effect3_reserved14, effect3_reserved15, effect3_reserved17, effect3_reserved18, effect4_reserved3, effect4_reserved4, effect4_reserved7, effect4_reserved14, effect4_reserved15, effect4_reserved17, effect4_reserved18, effect4_hidemsg, effect4_reserved10, effect4_reserved11, effect4_reserved12, effect4_critical_prob_mod2, ammo_fx_type, effect2_reserved5, prechain_category_name, chain_time, effect1_hidemsg, self_chain_count, delay_time_lv, motion_mode, pre_fx, pre_fx_delay, pre_fx_bone, counter_skill, prechain_count, effect2_reserved12, hp_fx, penalty_skill_succ, effect3_acc_mod2, charge_set_name, use_arrow_count, use_arrow, effect1_acc_mod1, target_range_opt2, target_range_opt4, effect3_reserved_cond1, effect3_reserved_cond1_prob1, effect3_reserved_cond1_prob2, chain_skill_prob1, effect2_hidemsg, hit_fx_ex2, effect1_critical_prob_mod1, cost_time, effect1_reserved19, effect1_reserved20, effect1_reserved21, effect1_reserved22, required_leftweapon, required_gun, required_cannon, cost_toggle, penalty_skill_succ_msg, required_ride_robot, effect2_cond_race, effect2_cond_race_prob1, effect2_cond_race_prob2, toggle_timer, boost_type, effect1_reserved_cond2_prob2, required_keyblade, effect4_reserved19, effect4_reserved20, effect4_reserved21, effect4_reserved22, max_maintain_count, effect2_reserved19, change_stance, effect2_reserved20, effect2_reserved21, effect2_reserved22, effect3_reserved12, effect2_cond_status, effect2_cond_status_prob1, effect2_cond_status_prob2, effect2_cond_attack_dir, effect2_cond_attack_dir_prob1, effect2_cond_attack_dir_prob2, hit_fx_ex3, hit_fx_ex4, hit_fx_ex5, effect3_checktime, self_hide_restriction, effect2_acc_mod1, effect4_reserved8, effect4_reserved_cond1, effect4_reserved_cond1_prob1, effect4_reserved_cond1_prob2, cost_checktime_parameter, cost_checktime, cost_start_lv, cost_start, required_harp, aura_fx, aura_fx_bone, aura_fx_slot, status_sfx1, effect3_reserved_cond2, effect3_reserved_cond2_prob1, effect3_reserved_cond2_prob2, effect1_reserved_cond2, remaining_fx, sfx3, status_shader, conflict_id, effect4_checktime, effect4_reserved9, effect1_reserved_cond2_prob1, effect3_critical_prob_mod1, charging_delay, effect1_cond_preeffect_prob1, effect1_cond_preeffect_prob2, effect3_cond_race_prob1, effect3_cond_race_prob2, nonchained_delay_time, prechain_skillname, broadcast_use_message, effect4_reserved5, castcancel_fx, castcancel_fx_bone, cast_fxc, fire_fxc, hit_fxc, stc_desc, ammo_fxc, cast_camera_work, hit_camera_work, hit_target_camera_shake, effect3_cond_attack_dir, effect3_cond_attack_dir_prob1, effect3_cond_attack_dir_prob2, effect3_cond_status, effect3_cond_status_prob1, effect3_cond_status_prob2, effect4_cond_status, effect4_cond_status_prob1, effect4_cond_status_prob2, need_fx, penalty_no_casting_time_succ, effect2_critical_prob_mod1, max_skill_point 

upper(substr(skills.name, 1, 4)) class, learn.class class_learn, 
case when str_NA.body = str_EU.body 
    then coalesce(str_NA.body, skills.desc)
    else coalesce(str_NA.body, skills.desc) || ' / ' || coalesce(str_EU.body, skills.desc) || case when chain_category_level is not null then ' Lv ' || chain_category_level else '' end 
end skill,   
effect1_type, 
coalesce(effect1_reserved1, 0) + effect1_reserved2 damage,
effect1_reserved1 dmg_per_upgrade_lvl,
--effect1_reserved2,
coalesce(pvp_damage_ratio, 100) pvp_multiplier,
effect1_reserved10 element,
--effect1_acc_mod1,
effect1_acc_mod2,
--effect1_critical_add_dmg_mod2,
--effect1_critical_prob_mod1,
--effect1_critical_prob_mod2,
coalesce(counter_skill,'')||coalesce(target_valid_status1,'')||coalesce(target_valid_status2,'')||coalesce(target_valid_status3,'')||coalesce(target_valid_status4,'') usage_condition,

case when effect1_reserved16 = 0 then null
     when effect1_reserved16 is not null then effect1_reserved10 + coalesce(effect1_reserved9, 0) 
     when effect1_reserved22 is not null then effect1_reserved21 + coalesce(effect1_reserved20, 0) 
end conditional_damage,
case when effect1_reserved16 = 0 then null
     when effect1_reserved16 is not null then effect1_reserved9 
     when effect1_reserved22 is not null then effect1_reserved20
end upgrade_conditional_damage_bonus,

--effect1_reserved9 upgrade_conditional_damage_bonus, 

case when coalesce(effect1_reserved16, effect1_reserved22) = '0' then null
     when coalesce(effect1_reserved16, effect1_reserved22) = '_dmg_race_type_A' then 'Warrior-type'
     when coalesce(effect1_reserved16, effect1_reserved22) = '_dmg_race_type_B' then 'Assassin-type'
     when coalesce(effect1_reserved16, effect1_reserved22) = '_dmg_race_type_C' then 'Mage-type'
     when coalesce(effect1_reserved16, effect1_reserved22) = '_dmg_race_type_D' then 'Special-type'
     when coalesce(effect1_reserved16, effect1_reserved22) = '_dmg_race_type_A, _dmg_race_type_B, _dmg_race_type_C, _dmg_race_type_D' then 'Warrior/Assassin/Mage/Special-types'
     else coalesce(effect1_reserved16, effect1_reserved22)
end bonus_damage_condition,


case when effect1_noresist = 1 then 'N' else 'Y' end resistable, *

FROM skills_client_skills skills
left outer join
/*client_strings_skill*/ str_NA
on upper(skills.desc) = str_NA.name
left outer join
/*client_strings_skill*/ str_EU
on upper(skills.desc) = str_EU.name
left outer join 
skills_client_skill_learns learn
on skills.name = learn.skill


where effect1_type like '%SpellATK%_Instant' --body = 'Break Power'

--and (upper(substr(skills.name, 1, 2)) in ('MA','WI') or class_learn in ('MAGE','WIZARD'))
--and (upper(substr(skills.name, 1, 2)) in ('CL','PR') or class_learn in ('CLERIC','PRIEST'))
and (upper(substr(skills.name, 1, 3)) = 'AR_' or class_learn in ('ARTIST','BARD'))
--and skill_group_name is not null
order by str_NA.body, cast(chain_category_level as number)



--select * from client_skills