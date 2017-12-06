DROP TABLE IF EXISTS _CONDITIONAL_ATTACK;
CREATE TABLE _CONDITIONAL_ATTACK (name text, body text);

begin;

insert into _CONDITIONAL_ATTACK values('_back', 'backstabbed');
insert into _CONDITIONAL_ATTACK values('_back, _race_pc_dark, _race_gchief_dragon, _race_drakan, _race_lizardman, _race_naga', 'Backstabbed Asmodian players or Balaurs');
insert into _CONDITIONAL_ATTACK values('_back, _race_pc_light, _race_gchief_dragon, _race_drakan, _race_lizardman, _race_naga', 'Backstabbed Elyos players or Balaurs');
insert into _CONDITIONAL_ATTACK values('_class_fighter,_class_knight', 'Gladiators or Templars');
insert into _CONDITIONAL_ATTACK values('_class_ranger,_class_assassin,_class_priest,_class_chanter,_class_wizard,_class_elementallist', 'Rangers, Assassins, Clerics, Chanters, Sorcer(er/ess), Spiritmasters');
insert into _CONDITIONAL_ATTACK values('_class_ranger,_class_assassin,_class_priest,_class_chanter,_class_wizard,_class_elementallist,_class_bard,_class_gunner', 'Rangers, Assassins, Clerics, Chanters, Sorcer(er/ess), Spiritmasters, Songweavers / Bards, Gunslingers / Gunners');
insert into _CONDITIONAL_ATTACK values('_class_ranger,_class_priest,_class_chanter,_class_wizard,_class_elementallist', 'Rangers, Clerics, Chanters, Sorcer(er/ess), Spiritmasters');
insert into _CONDITIONAL_ATTACK values('_dmg_race_type_a', 'Warrior type');
insert into _CONDITIONAL_ATTACK values('_dmg_race_type_a, _dmg_race_type_b, _dmg_race_type_c, _dmg_race_type_d', ' ');
insert into _CONDITIONAL_ATTACK values('_dmg_race_type_b', 'Assassin type');
insert into _CONDITIONAL_ATTACK values('_dmg_race_type_c', 'Mage type');
insert into _CONDITIONAL_ATTACK values('_dmg_race_type_d', 'Special type');
insert into _CONDITIONAL_ATTACK values('_front', 'front-hit');
--insert into _CONDITIONAL_ATTACK values('_nflying', ' ');
insert into _CONDITIONAL_ATTACK values('_race_beast', 'Beasts');
insert into _CONDITIONAL_ATTACK values('_race_carrier', 'Carriers');
insert into _CONDITIONAL_ATTACK values('_race_construct', 'Constructs');
insert into _CONDITIONAL_ATTACK values('_race_dragon', 'Dragons');
insert into _CONDITIONAL_ATTACK values('_race_dragon_castle_door', 'Balaur Fortress Gates');
insert into _CONDITIONAL_ATTACK values('_race_dragon_castle_door,_race_gchief_dragon', 'Balaur Fortress gates and GChief Dragons');
insert into _CONDITIONAL_ATTACK values('_race_dragon_castle_door,_race_pc_dark_castle_door,_race_pc_light_castle_door', 'Fortress Gates');
insert into _CONDITIONAL_ATTACK values('_race_drakan', 'Drakans');
insert into _CONDITIONAL_ATTACK values('_race_elemental, deform', 'Elementals or Deformeds');
insert into _CONDITIONAL_ATTACK values('_race_gchief_dragon', 'GChief Dragons');
insert into _CONDITIONAL_ATTACK values('_race_gchief_dragon, _race_drakan, _race_lizardman, _race_naga', 'Balaur');
insert into _CONDITIONAL_ATTACK values('_race_gchief_dragon, _race_drakan, _race_lizardman, _race_naga, _race_pc_light, _race_pc_dark', 'Players or Balaurs');
insert into _CONDITIONAL_ATTACK values('_race_gchief_dragon,_race_gchief_light,_race_gchief_dark', 'Elyos, Asmodian, or Balaur Chiefs');
insert into _CONDITIONAL_ATTACK values('_race_gchief_light,_race_gchief_dark', 'Elyos or Asmodian Chiefs');
insert into _CONDITIONAL_ATTACK values('_race_livingwater', 'Living Waters');
insert into _CONDITIONAL_ATTACK values('_race_magicalmonster', 'Magical Monsters');
insert into _CONDITIONAL_ATTACK values('_race_naga', 'Nagas');
insert into _CONDITIONAL_ATTACK values('_race_outsider', 'Outsiders');
insert into _CONDITIONAL_ATTACK values('_race_pc_dark', 'Asmodians');
insert into _CONDITIONAL_ATTACK values('_race_pc_dark, _race_pc_light, _race_gchief_dragon, _race_drakan, _race_lizardman, _race_naga', 'Players or Balaurs');
insert into _CONDITIONAL_ATTACK values('_race_pc_light', 'Elyos');
insert into _CONDITIONAL_ATTACK values('_race_pc_light, _race_gchief_dragon, _race_drakan, _race_lizardman, _race_naga', 'Asmodian Players or Balaurs');
insert into _CONDITIONAL_ATTACK values('_race_pc_light,_race_pc_dark', 'Players');
insert into _CONDITIONAL_ATTACK values('_race_pc_light_castle_door, _race_pc_dark_castle_door, _race_dragon_castle_door', 'Fortress Gates');
insert into _CONDITIONAL_ATTACK values('_race_pc_light_castle_door,_race_pc_dark_castle_door', 'Asmodian or Elyos Fortress Gates');
insert into _CONDITIONAL_ATTACK values('_race_pc_light_castle_door,_race_pc_dark_castle_door, _race_dragon_castle_door', 'Fortress Gates');
insert into _CONDITIONAL_ATTACK values('_race_siegedrakan', 'Siege Drakans');
insert into _CONDITIONAL_ATTACK values('_race_siegedrakan,_race_construct', 'Siege Drakans or Constructs');
insert into _CONDITIONAL_ATTACK values('_race_tricodark', 'Tricodarks');
insert into _CONDITIONAL_ATTACK values('bleed', 'Bleeding');
insert into _CONDITIONAL_ATTACK values('bleed,snare,blind', 'Bleeding, Snared, or Blinded');
insert into _CONDITIONAL_ATTACK values('blind', 'Blinded');
insert into _CONDITIONAL_ATTACK values('curse', 'Cursed');
insert into _CONDITIONAL_ATTACK values('deform', 'Deformed');
insert into _CONDITIONAL_ATTACK values('disease', 'Diseased');
insert into _CONDITIONAL_ATTACK values('disease,paralyze', 'Diseased or Paralyzed');
insert into _CONDITIONAL_ATTACK values('fear', 'Feared');
insert into _CONDITIONAL_ATTACK values('openaerial', 'Aerial Thrusted');
insert into _CONDITIONAL_ATTACK values('paralyze', 'Paralyzed');
insert into _CONDITIONAL_ATTACK values('poison', 'Poisoned');
insert into _CONDITIONAL_ATTACK values('poison, stun', 'Poisoned or Stunned');
insert into _CONDITIONAL_ATTACK values('root', 'Rooted');
insert into _CONDITIONAL_ATTACK values('silence', 'Silenced');
insert into _CONDITIONAL_ATTACK values('silence,bleed,blind', 'Silenced, Bleeding, or Blinded');
insert into _CONDITIONAL_ATTACK values('silence,bleed,snare', 'Silenced, Bleeding, or Snared');
insert into _CONDITIONAL_ATTACK values('silence,snare,blind', 'Silenced, Snared, or Blinded');
insert into _CONDITIONAL_ATTACK values('sleep', 'Sleeping');
insert into _CONDITIONAL_ATTACK values('snare', 'Snared');
insert into _CONDITIONAL_ATTACK values('spin', 'Spinning');
insert into _CONDITIONAL_ATTACK values('stumble', 'Stumbled');
insert into _CONDITIONAL_ATTACK values('stumble,stun,stagger', 'Stumbled, Stunned, Staggered');
insert into _CONDITIONAL_ATTACK values('stun', 'Stunned');
insert into _CONDITIONAL_ATTACK values('stunlike', 'Shocked');
--insert into _CONDITIONAL_ATTACK values('stun,stumble,stagger,paralyze,snare,root,sleep,bleed,poison,curse,silence,blind,bind', ' ');

commit;

DROP TABLE IF EXISTS _STAT_NAMES;
CREATE TABLE _STAT_NAMES (name text, body text, divisor number, is_pct number);

begin;
insert into _STAT_NAMES values('activedefend', 'Active Defend', 1, 0);
insert into _STAT_NAMES values('agi', 'Agility', 1, 0);
insert into _STAT_NAMES values('allpara', 'All Paralyze', 1, 0);
insert into _STAT_NAMES values('allresist', 'All Resist', 1, 0);
insert into _STAT_NAMES values('allspeed', 'All Speed', 10, 0);
insert into _STAT_NAMES values('arall', 'All Resist', 1, 0);
insert into _STAT_NAMES values('arbind', 'Bind Resist', 1, 0);
insert into _STAT_NAMES values('arblind', 'Blind Resist', 1, 0);
insert into _STAT_NAMES values('ardeform', 'Deform Resist', 1, 0);
insert into _STAT_NAMES values('arfear', 'Fear Resist', 1, 0);
insert into _STAT_NAMES values('arparalyze', 'Paralyze Resist', 1, 0);
insert into _STAT_NAMES values('arpulled', 'Pull Resist', 1, 0);
insert into _STAT_NAMES values('arroot', 'Root Resist', 1, 0);
insert into _STAT_NAMES values('arsilence', 'Silence Resist', 1, 0);
insert into _STAT_NAMES values('arsleep', 'Sleep Resist', 1, 0);
insert into _STAT_NAMES values('arsnare', 'Snare Resist', 1, 0);
insert into _STAT_NAMES values('arstagger', 'Stagger Resist', 1, 0);
insert into _STAT_NAMES values('arstumble', 'Stumble Resist', 1, 0);
insert into _STAT_NAMES values('arstun', 'Stun Resist', 1, 0);
insert into _STAT_NAMES values('arstunlike', 'Shock Resist', 1, 0);
insert into _STAT_NAMES values('attackdelay', 'Attack Speed', 1, 0);
insert into _STAT_NAMES values('attackrange', 'Attack Range', 1, 0);
insert into _STAT_NAMES values('block', 'Block', 1, 0);
insert into _STAT_NAMES values('boostcastingtime', 'Cast Speed', 1, 0);
insert into _STAT_NAMES values('concentration', 'Concentration', 1, 0);
insert into _STAT_NAMES values('critical', 'Crit Strike', 1, 0);
insert into _STAT_NAMES values('dex', 'Precision', 1, 0);
insert into _STAT_NAMES values('dodge', 'Evasion', 1, 0);
insert into _STAT_NAMES values('elementaldefendair', 'Wind Resist', 1, 0);
insert into _STAT_NAMES values('elementaldefendall', 'All Element Resist', 1, 0);
insert into _STAT_NAMES values('elementaldefenddark', 'Dark Resist', 1, 0);
insert into _STAT_NAMES values('elementaldefendearth', 'Earth Resist', 1, 0);
insert into _STAT_NAMES values('elementaldefendfire', 'Fire Resist', 1, 0);
insert into _STAT_NAMES values('elementaldefendlight', 'Light Resist', 1, 0);
insert into _STAT_NAMES values('elementaldefendwater', 'Water Resist', 1, 0);
--insert into _STAT_NAMES values('erair', ' ', 1, 0);
--insert into _STAT_NAMES values('erearth', ' ', 1, 0);
--insert into _STAT_NAMES values('erfire', ' ', 1, 0);
--insert into _STAT_NAMES values('erwater', ' ', 1, 0);
insert into _STAT_NAMES values('flyspeed', 'Flight Speed', 1, 0);
insert into _STAT_NAMES values('fpregen', 'Flight Time Regen', 1, 0);
insert into _STAT_NAMES values('healskillboost', 'Healing Boost', 1, 0);
insert into _STAT_NAMES values('hitaccuracy', 'Accuracy', 1, 0);
insert into _STAT_NAMES values('hpregen', 'HP Regeneration', 1, 0);
insert into _STAT_NAMES values('kno', 'Knowledge', 1, 0);
insert into _STAT_NAMES values('knowil', 'Knowledge-Will', 1, 0);
insert into _STAT_NAMES values('magical_resist', 'Magic Resist', 1, 0);
insert into _STAT_NAMES values('magicalattack', 'Magical Attack', 1, 0);
insert into _STAT_NAMES values('magicalcritical', 'Crit Spell', 1, 0);
insert into _STAT_NAMES values('magicalcriticalreducerate', 'Spell Resist', 1, 0);
insert into _STAT_NAMES values('magicaldefend', 'Magic Defense', 1, 0);
insert into _STAT_NAMES values('magicalhitaccuracy', 'Magical Accuracy', 1, 0);
insert into _STAT_NAMES values('magicalresist', 'Magic Resist', 1, 0);
insert into _STAT_NAMES values('magicalskillboost', 'Magic Boost', 1, 0);
insert into _STAT_NAMES values('magicalskillboostresist', 'Magic Suppression', 1, 0);
insert into _STAT_NAMES values('maxfp', 'Maximum Flight Time', 1, 0);
insert into _STAT_NAMES values('maxhp', 'Maximum HP', 1, 0);
insert into _STAT_NAMES values('maxmp', 'Maximum MP', 1, 0);
insert into _STAT_NAMES values('mpregen', 'MP Regeneration', 1, 0);
insert into _STAT_NAMES values('openareial_arp', 'Aether Thrust Resistance Penetration', 1, 0);
insert into _STAT_NAMES values('paralyze_arp', 'Paralysis Resistance Penetration', 1, 0);
insert into _STAT_NAMES values('parry', 'Parry', 1, 0);
insert into _STAT_NAMES values('phyattack', 'Attack', 1, 0);
insert into _STAT_NAMES values('physicalcriticaldamagereduce', 'Strike Fortitude', 1, 0);
insert into _STAT_NAMES values('physicalcriticalreducerate', 'Strike Resist', 1, 0);
insert into _STAT_NAMES values('physicaldefend', 'Defense', 1, 0);
insert into _STAT_NAMES values('pmattack', 'PM Attack', 1, 0);
insert into _STAT_NAMES values('pmdefend', 'PM Defend', 1, 0);
insert into _STAT_NAMES values('procreducerate', 'Godstone Resistance', 10, 1);
insert into _STAT_NAMES values('pveattackratio', 'PvE Attack', 10, 1);
insert into _STAT_NAMES values('pvedefendratio', 'PvE Defense', 10, 1);
insert into _STAT_NAMES values('pvpattackratio', 'PvP Attack', 10, 1);
insert into _STAT_NAMES values('pvpattackratio_magical', 'PvP Magical Attack', 10, 1);
insert into _STAT_NAMES values('pvpattackratio_physical', 'PvP Physical Attack', 10, 1);
insert into _STAT_NAMES values('pvpdefendratio', 'PvP Defense', 10, 1);
insert into _STAT_NAMES values('pvpdefendratio_magical', 'PvP Magical Defense', 10, 1);
insert into _STAT_NAMES values('pvpdefendratio_physical', 'PvP Physical Defense', 10, 1);
insert into _STAT_NAMES values('silence_arp', 'Silence Resistance Penetration', 1, 0);
insert into _STAT_NAMES values('speed', 'Speed', 1, 0);
insert into _STAT_NAMES values('spin_arp', 'Spin Resistance Penetration', 1, 0);
insert into _STAT_NAMES values('stagger_arp', 'Stagger Resistance Penetration', 1, 0);
insert into _STAT_NAMES values('str', 'Power', 1, 0);
insert into _STAT_NAMES values('stumble_arp', 'Stumble Resistance Penetration', 1, 0);
insert into _STAT_NAMES values('stun_arp', 'Stun Resistance Penetration', 1, 0);
insert into _STAT_NAMES values('vit', 'Health', 1, 0);
insert into _STAT_NAMES values('wil', 'Will', 1, 0);

