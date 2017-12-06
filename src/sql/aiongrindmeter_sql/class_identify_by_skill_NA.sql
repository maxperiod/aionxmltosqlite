
with _strings_language as (
select * from _strings_upper_name 
where folder like ?
and file = 'client_strings_skill.xml'
),
_npc_skill as (
select 
upper(skills.name) name, _strings_language.body
from skill_base_clients skills

join _strings_language
on upper(skills.desc) = _strings_language.upper_name

left join client_skill_learns learns
on learns.skill = skills.name

where 
upper(substr(skills.name, 1, 3)) not in ('WA_', 'FI_', 'KN_', 'SC_', 'RA_', 'AS_', 'MA_', 'WI_', 'EL_', 'CL_', 'PR_', 'CH_', 'EN_', 'GU_', 'RI_', 'AR_', 'BA_', 'EV_')
--and strings.folder like ?    

and learns.id is null
),

player_only_skill_class as (


--select * from npc_skill
select distinct
--coalesce(skills.skill_group_name, skills.name) name,
learns.class,
_strings_language.body
--_npc_skill.body
from skill_base_clients skills

join _strings_language
on upper(skills.desc) = _strings_language.upper_name
--and strings.folder like ?   

join client_skill_learns learns
on learns.skill = skills.name

left join _npc_skill
on _npc_skill.body = _strings_language.body

where _npc_skill.body is null
and lower(activation_attribute) <> 'passive'

)
select body, upper(max(class)) class_by_code
from player_only_skill_class
group by body having count(*) = 1

union all

select body, 'multi' class_by_code
from player_only_skill_class
group by body having count(*) > 1

;

/*
drop table if exists _strings_language;
create temp table _strings_language as
select * from _strings_upper_name 
where folder like ?
and file = 'client_strings_skill.xml';

drop table if exists _npc_skill;
create temp table _npc_skill as 
select 
upper(skills.name) name, _strings_language.body
from skill_base_clients skills

join _strings_language
on upper(skills.desc) = _strings_language.upper_name

left join client_skill_learns learns
on learns.skill = skills.name

where 
upper(substr(skills.name, 1, 3)) not in ('WA_', 'FI_', 'KN_', 'SC_', 'RA_', 'AS_', 'MA_', 'WI_', 'EL_', 'CL_', 'PR_', 'CH_', 'EN_', 'GU_', 'RI_', 'AR_', 'BA_', 'EV_')
--and strings.folder like ?    

and learns.id is null
;


with player_only_skill_class as (


--select * from npc_skill
select distinct
--coalesce(skills.skill_group_name, skills.name) name,
learns.class,
_strings_language.body
--_npc_skill.body
from skill_base_clients skills

join _strings_language
on upper(skills.desc) = _strings_language.upper_name
--and strings.folder like ?   

join client_skill_learns learns
on learns.skill = skills.name

left join _npc_skill
on _npc_skill.body = _strings_language.body

where _npc_skill.body is null
and lower(activation_attribute) <> 'passive'

)
select body, max(class) class_by_code
from player_only_skill_class
group by body having count(*) = 1

union all

select body, 'multi' class_by_code
from player_only_skill_class
group by body having count(*) > 1

;
*/
/*
with strings_upper as (
    select 
    file, 
    upper(substr(name, 12)) name, 
    upper(
        case 
            when name like 'STR\_SKILLN\_EV\_%' escape '\' then substr(name, 15, 3)
            else substr(name, 12, 3)
        end
    ) class_by_code,
    body 
    from strings
    where strings.folder like ?    
    and file = 'client_strings_skill.xml'
    --and name not like '%\_DESC' escape '\'
    --and name not like '%\_DESC\_LVCH' escape '\'
    --and name not like '%\_ABNORMAL' escape '\'
    and upper(name) in (select distinct upper(desc) from skill_base_clients)
    --and name like 'STR\_SKILLN\_%' escape '\'
)

select body, substr(max(class_by_code), 1, 2) class_by_code
from strings_upper
group by body 
having count(*) = 1 and class_by_code in ('WA_', 'FI_', 'KN_', 'SC_', 'RA_', 'AS_', 'MG_', 'WI_', 'EL_', 'CL_', 'PR_', 'CH_', 'EN_', 'GU_', 'RI_', 'AR_', 'BA_')

union all 

select body, 'pcnpc' class_by_code
from strings_upper
group by body 
having count(*) > 1 and class_by_code in ('WA_', 'FI_', 'KN_', 'SC_', 'RA_', 'AS_', 'MG_', 'WI_', 'EL_', 'CL_', 'PR_', 'CH_', 'EN_', 'GU_', 'RI_', 'AR_', 'BA_')

*/