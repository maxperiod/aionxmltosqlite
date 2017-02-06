select 
class,
skill,
--effect1_reserved1,
effect1_reserved2 wpn_dmg_pct_boost,
effect1_remain2 / 1000 duration,
(delay_time + delay_time_lv) / 1000 cooldown,
delay_time_lv / 1000 cd_change_per_enchant
--,*
from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) in ('statup', 'weaponstatup')
and lower(effect1_reserved13) = 'phyattack'
and effect1_reserved1 = 0
and class is not null 

;