commit;

drop table if exists __maxperiod_skill_desc;
create table __maxperiod_skill_desc (id number, skill text, gen_desc text, order_num number);

--============================================================================================================================================--
--============================================================================================================================================--


select 
effect1_remain2 duration,
*
from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) = 'absolutestattopcbuff'
;


select 
effect1_remain2 duration,
*
from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) = 'absolutestattopcdebuff'
;

--============================================================================================================================================--
--============================================================================================================================================--

with desc_alwaysblock as (

select 
id,
skill,
'You block the next '||effect1_reserved9||' attacks. '
gen_desc,
effect_num,
effect1_remain2 duration,
effect1_reserved9  block_count,
effect1_hop_b,
*
from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) = 'alwaysblock'

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from desc_alwaysblock;
;

--============================================================================================================================================--
--============================================================================================================================================--

with desc_alwaysdodge as (

select 
id,
skill,
'You evade the next '||effect1_reserved9||' attacks. '
gen_desc,
effect_num,
effect1_remain2 duration,
effect1_reserved9  dodge_count,
effect1_hop_b,
*
from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) = 'alwaysdodge'

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from desc_alwaysdodge;
;

--============================================================================================================================================--
--============================================================================================================================================--

select 
effect1_remain2 duration,
effect1_reserved13,
*
from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) = 'alwayshit'
;

--============================================================================================================================================--
--============================================================================================================================================--

with desc_alwaysnoresist as (

select 
id,
skill,
'' 
gen_desc,
effect_num,
effect1_remain2 duration,
effect1_reserved8,
effect1_reserved9,
effect1_reserved13,
*
from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) = 'alwaysnoresist'

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from desc_alwaysnoresist;
;

--============================================================================================================================================--
--============================================================================================================================================--

with desc_alwaysparry as (

select 
id,
skill,
'You parry the next '||effect1_reserved9||' attacks. '
gen_desc,
effect_num,
effect1_basiclv,
effect1_remain2 duration,
effect1_reserved9 parry_count,
effect1_hop_b,
effect1_reserved16,
*
from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) = 'alwaysparry'

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from desc_alwaysparry;
;

--============================================================================================================================================--
--============================================================================================================================================--

select 
effect1_basiclv,
effect1_reserved3,
effect1_reserved4,
effect1_reserved5,
effect1_reserved7,
effect1_reserved8,
effect1_reserved9,
*
from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) = 'amr_mastery'
;

--============================================================================================================================================--
--============================================================================================================================================--

with desc_aura as (

select 
skills.id,
skills.skill,
'Chant '
--||coalesce(ref.skill, skills.effect1_reserved1)
||'to '
|| case when lower(skills.effect1_reserved5) = 'party' then 'party members ' else '' end
||'within ' 
||case when skills.effect1_reserved3 = skills.effect1_reserved4 then skills.effect1_reserved3||'m'
               else skills.effect1_reserved3 ||'m horizonally and '|| skills.effect1_reserved4 ||'m vertically'
               end
||'. '              
 gen_desc,
skills.effect1_basiclv,
skills.effect1_reserved1,
skills.effect1_reserved3,
skills.effect1_reserved4,
skills.effect1_reserved5,
skills.effect1_reserved6,
skills.effect1_reserved7,
*
from _SKILLS_WITH_NAME_NORMALIZED skills

left join _SKILLS_WITH_NAME_NORMALIZED ref
on ref.name = skills.effect1_reserved1

where lower(skills.effect1_type) = 'aura'

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from desc_aura;
;


--============================================================================================================================================--
--============================================================================================================================================--

with desc_bind as (

select 
id,
skill,
'Inflicts Bind status.' gen_desc,
effect1_basiclv,
effect1_acc_mod1,
effect1_acc_mod2,
effect1_remain1,
effect1_remain2,
*
from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) = 'bind'

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from desc_bind;
;

--============================================================================================================================================--
--============================================================================================================================================--


with skill_boostskillcastingtime as (

select 
id,
skill,
case when effect1_cond_preeffect_prob2 <> 100 then effect1_cond_preeffect_prob2||'% chance of causing ' else '' end
||'Casting time '
||case when lower(effect1_reserved3) <> 'none' then 'of '||effect1_reserved3||' skills ' else '' end
||case when (effect1_reserved2 + coalesce(effect1_reserved1, 0)) < 0 then
    'lengthened by '||((effect1_reserved2 + coalesce(effect1_reserved1, 0)) * -1)||'%' 
    ||case when effect1_reserved1 < 0 then ' ('||(effect1_reserved1 * -1)||'% / enchant)' else '' end
    else
    'shortened by '||(effect1_reserved2 + coalesce(effect1_reserved1, 0)) ||'%' 
    ||case when effect1_reserved1 < 0 then ' ('||(effect1_reserved1 * -1)||'% / enchant)' else '' end
end    
||'.' gen_desc,
effect_num,

effect1_basiclv,
effect1_reserved2 ,
effect1_reserved3 ,
effect1_reserved5 ,
effect1_reserved6 ,
effect1_reserved11 ,
effect1_reserved13 ,
*
from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) = 'boostskillcastingtime'

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from skill_boostskillcastingtime;

;


--============================================================================================================================================--
--============================================================================================================================================--



with skill_deboosthealamount as (

select 
id,
skill,
case when effect1_reserved2 <> 0 then
    case when effect1_reserved2 > 0 then 'Reduces healing effects by '||effect1_reserved2||'%. '  
         when effect1_reserved2 < 0 then 'Increases healing effects by '||(effect1_reserved2 * -1)||'%. '  
    else ''
    end
    when effect1_reserved_cond2 > 0 then 
    case when effect1_reserved_cond1_prob2 < 1000 then (effect1_reserved_cond1_prob2 / 10)||'% chance of reducing ' else 'Reduces 'end
    ||'healing effects by '||effect1_reserved_cond2||'%. '
else ''
end    
gen_desc,    
effect_num,

effect1_basiclv,
effect1_reserved2 ,

*
from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) = 'deboosthealamount'

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from skill_deboosthealamount;

;


--============================================================================================================================================--
--============================================================================================================================================--

with desc_dispeldebuff as (

select 
id,
skill,
'Remove up to '||effect1_reserved2||' debuffs. '
||case when effect1_reserved16 is not null then 'effect1_reserved16: '||effect1_reserved16||'. ' else '' end
||case when effect1_reserved18 is not null then 'effect1_reserved18: '||effect1_reserved18||'. ' else '' end
 gen_desc,
effect1_basiclv,
effect1_reserved1,
effect1_reserved2,
effect1_reserved16,
effect1_reserved18,
effect1_acc_mod1,
effect1_acc_mod2,
effect1_remain1,
effect1_remain2,
*
from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) = 'dispeldebuff'

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from desc_dispeldebuff;
;

--============================================================================================================================================--
--============================================================================================================================================--

with desc_evade as (

select 
id,
skill,
'Removes '
|| coalesce(ca1.body, effect1_reserved2)
|| case when effect1_reserved3 is not null then ', '||coalesce(ca2.body, effect1_reserved3) else '' end
|| case when effect1_reserved4 is not null then ', '||coalesce(ca3.body, effect1_reserved4) else '' end
|| case when effect1_reserved5 is not null then ', '||coalesce(ca4.body, effect1_reserved5) else '' end
|| case when effect1_reserved6 is not null then ', '||coalesce(ca5.body, effect1_reserved6) else '' end
|| ' status. '
 gen_desc,
effect1_basiclv,
effect1_reserved2,
effect1_reserved3,
effect1_reserved4,
effect1_reserved5,
effect1_reserved6,
effect1_acc_mod1,
effect1_acc_mod2,
effect1_remain1,
effect1_remain2,
*
from _SKILLS_WITH_NAME_NORMALIZED 

left join _CONDITIONAL_ATTACK ca1
on ca1.name = lower(effect1_reserved2)
left join _CONDITIONAL_ATTACK ca2
on ca2.name = lower(effect1_reserved3)
left join _CONDITIONAL_ATTACK ca3
on ca3.name = lower(effect1_reserved4)
left join _CONDITIONAL_ATTACK ca4
on ca4.name = lower(effect1_reserved5)
left join _CONDITIONAL_ATTACK ca5
on ca5.name = lower(effect1_reserved6)

where lower(effect1_type) = 'evade'

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from desc_evade;
;

--============================================================================================================================================--
--============================================================================================================================================--

with desc_fpheal as (

select 
id,
skill,
'Recovers '||effect1_reserved9||' seconds of flight time'
||case when (effect1_remain2 / effect1_checktime) > 1 then ' every '|| (effect1_checktime / 1000.0)||' seconds ('|| (effect1_remain2 / effect1_checktime) ||' times total)'
        when effect1_checktime > 0 then ' after '|| (effect1_checktime / 1000.0)||' seconds'
        else ''
        end
||'. '        
 gen_desc,
effect1_basiclv,
effect1_reserved2 heal_amt,
effect1_reserved1 heal_amt_per_enchant,
effect1_acc_mod1,
effect1_acc_mod2,
effect1_remain1,
effect1_remain2,
*
from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) = 'fpheal'

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from desc_fpheal;
;

--============================================================================================================================================--
--============================================================================================================================================--

with desc_heal as (

select 
id,
skill,
'Heals for '||(effect1_reserved9 + coalesce(effect1_reserved1, 8))||' HP'
||case when effect1_reserved8 > 0 then ' (+'||effect1_reserved8||' / enchant)' else '' end
||case when (effect1_remain2 / effect1_checktime) > 1 then ' every '|| (effect1_checktime / 1000.0)||' seconds ('|| (effect1_remain2 / effect1_checktime) ||' times total)'
        when effect1_checktime > 0 then ' after '|| (effect1_checktime / 1000.0)||' seconds'
        else ''
        end
||'. '        
 gen_desc,
effect1_basiclv,
effect1_reserved2 heal_amt,
effect1_reserved1 heal_amt_per_enchant,
effect1_acc_mod1,
effect1_acc_mod2,
effect1_remain1,
effect1_remain2,
*
from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) = 'heal'

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from desc_heal;
;

--============================================================================================================================================--
--============================================================================================================================================--

with desc_heal_instant as (

select 
id,
skill,
'Heals for '||(effect1_reserved2 + coalesce(effect1_reserved1, 0))||' HP'
||case when effect1_reserved1 > 0 then ' (+'||effect1_reserved1||' / enchant)' else '' end
||'. '
 gen_desc,
effect1_basiclv,
effect1_reserved2 heal_amt,
effect1_reserved1 heal_amt_per_enchant,
effect1_acc_mod1,
effect1_acc_mod2,
effect1_remain1,
effect1_remain2,
*
from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) = 'heal_instant'

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from desc_heal_instant;
;

--============================================================================================================================================--
--============================================================================================================================================--

with desc_magical_attack as (

SELECT
--body, skill_tag, type, sub_type, skill_category, ultra_skill, ultra_transfer, chain_category_level, skill_group_name, skillicon_name, delay_id, activation_attribute, cost_dp, cost_charge_weapon, cost_charge_armor, polish_charge_weapon, dispel_category, required_dispel_level, target_slot, target_stop, hostile_type, delay_type, delay_time, first_target, first_target_valid_distance, target_range, target_species_restriction, target_relation_restriction, cancel_rate, obstacle, add_wpn_range, move_casting, auto_attack, motion_name, target_marker_radius, show_weapon, fire_fx, fire_fx_bone, effect1_type, effect1_noresist, effect1_remain1, effect1_remain2, effect1_effectid, effect1_basiclv, effect1_target_type, effect1_reserved7, effect1_reserved8, effect1_reserved9, effect1_reserved16, effect1_hop_type, effect1_hop_b, effect2_type, effect2_noresist, effect2_checkforchain, effect2_remain1, effect2_remain2, effect2_effectid, effect2_basiclv, effect2_target_type, effect2_cond_preeffect, effect2_cond_preeffect_prob1, effect2_cond_preeffect_prob2, effect2_reserved1, effect2_reserved2, effect2_reserved6, effect2_reserved13, effect2_reserved16, effect3_type, effect3_noresist, effect3_checkforchain, effect3_remain1, effect3_remain2, effect3_effectid, effect3_basiclv, effect3_target_type, effect3_cond_preeffect, effect3_cond_preeffect_prob1, effect3_cond_preeffect_prob2, effect3_reserved1, effect3_reserved2, effect3_reserved6, effect3_reserved13, effect3_reserved16, effect4_type, effect4_noresist, effect4_checkforchain, effect4_remain1, effect4_remain2, effect4_effectid, effect4_basiclv, effect4_target_type, effect4_cond_preeffect, effect4_cond_preeffect_prob1, effect4_cond_preeffect_prob2, effect4_reserved1, effect4_reserved2, effect4_reserved6, effect4_reserved13, effect4_reserved16, effect1_hop_a, pvp_remain_time_ratio, cost_parameter, cost_end, revision_distance, casting_delay, peace_skill, cast_fx, cast_fx_bone, cast_voice, hit_fx, hit_fx_bone, hit_fx_attacker_oriented, status_fx, status_fx_bone, status_fx_slot, effect1_reserved10, effect1_reserved11, effect1_acc_mod2, effect1_critical_prob_mod2, effect3_reserved7, effect3_reserved8, effect3_reserved9, effect3_reserved10, effect3_reserved11, effect3_critical_prob_mod2, effect3_hop_type, effect3_hop_b, chain_category_name, chain_skill_prob2, effect1_randomtime, effect1_reserved1, effect1_reserved2, effect1_reserved12, effect2_randomtime, effect2_reserved7, effect2_reserved8, effect2_reserved9, effect2_reserved10, effect2_reserved11, effect2_critical_prob_mod2, effect2_hop_type, effect2_hop_b, effect3_randomtime, cost_end_lv, instant_skill, motion_play_speed, effect1_reserved3, effect1_reserved4, effect1_reserved5, effect3_hop_a, effect4_hop_a, effect4_hop_b, effect1_reserved6, interval_hit_fx, interval_hit_fx_bone, effect1_reserved13, effect4_hop_type, spend_time_on_logout, target_maxcount, target_range_area_type, target_range_opt1, target_range_opt3, effect1_reserved14, effect1_reserved15, effect1_reserved17, effect1_reserved18, effect2_reserved3, effect2_reserved4, effect2_reserved14, effect3_reserved3, effect3_reserved5, no_remove_at_die, self_flying_restriction, component, component_count, component_expendable, effect2_checktime, effect1_checktime, no_save_on_logout, effect1_reserved_cond1, effect1_reserved_cond1_prob1, effect1_reserved_cond1_prob2, required_sword, required_mace, required_dagger, required_orb, required_book, required_2hsword, required_polearm, required_staff, required_bow, ammo_bone, ammo_fx, ammo_speed, target_valid_status1, target_valid_status2, target_valid_status3, target_valid_status4, target_valid_status5, nouse_combat_state, effect3_hidemsg, target_slot_level, system_fire_fx, system_fire_fx_bone, allow_use_form_category, no_jump_cancel, trail_tex, hit_camera_shake, effect1_critical_add_dmg_mod2, splash, hit_fx_ex1, effect2_acc_mod2, effect2_hop_a, target_flying_restriction, pvp_damage_ratio, effect3_reserved4, penalty_type_succ, effect2_reserved_cond1, effect2_reserved_cond1_prob1, effect2_reserved_cond1_prob2, effect2_reserved15, effect2_reserved17, effect2_reserved18, effect3_reserved14, effect3_reserved15, effect3_reserved17, effect3_reserved18, effect4_reserved3, effect4_reserved4, effect4_reserved7, effect4_reserved14, effect4_reserved15, effect4_reserved17, effect4_reserved18, effect4_hidemsg, effect4_reserved10, effect4_reserved11, effect4_reserved12, effect4_critical_prob_mod2, ammo_fx_type, effect2_reserved5, prechain_category_name, chain_time, effect1_hidemsg, self_chain_count, delay_time_lv, motion_mode, pre_fx, pre_fx_delay, pre_fx_bone, counter_skill, prechain_count, effect2_reserved12, hp_fx, penalty_skill_succ, effect3_acc_mod2, charge_set_name, use_arrow_count, use_arrow, effect1_acc_mod1, target_range_opt2, target_range_opt4, effect3_reserved_cond1, effect3_reserved_cond1_prob1, effect3_reserved_cond1_prob2, chain_skill_prob1, effect2_hidemsg, hit_fx_ex2, effect1_critical_prob_mod1, cost_time, effect1_reserved19, effect1_reserved20, effect1_reserved21, effect1_reserved22, required_leftweapon, required_gun, required_cannon, cost_toggle, penalty_skill_succ_msg, required_ride_robot, effect2_cond_race, effect2_cond_race_prob1, effect2_cond_race_prob2, toggle_timer, boost_type, effect1_reserved_cond2_prob2, required_keyblade, effect4_reserved19, effect4_reserved20, effect4_reserved21, effect4_reserved22, max_maintain_count, effect2_reserved19, change_stance, effect2_reserved20, effect2_reserved21, effect2_reserved22, effect3_reserved12, effect2_cond_status, effect2_cond_status_prob1, effect2_cond_status_prob2, effect2_cond_attack_dir, effect2_cond_attack_dir_prob1, effect2_cond_attack_dir_prob2, hit_fx_ex3, hit_fx_ex4, hit_fx_ex5, effect3_checktime, self_hide_restriction, effect2_acc_mod1, effect4_reserved8, effect4_reserved_cond1, effect4_reserved_cond1_prob1, effect4_reserved_cond1_prob2, cost_checktime_parameter, cost_checktime, cost_start_lv, cost_start, required_harp, aura_fx, aura_fx_bone, aura_fx_slot, status_sfx1, effect3_reserved_cond2, effect3_reserved_cond2_prob1, effect3_reserved_cond2_prob2, effect1_reserved_cond2, remaining_fx, sfx3, status_shader, conflict_id, effect4_checktime, effect4_reserved9, effect1_reserved_cond2_prob1, effect3_critical_prob_mod1, charging_delay, effect1_cond_preeffect_prob1, effect1_cond_preeffect_prob2, effect3_cond_race_prob1, effect3_cond_race_prob2, nonchained_delay_time, prechain_skillname, broadcast_use_message, effect4_reserved5, castcancel_fx, castcancel_fx_bone, cast_fxc, fire_fxc, hit_fxc, stc_desc, ammo_fxc, cast_camera_work, hit_camera_work, hit_target_camera_shake, effect3_cond_attack_dir, effect3_cond_attack_dir_prob1, effect3_cond_attack_dir_prob2, effect3_cond_status, effect3_cond_status_prob1, effect3_cond_status_prob2, effect4_cond_status, effect4_cond_status_prob1, effect4_cond_status_prob2, need_fx, penalty_no_casting_time_succ, effect2_critical_prob_mod1, max_skill_point 

id,
skill,
 case when lower(effect1_type) = 'carvesignet' then 'Carve signet: +'||effect1_reserved10||' levels (maximum '||effect1_reserved14||'). ' else '' end
||'Deals '
|| (coalesce(effect1_reserved2, 0) + coalesce(effect1_reserved1, 0)) 
|| ' magical'
|| ' '||effect1_reserved10
|| ' damage'
|| case when effect1_reserved1 > 0 then ' (+'||effect1_reserved1||' / enchant)' else '' end
|| case when lower(effect1_type) = 'delayedspellatk_instant' then ' after '||(effect1_reserved9 / 1000)||' seconds delay' else '' end
|| '. '
|| case when (lower(effect1_type) in ('dispelallcounteratk', 'carvesignet') and effect1_reserved22 is not null and (coalesce(effect1_reserved21, 0) + coalesce(effect1_reserved20, 0)) > 0)
        or (lower(effect1_type) in ('spellatkdrain_instant') and effect1_reserved7 is not null and (coalesce(effect1_reserved4, 0) + coalesce(effect1_reserved3, 0)) > 0)
        or (lower(effect1_type) not in ('dispelallcounteratk', 'carvesignet') and effect1_reserved16 is not null and (coalesce(effect1_reserved9, 0) + coalesce(effect1_reserved8, 0)) > 0) then 
    'Additional '
    --|| (coalesce(effect1_reserved10, 0) + coalesce(effect1_reserved9, 0))
    ||case when lower(effect1_type) in ('dispelallcounteratk', 'carvesignet') then (coalesce(effect1_reserved21, 0) + coalesce(effect1_reserved20, 0) )
           when lower(effect1_type) in ('spellatkdrain_instant') then (coalesce(effect1_reserved4, 0) + coalesce(effect1_reserved3, 0) )
        else (coalesce(effect1_reserved9, 0) + coalesce(effect1_reserved8, 0) )
        end
    || ' damage'
    
    || case when lower(effect1_type) in ('dispelallcounteratk', 'carvesignet') and coalesce(effect1_reserved20, 0) > 0 then ' (+'||effect1_reserved20 ||' / enchant)' 
            when lower(effect1_type) in ('spellatkdrain_instant') and coalesce(effect1_reserved3, 0) > 0 then ' (+'||effect1_reserved3 ||' / enchant)'             
            when coalesce(effect1_reserved8, 0) > 0 then ' (+'||effect1_reserved8 ||' / enchant)' 
        else '' end
    || ' against '
    || case when lower(effect1_type) in ('dispelallcounteratk', 'carvesignet') then coalesce(ca2.body, effect1_reserved22) 
            when lower(effect1_type) in ('spellatkdrain_instant') then coalesce(ca3.body, effect1_reserved7) 
            when coalesce(effect1_reserved8, 0) > 0 then coalesce(ca1.body, effect1_reserved16) 
            else ''
            end
    || ' targets. '
    else '' 
    end

|| case when lower(effect1_type) in ('spellatk_instant', 'procatk_instant') and effect1_reserved14 is not null then 
        case when cast(coalesce(effect1_reserved18, 100) as number) < 100 then effect1_reserved18||'% chance of inflicting ' else 'Inflicts ' end
        ||coalesce(effect.body, effect1_reserved14)
        ||' status'-- (effect1_reserved15: '||effect1_reserved15||')'
        ||'. '
    else ''
    end

    
|| case when effect1_acc_mod2 <> 0 then 
        case when effect1_acc_mod2 >= 0 then '+' else '' end||effect1_acc_mod2||' magical accuracy. '
   else '' end

|| case when effect1_critical_prob_mod2 <> 100 then 
        'Crits at '||(effect1_critical_prob_mod2)||'% of normal probability. '
   else '' end   

|| case when effect1_reserved8 = 1 then 'Random damage: 0.5x (33%), 1x (33%), 1.5x (33%). '
    when effect1_reserved8 = 3 then 'Random damage: 0.9x (25%), 1x (25%), 1.1x (50%). '
    when effect1_reserved8 = 6 then 'Random damage: 1x (66%), 2x (33%). '
    else '' end 

|| case when lower(effect1_type) ='spellatkdrain_instant' and effect1_reserved15 <> 0 then 'Gain HP equal to '||effect1_reserved15||'% of inflicted damage. ' else '' end
|| case when lower(effect1_type) ='spellatkdrain_instant' and effect1_reserved17 <> 0 then 'Gain MP equal to '||effect1_reserved17||'% of inflicted damage. ' else '' end

|| case when effect1_noresist = 1 then 'Not resistable. ' else '' end

gen_desc,
effect_num,

coalesce(effect1_reserved1, 0) + effect1_reserved2 damage,
effect1_reserved1 dmg_per_upgrade_lvl,
--effect1_reserved2,

effect1_reserved10 element,
--effect1_acc_mod1,
effect1_acc_mod2 acc_mod,
effect1_critical_prob_mod2 critical_prob_mod,
coalesce(pvp_damage_ratio, 100)||'%' pvp_damage_ratio,
--effect1_critical_add_dmg_mod2,
--effect1_critical_prob_mod1,
--effect1_critical_prob_mod2,
coalesce(counter_skill,'')||coalesce(target_valid_status1,'')||coalesce(target_valid_status2,'')||coalesce(target_valid_status3,'')||coalesce(target_valid_status4,'') usage_condition,

case when effect1_reserved16 = 0 then null
     when effect1_reserved16 is not null then effect1_reserved9 + coalesce(effect1_reserved8, 0) 
     when effect1_reserved22 is not null then effect1_reserved21 + coalesce(effect1_reserved20, 0) 
end conditional_damage,
case when effect1_reserved16 = 0 then null
     when effect1_reserved16 is not null then effect1_reserved8 
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


case when effect1_noresist = 1 then 'N' else 'Y' end resistable

,*

--FROM skill_base_clients skills
FROM _SKILLS_WITH_NAME_NORMALIZED skills

left join _CONDITIONAL_ATTACK ca1
on lower(skills.effect1_reserved16) = ca1.name
left join _CONDITIONAL_ATTACK ca2
on lower(skills.effect1_reserved22) = ca2.name
left join _CONDITIONAL_ATTACK ca3
on lower(skills.effect1_reserved7) = ca3.name
left join _CONDITIONAL_ATTACK effect
on lower(skills.effect1_reserved14) = effect.name

where lower(effect1_type) in (
--'carvesignet',
'delayedspellatk_instant',
'procatk_instant',
'spellatk_instant',
'spellatkdrain_instant'
--'dispelallcounteratk',
--'dispelbuffcounteratk'--,
--'delayedfpatk_Instant'
) --and lower(effect1_type) = 'procatk_instant'
--and id in (9088, 8978, 9098, 8972,9144)
)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from desc_magical_attack;
;



select distinct effect1_type, effect1_reserved16, effect1_reserved22
from _SKILLS_WITH_NAME_NORMALIZED
where effect1_type in (
'DelayedSpellATK_Instant',
--'ProcATK_Instant',
'SpellATK_Instant',
'SpellATKDrain_Instant',
'DispelallCounterATK',
'DispelBuffCounterATK',
'DelayedFPATK_Instant'
)
;


--============================================================================================================================================--
--============================================================================================================================================--

with desc_mpheal as (

select 
id,
skill,
'Recovers '||(effect1_reserved9 + coalesce(effect1_reserved1, 8))||' MP'
||case when effect1_reserved1 > 8 then ' (+'||effect1_reserved8||' / enchant)' else '' end
||case when (effect1_remain2 / effect1_checktime) > 1 then ' every '|| (effect1_checktime / 1000.0)||' seconds ('|| (effect1_remain2 / effect1_checktime) ||' times total)'
        when effect1_checktime > 0 then ' after '|| (effect1_checktime / 1000.0)||' seconds'
        else ''
        end
||'. '        
 gen_desc,
effect1_basiclv,
effect1_reserved2 heal_amt,
effect1_reserved1 heal_amt_per_enchant,
effect1_acc_mod1,
effect1_acc_mod2,
effect1_remain1,
effect1_remain2,
*
from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) = 'mpheal'

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from desc_mpheal;
;

--============================================================================================================================================--
--============================================================================================================================================--

with desc_mpheal_instant as (

select 
id,
skill,
'Recovers '||(effect1_reserved2 + coalesce(effect1_reserved1, 0))||' MP'
||case when effect1_reserved1 > 0 then ' (+'||effect1_reserved1||' / enchant)' else '' end
||'. '
 gen_desc,
effect1_basiclv,
effect1_reserved2 heal_amt,
effect1_reserved1 heal_amt_per_enchant,
effect1_acc_mod1,
effect1_acc_mod2,
effect1_remain1,
effect1_remain2,
*
from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) = 'mpheal_instant'

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from desc_mpheal_instant;
;

--============================================================================================================================================--
--============================================================================================================================================--

with desc_noreducespellatk as (

select
id,
skill,
'Deals '||effect1_reserved2||' fixed damage. '
||case when effect1_reserved3 <> 0 then 'effect1_reserved3: '||effect1_reserved3||'. ' else '' end
||case when coalesce(effect1_critical_prob_mod2, 100) <> 0 then coalesce(effect1_critical_prob_mod2, 100)||'% chance of critical hit. ' else '' end
||case when effect1_critical_add_dmg_mod2 <> 0 then ' Critical hits deals +'||effect1_critical_add_dmg_mod2||'% damage. ' else '' end

gen_desc,
effect1_critical_add_dmg_mod2,
effect1_critical_prob_mod1,
effect1_critical_prob_mod2,
effect1_reserved1,
effect1_reserved2,
effect1_reserved3,
effect1_reserved6,
effect1_reserved10,
effect1_reserved11,
effect1_reserved15,
effect1_reserved16,
effect1_reserved17,
effect1_reserved18,
*

from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) = 'noreducespellatk_instant'


)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from desc_noreducespellatk;
;

--============================================================================================================================================--
--============================================================================================================================================--

with desc_onetimeboostskillattack as (

select
id,
skill,
'Your next '
||effect1_reserved7||' '
||case when lower(effect1_reserved5) == 'physical' then 'physical attacks skills '
       when lower(effect1_reserved5) == 'magical' then 'damage-inflicting magical spells '
       else 'damage-inflicting skills '
       end
||'deal '||effect1_reserved2||'% more damage. '
gen_desc,

*

from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) = 'onetimeboostskillattack'


)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from desc_onetimeboostskillattack;
;

--============================================================================================================================================--
--============================================================================================================================================--


with desc_provoker as (

select 
skills.id,
skills.skill,
(skills.effect1_reserved_cond1_prob2 / 10)||'% chance of applying "'
||coalesce(proc.skill, skills.effect1_reserved17)
||'" whenever '
||case when lower(skills.effect1_reserved14) = 'opponent' and lower(skills.effect1_reserved_cond1) = 'nmlatk' then 'you attack a target. '
        when lower(skills.effect1_reserved14) = 'opponent' and lower(skills.effect1_reserved_cond1) = 'everyhit' then 'you damage a target. '
        when lower(skills.effect1_reserved14) = 'me' and lower(skills.effect1_reserved_cond1) = 'nmlatk' then 'you are attacked. '
        when lower(skills.effect1_reserved14) = 'me' and lower(skills.effect1_reserved_cond1) = 'everyhit' then 'you take damage. '
else '' end        
gen_desc,
skills.effect1_basiclv,
skills.effect1_reserved11,
skills.effect1_reserved12,
skills.effect1_reserved14 target,
skills.effect1_reserved15,
skills.effect1_reserved16,
skills.effect1_reserved17 proc_effect,
skills.effect1_reserved_cond1,
skills.effect1_reserved_cond1_prob1,
skills.effect1_reserved_cond1_prob2,
skills.effect1_remain1,
skills.effect1_remain2,
skills.* 
from _SKILLS_WITH_NAME_NORMALIZED skills

left join _SKILLS_WITH_NAME_NORMALIZED proc
on skills.effect1_reserved17 = proc.name

where lower(skills.effect1_type) = 'provoker'
--and skills.id in (3065, 1656, 3326, 3481, 1636)

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from desc_provoker
;

select * 
from _SKILLS_WITH_NAME_NORMALIZED
where name in (
'CH_N_ImbueEarth_G10_Proc',
'CH_N_ImbuePower_G6_Proc',
'KN_N_TurnAggressiveEffect_G1',
'AS_N_ExplosionPoison_G6_Proc',
'AS_N_StuningIntention_G1_Proc',
'AS_N_ProcPoisoningIntentionEffect'
)
;

--============================================================================================================================================--
--============================================================================================================================================--

with desc_gen_shield as (

select 
id,
skill,
case when effect1_reserved6 = 1 
    then 'Reduces incoming '
    ||case when effect1_reserved_cond1 = 'PhHit' then 'physical ' else '' end
    ||case when effect1_reserved_cond1 = 'MaHit' then 'magical ' else '' end
    ||'damage by '||effect1_reserved2||'%'
    || '. Limit '||(effect1_reserved8 + coalesce(effect1_reserved7,0))
    || case when effect1_reserved7 > 0 then ' ('||effect1_reserved7||' per enchant)' else '' end
    ||' total damage absorbed '
    
    else case when effect1_reserved2 = effect1_reserved8 then
        'Absorbs '||effect1_reserved8
        ||case when effect1_reserved_cond1 = 'PhHit' then ' physical' else '' end
        ||case when effect1_reserved_cond1 = 'MaHit' then ' magical' else '' end        
        ||' damage ' 
        else 'Absorbs '||effect1_reserved2||' damage from each hit received. '
        || 'Limit '||(effect1_reserved8 + coalesce(effect1_reserved7,0))
        || case when effect1_reserved7 > 0 then ' ('||effect1_reserved7||' per enchant)' else '' end
        ||' total damage absorbed '
        end
end
--||'('||(effect1_remain2/1000)||' seconds'
--|| case when effect1_remain1 > 0 then ' ('||(effect1_remain1/1000)||' per enchant)' else '' end
--||'). ' 
gen_desc,
effect_num,
effect1_reserved2,
effect1_reserved6,
effect1_reserved7,
effect1_reserved8,
effect1_basiclv,
effect1_reserved_cond1,
effect1_reserved_cond1_prob1,
effect1_reserved_cond1_prob2,
effect1_remain1,
effect1_remain2,
*
from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) = 'shield'

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from desc_gen_shield;
;

--============================================================================================================================================--
--============================================================================================================================================--

with physical_attack_skills as (

SELECT 
--body, skill_tag, type, sub_type, skill_category, ultra_skill, ultra_transfer, chain_category_level, skill_group_name, skillicon_name, delay_id, activation_attribute, cost_dp, cost_charge_weapon, cost_charge_armor, polish_charge_weapon, dispel_category, required_dispel_level, target_slot, target_stop, hostile_type, delay_type, delay_time, first_target, first_target_valid_distance, target_range, target_species_restriction, target_relation_restriction, cancel_rate, obstacle, add_wpn_range, move_casting, auto_attack, motion_name, target_marker_radius, show_weapon, fire_fx, fire_fx_bone, effect1_type, effect1_noresist, effect1_remain1, effect1_remain2, effect1_effectid, effect1_basiclv, effect1_target_type, effect1_reserved7, effect1_reserved8, effect1_reserved9, effect1_reserved16, effect1_hop_type, effect1_hop_b, effect2_type, effect2_noresist, effect2_checkforchain, effect2_remain1, effect2_remain2, effect2_effectid, effect2_basiclv, effect2_target_type, effect2_cond_preeffect, effect2_cond_preeffect_prob1, effect2_cond_preeffect_prob2, effect2_reserved1, effect2_reserved2, effect2_reserved6, effect2_reserved13, effect2_reserved16, effect3_type, effect3_noresist, effect3_checkforchain, effect3_remain1, effect3_remain2, effect3_effectid, effect3_basiclv, effect3_target_type, effect3_cond_preeffect, effect3_cond_preeffect_prob1, effect3_cond_preeffect_prob2, effect3_reserved1, effect3_reserved2, effect3_reserved6, effect3_reserved13, effect3_reserved16, effect4_type, effect4_noresist, effect4_checkforchain, effect4_remain1, effect4_remain2, effect4_effectid, effect4_basiclv, effect4_target_type, effect4_cond_preeffect, effect4_cond_preeffect_prob1, effect4_cond_preeffect_prob2, effect4_reserved1, effect4_reserved2, effect4_reserved6, effect4_reserved13, effect4_reserved16, effect1_hop_a, pvp_remain_time_ratio, cost_parameter, cost_end, revision_distance, casting_delay, peace_skill, cast_fx, cast_fx_bone, cast_voice, hit_fx, hit_fx_bone, hit_fx_attacker_oriented, status_fx, status_fx_bone, status_fx_slot, effect1_reserved10, effect1_reserved11, effect1_acc_mod2, effect1_critical_prob_mod2, effect3_reserved7, effect3_reserved8, effect3_reserved9, effect3_reserved10, effect3_reserved11, effect3_critical_prob_mod2, effect3_hop_type, effect3_hop_b, chain_category_name, chain_skill_prob2, effect1_randomtime, effect1_reserved1, effect1_reserved2, effect1_reserved12, effect2_randomtime, effect2_reserved7, effect2_reserved8, effect2_reserved9, effect2_reserved10, effect2_reserved11, effect2_critical_prob_mod2, effect2_hop_type, effect2_hop_b, effect3_randomtime, cost_end_lv, instant_skill, motion_play_speed, effect1_reserved3, effect1_reserved4, effect1_reserved5, effect3_hop_a, effect4_hop_a, effect4_hop_b, effect1_reserved6, interval_hit_fx, interval_hit_fx_bone, effect1_reserved13, effect4_hop_type, spend_time_on_logout, target_maxcount, target_range_area_type, target_range_opt1, target_range_opt3, effect1_reserved14, effect1_reserved15, effect1_reserved17, effect1_reserved18, effect2_reserved3, effect2_reserved4, effect2_reserved14, effect3_reserved3, effect3_reserved5, no_remove_at_die, self_flying_restriction, component, component_count, component_expendable, effect2_checktime, effect1_checktime, no_save_on_logout, effect1_reserved_cond1, effect1_reserved_cond1_prob1, effect1_reserved_cond1_prob2, required_sword, required_mace, required_dagger, required_orb, required_book, required_2hsword, required_polearm, required_staff, required_bow, ammo_bone, ammo_fx, ammo_speed, target_valid_status1, target_valid_status2, target_valid_status3, target_valid_status4, target_valid_status5, nouse_combat_state, effect3_hidemsg, target_slot_level, system_fire_fx, system_fire_fx_bone, allow_use_form_category, no_jump_cancel, trail_tex, hit_camera_shake, effect1_critical_add_dmg_mod2, splash, hit_fx_ex1, effect2_acc_mod2, effect2_hop_a, target_flying_restriction, pvp_damage_ratio, effect3_reserved4, penalty_type_succ, effect2_reserved_cond1, effect2_reserved_cond1_prob1, effect2_reserved_cond1_prob2, effect2_reserved15, effect2_reserved17, effect2_reserved18, effect3_reserved14, effect3_reserved15, effect3_reserved17, effect3_reserved18, effect4_reserved3, effect4_reserved4, effect4_reserved7, effect4_reserved14, effect4_reserved15, effect4_reserved17, effect4_reserved18, effect4_hidemsg, effect4_reserved10, effect4_reserved11, effect4_reserved12, effect4_critical_prob_mod2, ammo_fx_type, effect2_reserved5, prechain_category_name, chain_time, effect1_hidemsg, self_chain_count, delay_time_lv, motion_mode, pre_fx, pre_fx_delay, pre_fx_bone, counter_skill, prechain_count, effect2_reserved12, hp_fx, penalty_skill_succ, effect3_acc_mod2, charge_set_name, use_arrow_count, use_arrow, effect1_acc_mod1, target_range_opt2, target_range_opt4, effect3_reserved_cond1, effect3_reserved_cond1_prob1, effect3_reserved_cond1_prob2, chain_skill_prob1, effect2_hidemsg, hit_fx_ex2, effect1_critical_prob_mod1, cost_time, effect1_reserved19, effect1_reserved20, effect1_reserved21, effect1_reserved22, required_leftweapon, required_gun, required_cannon, cost_toggle, penalty_skill_succ_msg, required_ride_robot, effect2_cond_race, effect2_cond_race_prob1, effect2_cond_race_prob2, toggle_timer, boost_type, effect1_reserved_cond2_prob2, required_keyblade, effect4_reserved19, effect4_reserved20, effect4_reserved21, effect4_reserved22, max_maintain_count, effect2_reserved19, change_stance, effect2_reserved20, effect2_reserved21, effect2_reserved22, effect3_reserved12, effect2_cond_status, effect2_cond_status_prob1, effect2_cond_status_prob2, effect2_cond_attack_dir, effect2_cond_attack_dir_prob1, effect2_cond_attack_dir_prob2, hit_fx_ex3, hit_fx_ex4, hit_fx_ex5, effect3_checktime, self_hide_restriction, effect2_acc_mod1, effect4_reserved8, effect4_reserved_cond1, effect4_reserved_cond1_prob1, effect4_reserved_cond1_prob2, cost_checktime_parameter, cost_checktime, cost_start_lv, cost_start, required_harp, aura_fx, aura_fx_bone, aura_fx_slot, status_sfx1, effect3_reserved_cond2, effect3_reserved_cond2_prob1, effect3_reserved_cond2_prob2, effect1_reserved_cond2, remaining_fx, sfx3, status_shader, conflict_id, effect4_checktime, effect4_reserved9, effect1_reserved_cond2_prob1, effect3_critical_prob_mod1, charging_delay, effect1_cond_preeffect_prob1, effect1_cond_preeffect_prob2, effect3_cond_race_prob1, effect3_cond_race_prob2, nonchained_delay_time, prechain_skillname, broadcast_use_message, effect4_reserved5, castcancel_fx, castcancel_fx_bone, cast_fxc, fire_fxc, hit_fxc, stc_desc, ammo_fxc, cast_camera_work, hit_camera_work, hit_target_camera_shake, effect3_cond_attack_dir, effect3_cond_attack_dir_prob1, effect3_cond_attack_dir_prob2, effect3_cond_status, effect3_cond_status_prob1, effect3_cond_status_prob2, effect4_cond_status, effect4_cond_status_prob1, effect4_cond_status_prob2, need_fx, penalty_no_casting_time_succ, effect2_critical_prob_mod1, max_skill_point 
id,
skill,
/*case when counter_skill <> '' then 'Only usable after '||counter_skill||'. ' else '' end
|| case when target_valid_status1 is not null or target_valid_status2 is not null or target_valid_status3 is not null or target_valid_status4 is not null then
    'Only usable against targets in '
    || target_valid_status1
    || case when target_valid_status2 is not null then ' or '||target_valid_status2 else '' end
    || case when target_valid_status3 is not null then ' or '||target_valid_status3 else '' end
    || case when target_valid_status4 is not null then ' or '||target_valid_status4 else '' end
    || '. '
    else '' end
||*/
case when lower(effect1_type) = 'dashatk' then 'Flash step to target. ' else '' end
||case when lower(effect1_type) = 'movebehindatk' then 'Flash step to the back of target. ' else '' end
|| case when lower(effect1_type) = 'carvesignet' then 'Carve signet: +'||effect1_reserved10||' levels (maximum '||effect1_reserved14||'). ' else '' end
||'Deals +'
|| (coalesce(effect1_reserved4, 0) + coalesce(effect1_reserved3, 0)) || ' damage'
|| case when effect1_reserved3 > 0 then ' (+'||effect1_reserved3||' / enchant)' else '' end
|| '. '
|| case when (lower(effect1_type) in ('dashatk', 'skillatkdrain_instant', 'carvesignet') and effect1_reserved22 is not null )
        or (lower(effect1_type) not in ('dashatk', 'skillatkdrain_instant', 'carvesignet') and effect1_reserved16 <> 0 and effect1_reserved10 > 0) then 
    'Deals additional '
    --|| (coalesce(effect1_reserved10, 0) + coalesce(effect1_reserved9, 0))
    ||case when lower(effect1_type) in ('dashatk', 'skillatkdrain_instant', 'carvesignet') 
        then (coalesce(effect1_reserved21, 0) + coalesce(effect1_reserved20, 0) )
        else (coalesce(effect1_reserved10, 0) + coalesce(effect1_reserved9, 0) )
        end
    || ' damage'
    
    || case when lower(effect1_type) in ('dashatk', 'skillatkdrain_instant', 'carvesignet') and cast(coalesce(effect1_reserved20, 0) as number) > 0 then 
        ' (+'||effect1_reserved20 ||' / enchant)' 
        else '' end
    || case when cast(coalesce(effect1_reserved9, 0) as number) > 0 then 
        ' (+'||effect1_reserved9 ||' / enchant)' 
        else '' end
    || ' against '
    || case when lower(effect1_type) in ('dashatk', 'skillatkdrain_instant', 'carvesignet') then coalesce(ca2.body, effect1_reserved22) else coalesce(ca1.body, effect1_reserved16) end
    || ' targets. '
    else '' 
    end

--|| case when coalesce(lower(effect1_type), '') not in ('carvesignet') and coalesce(effect1_reserved14, 0) <> 0 then 'Target is '||coalesce(caa.body, effect1_reserved14)||'. ' else '' end
|| case when coalesce(lower(effect1_type), '') not in ('carvesignet', 'skillatkdrain_instant') and coalesce(effect1_reserved14, 0) <> 0  and effect1_reserved14 <> '0' then
        case when coalesce(cast(effect1_reserved18 as number), 100) <> 100 then effect1_reserved18||'% chance of inflicting '
            else 'Inflicts '
        end||effect1_reserved14||' status. '
    else '' end     
    
|| case when effect1_acc_mod2 <> 100 then 
        case when effect1_acc_mod2 >= 0 then '+' else '' end||effect1_acc_mod2||' accuracy. '
   else '' end

|| case when effect1_critical_prob_mod2  = 0 then 'Cannot critical hit. '
        when effect1_critical_prob_mod2 <> 100 then 
        'Your Crit Strike counted at '||(effect1_critical_prob_mod2)||'% of its value. '
   else '' end   

|| case when effect1_reserved8 = 1 then 'Random damage: 0.5x (33%), 1x (33%), 1.5x (33%). '
    when effect1_reserved8 = 3 then 'Random damage: 0.9x (25%), 1x (25%), 1.1x (50%). '
    when effect1_reserved8 = 6 then 'Random damage: 1x (66%), 2x (33%). '
    else '' end 

|| case when lower(effect1_type) ='skillatkdrain_instant' and effect1_reserved15 <> 0 then 'Gain HP equal to '||effect1_reserved15||'% of inflicted damage. ' else '' end
|| case when lower(effect1_type) ='skillatkdrain_instant' and effect1_reserved17 <> 0 then 'Gain MP equal to '||effect1_reserved17||'% of inflicted damage. ' else '' end

|| case when lower(effect1_type) ='backdashatk' then 'Flash step '||effect1_reserved12||'m away from target. ' else '' end

|| case when effect1_reserved5 <> 0 then 'effect1_reserved5: '||effect1_reserved5||'. ' else '' end
|| case when effect1_reserved6 <> 0 then 'effect1_reserved6_crit_related: '||effect1_reserved6||'. ' else '' end

|| case when effect1_reserved11 = 2 then 'Cannot be blocked, parried, or evaded. '
        when effect1_reserved11 <> 0 then 'effect1_reserved11: '||effect1_reserved11||'. ' 
        else '' end

--|| case when effect1_reserved14 <> 0 then 'effect1_reserved14: '||effect1_reserved14||'. ' else '' end
   
        
        
gen_desc,
effect_num,

effect1_type, 
effect1_reserved4 + coalesce(effect1_reserved3, 0) damage,
effect1_reserved3 upgrade_dmg_bonus,


--effect1_acc_mod1, 
effect1_acc_mod2 acc_mod, 
--effect1_critical_prob_mod1,
effect1_critical_prob_mod2 critical_prob_mod,
case when pvp_damage_ratio is null then '100%' else pvp_damage_ratio||'%' end pvp_damage_ratio,

coalesce(counter_skill,'')||coalesce(target_valid_status1,'')||coalesce(target_valid_status2,'')||coalesce(target_valid_status3,'')||coalesce(target_valid_status4,'') usage_condition,

case when coalesce(effect1_reserved16, effect1_reserved22) = '0' then null
     when coalesce(effect1_reserved16, effect1_reserved22) = '_dmg_race_type_A' then 'Warrior-type'
     when coalesce(effect1_reserved16, effect1_reserved22) = '_dmg_race_type_B' then 'Assassin-type'
     when coalesce(effect1_reserved16, effect1_reserved22) = '_dmg_race_type_C' then 'Mage-type'
     when coalesce(effect1_reserved16, effect1_reserved22) = '_dmg_race_type_D' then 'Special-type'
     when coalesce(effect1_reserved16, effect1_reserved22) = '_dmg_race_type_A, _dmg_race_type_B, _dmg_race_type_C, _dmg_race_type_D' then 'Warrior/Assassin/Mage/Special-types'
     else coalesce(effect1_reserved16, effect1_reserved22)
end bonus_dmg_condition,

case when effect1_reserved16 = 0 then null
     when effect1_reserved16 is not null then effect1_reserved10 + coalesce(effect1_reserved9, 0) 
     when effect1_reserved22 is not null then effect1_reserved21 + coalesce(effect1_reserved20, 0) 
end conditional_damage,
case when effect1_reserved16 = 0 then null
     when effect1_reserved16 is not null then effect1_reserved9 
     when effect1_reserved22 is not null then effect1_reserved20
end upgrade_conditional_damage_bonus,
--effect1_reserved9 upgrade_conditional_damage_bonus, 



case when effect1_reserved8 = 1 then '0.5x (33%), 1x (33%), 1.5x (33%)'
    when effect1_reserved8 = 3 then '0.9x (25%), 1x (25%), 1.1x (50%)'
    when effect1_reserved8 = 6 then '1x (66%), 2x (33%)'
end random_damage_multiplier,

effect1_reserved14,
effect1_reserved11 non_evadeability
,*
from _SKILLS_WITH_NAME_NORMALIZED skills
left join _CONDITIONAL_ATTACK ca1
on lower(skills.effect1_reserved16) = ca1.name
left join _CONDITIONAL_ATTACK ca2
on lower(skills.effect1_reserved22) = ca2.name
left join _CONDITIONAL_ATTACK caa
on lower(skills.effect1_reserved14) = caa.name

where lower(effect1_type) in (
'skillatk_instant',
'dashatk',
'skillatkdrain_instant',
--'OneTimeBoostSkillAttack',
'backdashatk',
'magiccounteratk',
'movebehindatk',
--'SignetBurst',
'carvesignet'
--'spellatkdrain_instant'
--'DispelallCounterATK',
--'FPATK_Instant',
--'FPATK',
--'DispelBuffCounterATK',
--'DelayedFPATK_Instant',
--'MPAttack',
--'Mpattack_Instant',
--'buffstun'
)
)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from physical_attack_skills;
;



select 
id,
skill,

effect1_basiclv,

*
from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) = 'procatk_instant'
;


--============================================================================================================================================--
--============================================================================================================================================--


with desc_procatk_instant as (

select 
id,
skill,
''    
 gen_desc,
effect1_basiclv,
effect1_reserved1 dmg_per_enchant,
effect1_reserved2 damage,
effect1_reserved3,
effect1_reserved4,
effect1_reserved5,
effect1_reserved6,
effect1_reserved7,
effect1_reserved8,
effect1_reserved9,
effect1_reserved10 element,
effect1_reserved11,
effect1_reserved12,
effect1_reserved13,
effect1_reserved14,
effect1_reserved15,
effect1_reserved16,
effect1_reserved17,
effect1_reserved18,
effect1_reserved19,
effect1_reserved20,
effect1_reserved21,
effect1_reserved22,
effect1_acc_mod1,
effect1_acc_mod2,
effect1_remain1,
effect1_remain2,
*
from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) = 'procatk_instant'

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from desc_mpheal 
where 0=1;
;

--============================================================================================================================================--
--============================================================================================================================================--


with skill_slow as (

select 
id,
skill,
case when effect1_cond_preeffect_prob2 <> 100 then effect1_cond_preeffect_prob2||'% chance of causing ' else '' end
||((effect1_reserved2 + coalesce(effect1_reserved1, 0)) * -1)||'% slower Attack Speed' 
||case when effect1_reserved1 < 0 then ' ('||(effect1_reserved1 * -1)||'% / enchant)' else '' end

||'.' gen_desc,
effect_num,

effect1_basiclv,
effect1_reserved2 ,
effect1_reserved6 ,
effect1_reserved11 ,
effect1_reserved12 ,
*
from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) = 'slow'

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from skill_slow;

;

--============================================================================================================================================--
--============================================================================================================================================--


with skill_resurrect as (

select 
skills.id,
skills.skill,
'Resurrects target. ' gen_desc,
skills.effect_num,

skills.effect1_basiclv,
skills.effect1_reserved6,
skills.effect1_reserved7,
*
from _SKILLS_WITH_NAME_NORMALIZED skills

left join _SKILLS_WITH_NAME_NORMALIZED debuff
on skills.effect1_reserved6 = debuff.name


where lower(skills.effect1_type) = 'resurrect'

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from skill_resurrect;

;

--============================================================================================================================================--
--============================================================================================================================================--


with skill_snare as (

select 
id,
skill,
case when effect1_cond_preeffect_prob2 <> 100 then effect1_cond_preeffect_prob2||'% chance to reduce' else 'Reduces' end
||' movement speed by '||effect1_reserved2||'%. ' gen_desc,
effect_num,

effect1_basiclv,
effect1_reserved2 ,
effect1_reserved6 ,
effect1_reserved11 ,
effect1_reserved12 ,
*
from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) = 'snare'

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from skill_snare;

;

--============================================================================================================================================--
--============================================================================================================================================--
/*
with desc_gen_statboost as (

select 
skill,
case when effect1_reserved4 > 0 then '+' 
    || effect1_reserved4 
    || '% ' 
    || coalesce(s1.body, effect1_reserved13)
    
    else case when effect1_reserved2 >= 0 then '+' else '' end 
    || ((effect1_reserved2 + coalesce(effect1_reserved1, 0)) / coalesce(s1.divisor, 1)) 
    || case when s1.is_pct = 1 then '%' else '' end 
    || ' ' 
    || coalesce(s1.body, effect1_reserved13) 
    || case when effect1_reserved1 > 0 then ' (+'
        || effect1_reserved1
        || case when s1.is_pct = 1 then '%' else '' end 
        || ' / enchant)'
        else '' end
    end 
    || case when effect1_reserved9 = 1 then ' while flying' else '' end
gen_desc,
effect_num,
s1.divisor,
effect1_basiclv,
effect1_reserved2 flat_value,
effect1_reserved3,
effect1_reserved4 pct_value,
effect1_reserved13 boost_stat,
effect1_target_type,
*
from _SKILLS_WITH_NAME_NORMALIZED skills
left join _STAT_NAMES s1
on lower(skills.effect1_reserved13) = s1.name
where lower(effect1_type) = 'statboost'

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from desc_gen_statboost;
;
*/
--============================================================================================================================================--
--============================================================================================================================================--

with desc_gen_stun as (

select 
skill,
case when effect1_cond_preeffect_prob2 <> 100 then effect1_cond_preeffect_prob2||'% chance to inflict ' else 'Inflicts ' end
||'Stun status' 
/*|| case when effect1_acc_mod2 <> 100 then 
        case when effect1_acc_mod2 >= 0 then ' (+' else '' end
        ||effect1_acc_mod2
        ||case when lower(type) = 'magical' then ' magical' else '' end
        ||' accuracy)'
   else '' end*/
|| '. '   
gen_desc,
effect_num,
effect1_basiclv,

effect1_target_type,
*
from _SKILLS_WITH_NAME_NORMALIZED skills
where lower(effect1_type) = 'stun'
)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from desc_gen_stun;
;

--============================================================================================================================================--
--============================================================================================================================================--



DROP TABLE IF EXISTS _SKILL_STAT_BUFF_DEBUFF;
CREATE TABLE _SKILL_STAT_BUFF_DEBUFF as

SELECT DISTINCT
id,
--skill,
effect_num,
0 effect_sub_num,
effect1_type,
effect1_reserved13 effect,
case when effect1_reserved4 > 0 then effect1_reserved4 else effect1_reserved2 end value,
case when effect1_reserved4 > 0 then effect1_reserved3 else effect1_reserved1 end value_per_enchant,
case when effect1_reserved4 > 0 then 1 else 0 end is_pct,
effect1_acc_mod1,
effect1_acc_mod2,
effect1_noresist,
effect1_remain2 duration,
effect1_remain1 duration_per_enchant,
effect1_reserved9 is_flight_only,
*
from _SKILLS_WITH_NAME_NORMALIZED_EFFECTS skills

where lower(effect1_type) = 'statboost'
and effect1_reserved13 is not null

UNION ALL

SELECT DISTINCT
id,
--skill,
effect_num,
1 effect_sub_num,
effect1_type,
effect1_reserved13 effect,
effect1_reserved2 * -1 value,
effect1_reserved1 * -1 value_per_enchant,
effect1_reserved6 is_pct,
effect1_acc_mod1,
effect1_acc_mod2,
effect1_noresist,
effect1_remain2 duration,
effect1_remain1 duration_per_enchant,
effect1_reserved9 is_flight_only,
*
from _SKILLS_WITH_NAME_NORMALIZED_EFFECTS skills

where lower(effect1_type) = 'statdown'
and effect1_reserved13 is not null

UNION ALL

SELECT DISTINCT
id,
--skill,
effect_num,
2 effect_sub_num,
effect1_type,
effect1_reserved14 effect,
effect1_reserved4 * -1 value,
effect1_reserved3 * -1 value_per_enchant,
effect1_reserved7 is_pct,
effect1_acc_mod1,
effect1_acc_mod2,
effect1_noresist,
effect1_remain2 duration,
effect1_remain1 duration_per_enchant,
effect1_reserved9 is_flight_only,
*
from _SKILLS_WITH_NAME_NORMALIZED_EFFECTS skills

where lower(effect1_type) = 'statdown'
and effect1_reserved14 is not null


UNION ALL

SELECT DISTINCT
id,
--skill,
effect_num,
3 effect_sub_num,
effect1_type,
effect1_reserved18 effect,
effect1_reserved16 * -1 value,
effect1_reserved15 * -1 value_per_enchant,
effect1_reserved17 is_pct,
effect1_acc_mod1,
effect1_acc_mod2,
effect1_noresist,
effect1_remain2 duration,
effect1_remain1 duration_per_enchant,
effect1_reserved9 is_flight_only,
*
from _SKILLS_WITH_NAME_NORMALIZED_EFFECTS skills

where lower(effect1_type) = 'statdown'
and effect1_reserved18 is not null

UNION ALL


SELECT DISTINCT
id,
--skill,
effect_num,
1 effect_sub_num,
effect1_type,
effect1_reserved13 effect,
effect1_reserved2 value,
effect1_reserved1 value_per_enchant,
effect1_reserved6 is_pct,
effect1_acc_mod1,
effect1_acc_mod2,
effect1_noresist,
effect1_remain2 duration,
effect1_remain1 duration_per_enchant,
effect1_reserved9 is_flight_only,
*
from _SKILLS_WITH_NAME_NORMALIZED_EFFECTS skills

where lower(effect1_type) = 'statup'
and effect1_reserved13 is not null

UNION ALL

SELECT DISTINCT
id,
--skill,
effect_num,
2 effect_sub_num,
effect1_type,
effect1_reserved14 effect,
effect1_reserved4 value,
effect1_reserved3 value_per_enchant,
effect1_reserved7 is_pct,
effect1_acc_mod1,
effect1_acc_mod2,
effect1_noresist,
effect1_remain2 duration,
effect1_remain1 duration_per_enchant,
effect1_reserved9 is_flight_only,
*
from _SKILLS_WITH_NAME_NORMALIZED_EFFECTS skills

where lower(effect1_type) = 'statup'
and effect1_reserved14 is not null


UNION ALL

SELECT DISTINCT
id,
--skill,
effect_num,
3 effect_sub_num,
effect1_type,
effect1_reserved18 effect,
effect1_reserved16 value,
effect1_reserved15 value_per_enchant,
effect1_reserved17 is_pct,
effect1_acc_mod1,
effect1_acc_mod2,
effect1_noresist,
effect1_remain2 duration,
effect1_remain1 duration_per_enchant,
effect1_reserved9 is_flight_only,
*
from _SKILLS_WITH_NAME_NORMALIZED_EFFECTS skills

where lower(effect1_type) = 'statup'
and effect1_reserved18 is not null
;


--with desc_union as (

with desc_gen_stats as (

with individual_effect_desc_gen as (
select 
id,
--skill,
case when effect1_cond_preeffect_prob2 < 100 then effect1_cond_preeffect_prob2||'% chance of ' else '' end
||case when value >= 0 then '+' else '' end
||((value + coalesce(value_per_enchant, 0)) / coalesce(s1.divisor, 1))
||case when skills.is_pct = '1' or s1.is_pct = '1' then '%' else '' end
||' '   
||coalesce(s1.body, skills.effect)
||case when cast(value_per_enchant as number) > 0 
    then ' ('
    ||case when value_per_enchant >= 0 then '+' else '' end
    ||value_per_enchant
    ||' / enchant)'
    else '' end

--|| case when effect1_noresist = 1 then ' (Not resistable)'  else '' end
|| case when is_flight_only = 1 then ' while flying' else '' end
|| ' '
gen_desc,
effect_num,
effect_sub_num,
*
from _SKILL_STAT_BUFF_DEBUFF skills

left join _STAT_NAMES s1
on lower(skills.effect) = s1.name

)
select distinct base.name, base.skill, base.class, base.activation_attribute, effects.* from 
individual_effect_desc_gen effects

left join _SKILLS_WITH_NAME_NORMALIZED base
on base.id = effects.id

)  
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from desc_gen_stats;
;

/*
select id, skill, gen_desc stat0, null stat1, null stat2, null stat3, null stat4, null stat5,null stat6,null stat7,null stat8,null stat9,null stat10,null stat11,null stat12 from desc_gen_stats where effect_sub_num = 0 union all
select id, skill, null stat0, gen_desc stat1, null stat2, null stat3, null stat4, null stat5,null stat6,null stat7,null stat8,null stat9,null stat10,null stat11,null stat12 from desc_gen_stats where effect_num = 1 and effect_sub_num = 1 union all
select id, skill, null stat0, null stat1, gen_desc stat2, null stat3, null stat4, null stat5,null stat6,null stat7,null stat8,null stat9,null stat10,null stat11,null stat12 from desc_gen_stats where effect_num = 1 and effect_sub_num = 2 union all
select id, skill, null stat0, null stat1, null stat2, gen_desc stat3, null stat4, null stat5,null stat6,null stat7,null stat8,null stat9,null stat10,null stat11,null stat12 from desc_gen_stats where effect_num = 1 and effect_sub_num = 3 union all
select id, skill, null stat0, null stat1, null stat2, null stat3, gen_desc stat4, null stat5,null stat6,null stat7,null stat8,null stat9,null stat10,null stat11,null stat12 from desc_gen_stats where effect_num = 2 and effect_sub_num = 1 union all
select id, skill, null stat0, null stat1, null stat2, null stat3, null stat4, gen_desc stat5,null stat6,null stat7,null stat8,null stat9,null stat10,null stat11,null stat12 from desc_gen_stats where effect_num = 2 and effect_sub_num = 2 union all
select id, skill, null stat0, null stat1, null stat2, null stat3, null stat4, null stat5,gen_desc stat6,null stat7,null stat8,null stat9,null stat10,null stat11,null stat12 from desc_gen_stats where effect_num = 2 and effect_sub_num = 3 union all
select id, skill, null stat0, null stat1, null stat2, null stat3, null stat4, null stat5,null stat6,gen_desc stat7,null stat8,null stat9,null stat10,null stat11,null stat12 from desc_gen_stats where effect_num = 3 and effect_sub_num = 1 union all
select id, skill, null stat0, null stat1, null stat2, null stat3, null stat4, null stat5,null stat6,null stat7,gen_desc stat8,null stat9,null stat10,null stat11,null stat12 from desc_gen_stats where effect_num = 3 and effect_sub_num = 2 union all
select id, skill, null stat0, null stat1, null stat2, null stat3, null stat4, null stat5,null stat6,null stat7,null stat8,gen_desc stat9,null stat10,null stat11,null stat12 from desc_gen_stats where effect_num = 3 and effect_sub_num = 3 union all
select id, skill, null stat0, null stat1, null stat2, null stat3, null stat4, null stat5,null stat6,null stat7,null stat8,null stat9,gen_desc stat10,null stat11,null stat12 from desc_gen_stats where effect_num = 4 and effect_sub_num = 1 union all
select id, skill, null stat0, null stat1, null stat2, null stat3, null stat4, null stat5,null stat6,null stat7,null stat8,null stat9,null stat10,gen_desc stat11,null stat12 from desc_gen_stats where effect_num = 4 and effect_sub_num = 2 union all
select id, skill, null stat0, null stat1, null stat2, null stat3, null stat4, null stat5,null stat6,null stat7,null stat8,null stat9,null stat10,null stat11,gen_desc stat12 from desc_gen_stats where effect_num = 4 and effect_sub_num = 3
)
select id, skill, 
coalesce(max(stat0),'')||
coalesce(max(stat1),'')||
coalesce(max(stat2),'')||
coalesce(max(stat3),'')||
coalesce(max(stat4),'')||
coalesce(max(stat5),'')||
coalesce(max(stat6),'')||
coalesce(max(stat7),'')||
coalesce(max(stat8),'')||
coalesce(max(stat9),'')||
coalesce(max(stat10),'')||
coalesce(max(stat11),'')||
coalesce(max(stat12),'')
from desc_union
group by id, skill
;




--insert into __maxperiod_skill_desc
--select id, skill, gen_desc, effect_num from desc_gen_statdown;

;
*/
/*
with desc_gen_statdown as (

--Effect: effect1_reserved13
--Value: effect1_reserved2
--Per enchant: effect1_reserved1
select 
id,
skill,
case when effect1_reserved2 >= 0 then '-' else '' end
||((effect1_reserved2 + coalesce(effect1_reserved1, 0)) / coalesce(s1.divisor, 1))
||case when effect1_reserved6 = 1 then '%' else '' end
||case when s1.is_pct = 1 then '%' else '' end
||' '   
||coalesce(s1.body, effect1_reserved13)
 
||case when effect1_reserved1 > 0 
    then ' (-'
    ||effect1_reserved1
    ||' / enchant)'
    else '' end

|| case when effect1_noresist = 1 then ' (Not resistable)'  else '' end
|| ' '
gen_desc,
effect_num,

effect1_basiclv,
effect1_reserved1 value_perlvl,
effect1_reserved2 value,
effect1_reserved13 boost_stat,
effect1_reserved6 is_pct_buff,
effect1_remain1 / 1000 duration_perlvl,
effect1_remain2 / 1000 duration,
effect1_hop_type,
effect1_hop_a,
effect1_hop_b,
*
from _SKILLS_WITH_NAME_NORMALIZED skills

left join _STAT_NAMES s1
on lower(skills.effect1_reserved13) = s1.name

where lower(effect1_type) = 'statdown'
and effect1_reserved13 is not null

UNION ALL

--Effect: effect1_reserved14
--Value: effect1_reserved4
--Per enchant: effect1_reserved3
select 
id,
skill,
case when effect1_reserved4 >= 0 then '-' else '' end
||(effect1_reserved4 + coalesce(effect1_reserved3, 0))
||case when effect1_reserved6 = 1 then '%' else '' end
||' '   
||coalesce(s1.body, effect1_reserved14)
 
||case when effect1_reserved3 > 0 
    then ' (-'
    ||effect1_reserved3
    ||' / enchant)'
    else '' end

|| case when effect1_noresist = 1 then ' (Not resistable)'  else '' end
|| ' '
gen_desc,
effect_num,

effect1_basiclv,
effect1_reserved3 value_perlvl,
effect1_reserved4 value,
effect1_reserved13 boost_stat,
effect1_reserved6 is_pct_buff,
effect1_remain1 / 1000 duration_perlvl,
effect1_remain2 / 1000 duration,
effect1_hop_type,
effect1_hop_a,
effect1_hop_b,
*
from _SKILLS_WITH_NAME_NORMALIZED skills

left join _STAT_NAMES s1
on lower(skills.effect1_reserved14) = s1.name

where lower(effect1_type) = 'statdown'
and effect1_reserved14 is not null


UNION ALL

--Effect: effect1_reserved18
--Value: effect1_reserved16
--Per enchant: effect1_reserved17
select 
id,
skill,
case when effect1_reserved16 >= 0 then '-' else '' end
||(effect1_reserved16 + coalesce(effect1_reserved17, 0))
||case when effect1_reserved6 = 1 then '%' else '' end
||' '   
||coalesce(s1.body, effect1_reserved18)
 
||case when effect1_reserved17 > 0 
    then ' (-'
    ||effect1_reserved17
    ||' / enchant)'
    else '' end

|| case when effect1_noresist = 1 then ' (Not resistable)'  else '' end
|| ' '
gen_desc,
effect_num,

effect1_basiclv,
effect1_reserved17 value_perlvl,
effect1_reserved16 value,
effect1_reserved13 boost_stat,
effect1_reserved6 is_pct_buff,
effect1_remain1 / 1000 duration_perlvl,
effect1_remain2 / 1000 duration,
effect1_hop_type,
effect1_hop_a,
effect1_hop_b,
*
from _SKILLS_WITH_NAME_NORMALIZED skills

left join _STAT_NAMES s1
on lower(skills.effect1_reserved18) = s1.name

where lower(effect1_type) = 'statdown'
and effect1_reserved18 is not null
--effect1_reserved18

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from desc_gen_statdown;
;

--============================================================================================================================================--
--============================================================================================================================================--

with desc_gen_statup as (

select 
id,
skill,
case when effect1_reserved2 >= 0 then '+' else '' end
    ||(effect1_reserved2 + coalesce(effect1_reserved1, 0))
    ||case when effect1_reserved6 = 1 then '%' else '' end
    ||' '   
    ||coalesce(s1.body, effect1_reserved13)
    ||case when effect1_reserved1 > 0 
        then ' (+'
        ||effect1_reserved1
        ||' / enchant)'
        else '' 
        end
gen_desc,
effect_num,

effect1_basiclv,
effect1_reserved1 value_perlvl,
effect1_reserved2 value,
effect1_reserved13 boost_stat,
effect1_reserved6 is_pct_buff,
effect1_remain1 / 1000 duration_perlvl,
effect1_remain2 / 1000 duration,
effect1_hop_type,
effect1_hop_a,
effect1_hop_b,
*
from _SKILLS_WITH_NAME_NORMALIZED skills

left join _STAT_NAMES s1
on lower(skills.effect1_reserved13) = s1.name

where lower(effect1_type) = 'statup'
and effect1_reserved13 is not null

UNION ALL

select 
id,
skill,
case when effect1_reserved4 >= 0 then '+' else '' end
    ||(effect1_reserved4 + coalesce(effect1_reserved3, 0))
    ||case when effect1_reserved6 = 1 then '%' else '' end
    ||' '   
    ||coalesce(s1.body, effect1_reserved14)
    ||case when effect1_reserved3 > 0 
        then ' (+'
        ||effect1_reserved3
        ||' / enchant)'
        else '' 
        end
gen_desc,
effect_num,

effect1_basiclv,
effect1_reserved3 value_perlvl,
effect1_reserved4 value,
effect1_reserved14 boost_stat,
effect1_reserved6 is_pct_buff,
effect1_remain1 / 1000 duration_perlvl,
effect1_remain2 / 1000 duration,
effect1_hop_type,
effect1_hop_a,
effect1_hop_b,
*
from _SKILLS_WITH_NAME_NORMALIZED skills

left join _STAT_NAMES s1
on lower(skills.effect1_reserved14) = s1.name

where lower(effect1_type) = 'statup'
and effect1_reserved13 is not null
and coalesce(effect1_reserved3, 0) + coalesce(effect1_reserved4, 0) > 0


UNION ALL

select 
id,
skill,
case when effect1_reserved16 >= 0 then '+' else '' end
    ||(effect1_reserved16 + coalesce(effect1_reserved17, 0))
    ||case when effect1_reserved17 = 1 then '%' else '' end
    ||' '   
    ||coalesce(s1.body, effect1_reserved18)
    ||case when effect1_reserved17 > 0 
        then ' (+'
        ||effect1_reserved17
        ||' / enchant)'
        else '' 
        end
gen_desc,
effect_num,

effect1_basiclv,
effect1_reserved17 value_perlvl,
effect1_reserved16 value,
effect1_reserved18 boost_stat,
effect1_reserved6 is_pct_buff,
effect1_remain1 / 1000 duration_perlvl,
effect1_remain2 / 1000 duration,
effect1_hop_type,
effect1_hop_a,
effect1_hop_b,
*
from _SKILLS_WITH_NAME_NORMALIZED skills

left join _STAT_NAMES s1
on lower(skills.effect1_reserved18) = s1.name

where lower(effect1_type) = 'statup'
and effect1_reserved18 is not null
and coalesce(effect1_reserved16, 0) + coalesce(effect1_reserved17, 0) > 0

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from desc_gen_statup;
;
*/

--============================================================================================================================================--
--============================================================================================================================================--

select 
id,
effect1_basiclv,
effect1_reserved2,
effect1_reserved4,
effect1_reserved6 offhand_min_damage,
*
from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) = 'wpn_dual'
;


--============================================================================================================================================--
--============================================================================================================================================--


with skill_wpn_mastery as (

select 
id,
skill,
'Allows usage of '||effect1_reserved5||'s. '
||'+'||effect1_reserved2||'% damage when attacking with '||effect1_reserved5||'s. ' gen_desc,
effect_num,

effect1_basiclv,
effect1_reserved2 dmg_pct_increase,
effect1_reserved5 weapon,
*
from _SKILLS_WITH_NAME_NORMALIZED 
where lower(effect1_type) = 'wpn_mastery'

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, effect_num from skill_wpn_mastery;

;

--============================================================================================================================================--
--============================================================================================================================================--

with desc_durations as (

with qq as (
select id, min(effect_num) min_effect_num
from _SKILLS_WITH_NAME_NORMALIZED
where coalesce(effect1_remain1, 0) + coalesce(effect1_remain2, 0) > 0
group by id
)
select skills.id, 
case when cast(coalesce(effect1_remain1, 0) + coalesce(effect1_remain2, 0) as number) > 0 then 
    '('||((coalesce(effect1_remain1, 0) + coalesce(effect1_remain2, 0)) / 1000.0)
    || ' seconds'
    || case when cast(effect1_remain1 as number) > 0 then ' plus '|| cast(effect1_remain1 / 1000.0  as number) || ' seconds per enchant' else '' end
    || ') '
else '' end
gen_desc,    
skill, name, effect_num, effect1_type, effect1_remain1, effect1_remain2 
from _SKILLS_WITH_NAME_NORMALIZED skills
join qq
on skills.id = qq.id
and effect_num = min_effect_num

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, 998 from desc_durations;

;

--============================================================================================================================================--
--============================================================================================================================================--

with desc_skill_misc as (

select  distinct
id,
skill,
''
||case when pvp_damage_ratio <> 100 then 'Deals '|| case when pvp_damage_ratio < 100 then 'only ' else '' end||pvp_damage_ratio||'% damage in PvP. ' else '' end

||case when counter_skill is not null then 'Must be used after '||coalesce(cac.body, counter_skill)||'. ' else '' end

||case when target_valid_status1 is not null then 'Only usable if '
    ||case when lower(first_target) = 'me' then 'you are ' else 'target is ' end
    ||coalesce(ca1.body, target_valid_status1)
    ||case when target_valid_status2 is not null then ' or '||coalesce(ca2.body, target_valid_status2) else '' end
    ||case when target_valid_status3 is not null then ' or '||coalesce(ca3.body, target_valid_status3) else '' end
    ||case when target_valid_status4 is not null then ' or '||coalesce(ca4.body, target_valid_status4) else '' end
    ||case when target_valid_status5 is not null then ' or '||coalesce(ca5.body, target_valid_status5) else '' end
    ||'. '
    else '' end

||case when lower(target_range) = 'area' and target_maxcount > 1 then
    'Affects up to '
    ||target_maxcount||' '
    ||case when lower(target_species_restriction) = 'npc' then 'NPC '
           when lower(target_species_restriction) = 'pc' then 'player '
           else ''
           end
           
    ||case when lower(target_relation_restriction) = 'enemy' then 'foes '
           when lower(target_relation_restriction) = 'friend' then 'allies '
           when lower(target_relation_restriction) = 'myparty' then 'party members '
           else 'targets '
           end
    
    ||case when lower(target_range_area_type) = 'fireball' then case 
        when target_range_opt2 > 0 then 'more than '||target_range_opt2||'m away and ' else '' end
        ||'within '
        ||case when target_range_opt1 = target_range_opt3 then target_range_opt1||'m '
               else target_range_opt1 ||'m horizonally and '|| target_range_opt3 ||'m vertically '
               end
        ||'from '|| case when lower(first_target) = 'me' then 'you. ' 
                        when lower(first_target) = 'targetorme' then ' you or your target. ' 
                        else 'the target. ' end        
    
        when lower(target_range_area_type) = 'lightningbolt' then        
        'within '
        ||case when target_range_opt1 = target_range_opt3 then target_range_opt1||'m '
               else target_range_opt1 ||'m horizonally and '|| target_range_opt3 ||'m vertically '
               end
        ||'from a '|| target_range_opt2||'m-long line in front of you. '
        
        when lower(target_range_area_type) = 'firestorm' then        
        'within '
        ||case when target_range_opt1 = target_range_opt3 then target_range_opt1||'m '
               else target_range_opt1 ||'m horizonally and '|| target_range_opt3 ||'m vertically '
               end
        ||'within a '|| target_range_opt2||'-degree cone in front of you. '
        
        else '' end
        

        
else ''        
end
||case when /*when lower(target_range) = 'onlyone' and */lower(first_target) <> 'me' and coalesce(lower(target_range_area_type),'') not in ('lightningbolt','firestorm') then
  case when add_wpn_range = 1 and first_target_valid_distance = 0 then '' 
        when add_wpn_range = 1 and first_target_valid_distance > 0 then '+'||first_target_valid_distance||'m to weapon range.'
        else first_target_valid_distance||'m range. ' end           
else '' end
gen_desc,
skills.name,
class,
activation_attribute,
add_wpn_range,
--allow_use_form_category,
--cancel_rate,
first_target,
first_target_valid_distance,
--target_flying_restriction,
--target_marker_radius,
target_maxcount,
target_range,
target_range_area_type,
target_range_opt1,
target_range_opt2,
target_range_opt3,
target_range_opt4,
target_relation_restriction,
target_slot,
target_slot_level,
target_species_restriction,
target_stop,
target_valid_status1,
target_valid_status2,
target_valid_status3,
target_valid_status4,
target_valid_status5,
*
from _SKILLS_WITH_NAME_NORMALIZED skills
left join _CONDITIONAL_ATTACK ca1
on lower(target_valid_status1) = ca1.name
left join _CONDITIONAL_ATTACK ca2
on lower(target_valid_status2) = ca2.name
left join _CONDITIONAL_ATTACK ca3
on lower(target_valid_status3) = ca3.name
left join _CONDITIONAL_ATTACK ca4
on lower(target_valid_status4) = ca4.name
left join _CONDITIONAL_ATTACK ca5
on lower(target_valid_status5) = ca5.name
left join _CONDITIONAL_ATTACK cac
on lower(counter_skill) = cac.name
where activation_attribute = 'Active'

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, 999 from desc_skill_misc;
;

--============================================================================================================================================--
--============================================================================================================================================--

--Skill proc references

--============================================================================================================================================--
--============================================================================================================================================--

with ref_provoker as (

select distinct
skills.id,
skills.skill,
skills.effect_num,
maxperiod.gen_desc,
maxperiod.order_num

from _SKILLS_WITH_NAME_NORMALIZED skills

left join _SKILLS_WITH_NAME_NORMALIZED proc
on skills.effect1_reserved17 = proc.name

left join __maxperiod_skill_desc maxperiod
on proc.id = maxperiod.id

where lower(skills.effect1_type) = 'provoker'
and gen_desc <> ''

order by maxperiod.order_num

)
insert into __maxperiod_skill_desc
select id, skill, gen_desc, order_num + 1000 from ref_provoker;
;



--============================================================================================================================================--
--============================================================================================================================================--

select distinct lower(dispel_category), lower(sub_type), lower(target_slot)
from _SKILLS_WITH_NAME_NORMALIZED skills
order by 2, 3, 1

select distinct id, skill, name, lower(dispel_category), lower(sub_type), lower(target_slot), required_dispel_level
from _SKILLS_WITH_NAME_NORMALIZED skills

select distinct id||',', skill, name, min(effect1_acc_mod2), max((effect1_acc_mod2))
from _SKILLS_WITH_NAME_NORMALIZED skills
group by id, skill, name having min(effect1_acc_mod2) <> max((effect1_acc_mod2))

select id, skill, name, effect1_acc_mod2, effect1_type, type
from _SKILLS_WITH_NAME_NORMALIZED skills
where id in (
1023,
1024,
1025,
1026,
1417,
1574,
1575,
1942,
1943,
1944,
1945,
1946,
1947,
1948,
1949,
1950,
1951,
1952,
1953,
1970,
1971,
1972,
1973,
1974,
1975,
1976,
1977,
1978,
1979,
1980,
1981,
1992,
1993,
1994,
1995,
1996,
1997,
1998,
1999,
2000,
2001,
2002,
2003,
2005,
2006,
2055,
2056,
2057,
2058,
2059,
2060,
2061,
2062,
2063,
2064,
2065,
2066,
2067,
2068,
2093,
2094,
2095,
2096,
2097,
2098,
2099,
2100,
2101,
2102,
2103,
2104,
2105,
2155,
2156,
2157,
2158,
2159,
2160,
2161,
2162,
2163,
2164,
2165,
2166,
21664,
21792,
2180,
2181,
2182,
2183,
2184,
2185,
2186,
2187,
2188,
2189,
2190,
2191,
2192,
2193,
2194,
2196,
2197,
2199,
2200,
2202,
2203,
22030,
22031,
22032,
22033,
22036,
2205,
2206,
2208,
2209,
2256,
2257,
2258,
2259,
2260,
2261,
2262,
2263,
2299,
2300,
2302,
2303,
2305,
2306,
2308,
2309,
2311,
2312,
2314,
2315,
2317,
2318,
2320,
2321,
2391,
2392,
2393,
2394,
2395,
2396,
2397,
2398,
2409,
2410,
2411,
2412,
2413,
2414,
2498,
2499,
2500,
2501,
2502,
2503,
2643,
2644,
2646,
2647,
2649,
2650,
2652,
2653,
2655,
2656,
2658,
2659,
2661,
2662,
2664,
2665,
2711,
2712,
2713,
2714,
2715,
2716,
2726,
2727,
2728,
2729,
2730,
2731,
2732,
2733,
2734,
2735,
2939,
2940,
2941,
2942,
2943,
2944,
3506,
3507,
3508,
3509,
3510,
3511,
4521,
710,
711,
712,
713,
714,
715,
716,
717,
718,
719,
873,
874,
875,
876,
877,
878,
879
);

select distinct lower(effect1_type)
from _SKILLS_WITH_NAME_NORMALIZED skills
where name like 'CH\_%' escape '\'

select *
from _SKILLS_WITH_NAME_NORMALIZED skills
where name like 'CH\_%' escape '\' or class = 'CHANTER'
/*
(null)
110282
absoluteappoint_heal_instant
absoluteexppoint_heal_instant
absoluteslow
absolutesnare
absolutestattopcbuff
absolutestattopcdebuff
activate_enslave
alwaysblock
alwaysdodge
alwayshit
alwaysnoresist
alwaysparry
alwaysresist
amr_mastery
apboost
aura
backdashatk
bind
bleed
blind
boostdroprate
boosthate
boosthealeffect
boostskillcastingtime [DONE]
boostskillcost
boostspellattackeffect
buffbind
buffsilence
buffstun
carvesignet
caseheal
casestatup
closeaerial
combinepointboost
condskilllauncher
confuse
convertheal
curse
dashatk
deboosthealamount
deform
delayedfpatk_instant
delayedskill
delayedspellatk_instant
disease
dispel
dispelallcounteratk
dispelbuff
dispelbuffcounteratk
dispeldebuff
dispeldebuffmental
dispeldebuffphysical
dispelnpcbuff
dispelnpcdebuff
dpheal
dpheal_instant
dptransfer
drboost
dummy
escape
evade
extendaurarange
extractgatherpointboost
fall
fear
flyoff
fpatk
fpatk_instant
fpheal
fpheal_instant
gatherpointboost
heal
heal_instant
healcastoronattacked
hide
hipass
hostileup
intervalskill
invulnerablewing
magiccounteratk
menuisiercombinepointboost
movebehindatk
mpattack
mpattack_instant
mpheal
mpheal_instant
mpshield
nodeathpenalty
nofly
noreducespellatk_instant
noresurrectpenalty
onetimeboosthealeffect
onetimeboostskillattack
onetimeboostskillcritical
openaerial
outofsight
paralyze
petorderunsummon
petorderuseultraskill
petrification
poison
polymorph
procatk_instant [DONE]
procdpheal_instant
procfpheal_instant
procheal_instant
procmpheal_instant
procstunlike
procvpheal_instant
protect
provoker
pulled
randommoveloc
rebirth
recall_instant
reflector
resurrect
resurrectbase
resurrectpositional
returnhome
returnpoint
riderobot
root
sanctuary
search
shapechange
shield
shieldmastery
signet
signetburst
silence
simple_root
skillatk_instant
skillatkdrain_instant
skillcooltimereset
skilllauncher
sleep
slow
snare
spellatk
spellatk_instant [DONE]
spellatkdrain
spellatkdrain_instant
spin
stagger
statboost [DONE]
statdown
statreform
statup [DONE]
stumble
stun
subtypeboostresist
summon
summonfunctionalnpc
summongroupgate
summonhoming
summonhousegate
summonservant
summonskillarea
summontotem
summontrap
supportevent
switchhostile
switchhpmp_instant
targetchange
targetteleport
utility
weaponstatboost
weaponstatup
wpn_dual
wpn_mastery [DONE]
xpboost
*/

/* chanter
wpn_mastery [DONE]
amr_mastery
shieldmastery
statboost [DONE]
extendaurarange
statup [DONE]
skillatk_instant [DONE]
boostskillcastingtime [DONE]
statdown [DONE]
bind [DONE]
snare [DONE]
stun [DONE]
dispeldebuff [DONE]
heal_instant [DONE]
mpheal_instant [DONE]
evade [DONE]
provoker [DONE]
aura [DONE]
shield [DONE]
heal [DONE]
randommoveloc
boosthate
dispel
alwaysparry
slow [DONE]
spellatk
healcastoronattacked
mpheal [DONE]
procfpheal_instant
procmpheal_instant
procheal_instant [Not class]
procatk_instant [DONE]
onetimeboosthealeffect
onetimeboostskillattack [Not class]
fpheal[DONE]
deboosthealamount [DONE]
*/

/* passives only
Wpn_Mastery
Amr_Mastery
Utility
Wpn_Dual
ShieldMastery
CondSkillLauncher
StatBoost
WeaponStatBoost
Provoker
DeBoostHealAmount
SubTypeBoostResist
ExtendAuraRange
BoostSpellAttackEffect
BoostHate
BoostHealEffect
WeaponStatUp
*/


select distinct 'insert into _CONDITIONAL_ATTACK values('''||lower(effect1_reserved16)||''', '' '');'
from _SKILLS_WITH_NAME_NORMALIZED skills
where lower(effect1_type) in (
'skillatk_instant',
'BackDashATK',
'MagicCounterATK',
'MoveBehindATK',
--'SignetBurst',
--'DispelallCounterATK',
--'DispelBuffCounterATK',
'buffstun',

'carvesignet',
'delayedspellatk_instant',
'procatk_instant',
'spellatk_instant'
----'spellatkdrain_instant'
--'dispelallcounteratk',
--'dispelbuffcounteratk'--,
--'delayedfpatk_Instant'
)
union 
select distinct 'insert into _CONDITIONAL_ATTACK values('''||lower(effect1_reserved22)||''', '' '');'
from _SKILLS_WITH_NAME_NORMALIZED skills
where lower(effect1_type) in (
'skillatk_instant',
'dashatk',
'skillatkdrain_instant',
'carvesignet'
)
union 
select distinct 'insert into _CONDITIONAL_ATTACK values('''||lower(counter_skill)||''', '' '');'
from _SKILLS_WITH_NAME_NORMALIZED skills
union 
select distinct 'insert into _CONDITIONAL_ATTACK values('''||lower(target_valid_status1)||''', '' '');'
from _SKILLS_WITH_NAME_NORMALIZED skills
union 
select distinct 'insert into _CONDITIONAL_ATTACK values('''||lower(target_valid_status2)||''', '' '');'
from _SKILLS_WITH_NAME_NORMALIZED skills
union 
select distinct 'insert into _CONDITIONAL_ATTACK values('''||lower(target_valid_status3)||''', '' '');'
from _SKILLS_WITH_NAME_NORMALIZED skills
union 
select distinct 'insert into _CONDITIONAL_ATTACK values('''||lower(target_valid_status4)||''', '' '');'
from _SKILLS_WITH_NAME_NORMALIZED skills
union 
select distinct 'insert into _CONDITIONAL_ATTACK values('''||lower(target_valid_status5)||''', '' '');'
from _SKILLS_WITH_NAME_NORMALIZED skills
order by 1
;

/*
'SkillATK_Instant',
'DashATK',
'SkillATKDrain_Instant',
--'OneTimeBoostSkillAttack',
'BackDashATK',
'MagicCounterATK',
'MoveBehindATK',
--'SignetBurst',
'CarveSignet',
'DispelallCounterATK',
'FPATK_Instant',
'FPATK',
'DispelBuffCounterATK',
'DelayedFPATK_Instant',
'MPAttack',
'Mpattack_Instant',
'buffstun'
*/

select * from _SKILLS_WITH_NAME_NORMALIZED
where name like 'CH\_%' escape '\'
order by id
;

select id, skill, name, effect_num, effect1_type, effect1_remain1, effect1_remain2 
from _SKILLS_WITH_NAME_NORMALIZED
where id in (
10173,
10174,
10175,
10177,
10179,
10180,
10369,
10500,
10501,
10502,
10791,
10792,
10793,
10898,
10899,
10900,
11278,
11279,
11280,
11281,
11282,
11283,
11521,
12104,
12113,
12119,
12120,
1418,
1419,
1420,
16412,
16447,
16690,
16801,
16922,
16969,
16970,
16973,
17080,
17110,
17111,
17289,
17290,
17308,
17309,
17310,
17383,
17384,
17385,
17387,
17640,
17643,
17780,
17856,
17883,
17884,
18044,
18200,
18290,
18291,
18562,
18580,
18600,
18641,
18644,
18645,
18646,
18750,
18762,
18899,
19171,
1923,
19389,
19432,
19520,
19542,
1956,
19604,
19608,
19612,
19621,
19638,
19789,
19918,
20018,
20048,
20049,
20050,
20064,
20067,
20248,
2046,
20489,
20534,
20727,
20728,
20845,
21336,
21337,
21345,
21346,
21347,
21348,
21354,
21355,
21375,
21376,
21377,
21378,
21379,
21380,
21409,
21434,
21435,
21469,
21470,
21471,
21472,
21515,
21579,
21582,
21586,
21587,
21588,
21589,
21590,
21591,
21652,
21718,
21728,
21729,
21730,
21731,
21807,
21808,
21829,
21830,
21831,
21832,
21833,
21834,
22868,
22887,
22888,
22992,
23039,
2504,
2505,
2506,
3312,
3574,
620,
8290,
8372,
8373,
8374,
8375,
8376,
8377,
8378,
8379,
8414,
8415,
8416,
8417,
8418,
8419,
8420,
8421,
8422,
8423,
8601,
8603,
8750,
888,
9157,
9159,
9837
)
order by name, id, effect_num
;



/* skills with different duration on its effects
select distinct id||',', min(coalesce(effect1_remain1, 0) + coalesce(effect1_remain2, 0)), max(coalesce(effect1_remain1, 0) + coalesce(effect1_remain2, 0))
from _SKILLS_WITH_NAME_NORMALIZED
group by id
having min(coalesce(effect1_remain1, 0) + coalesce(effect1_remain2, 0)) <> max(coalesce(effect1_remain1, 0) + coalesce(effect1_remain2, 0)) and min(coalesce(effect1_remain1, 0) + coalesce(effect1_remain2, 0)) > 0
*/


select distinct
'insert into _STAT_NAMES values('''||lower(effect1_reserved13)||''', '' '');'
from _SKILLS_WITH_NAME_NORMALIZED skills
where lower(effect1_type) in  ('statup', 'statdown')
and effect1_reserved13 is not null

union

select distinct
'insert into _STAT_NAMES values('''||lower(effect1_reserved14)||''', '' '');'
from _SKILLS_WITH_NAME_NORMALIZED skills
where lower(effect1_type) in  ('statup', 'statdown')
and effect1_reserved14 is not null

union

select distinct
'insert into _STAT_NAMES values('''||lower(effect1_reserved18)||''', '' '');'
from _SKILLS_WITH_NAME_NORMALIZED skills
where lower(effect1_type) in  ('statup', 'statdown')
and effect1_reserved18 is not null
;




--============================================================================================================================================--
--============================================================================================================================================--
select distinct base.id, base.name, base.skill, base.class, maxperiod.gen_desc, order_num 
from _SKILLS_WITH_NAME_NORMALIZED_BASE base
left join __maxperiod_skill_desc maxperiod
on maxperiod.id = base.id
where gen_desc <> ''
order by base.name, base.id, order_num