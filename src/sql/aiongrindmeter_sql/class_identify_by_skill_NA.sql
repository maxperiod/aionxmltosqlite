with strings_upper as (
    select 
    file, 
    upper(name) name, 
    body 
    from strings
    where strings.folder like ?    
    and file = 'client_strings_skill.xml'
    --and name not like '%\_DESC' escape '\'
    --and name not like '%\_DESC\_LVCH' escape '\'
    --and name not like '%\_ABNORMAL' escape '\'
    and upper(name) in (select distinct upper(desc) from skill_base_clients)
),

distinction as (
    select distinct
    --coalesce(skills.skill_group_name, skills.name) name,
    upper(
        case 
            when skill_group_name like 'EV\_%' escape '\' then substr(skill_group_name, 4, 3)
            else substr(coalesce(skill_group_name, skills.name), 1, 3)
        end
    ) class_by_code, 
    learn.class learn_class,
    --coalesce(skill_group_
    strings.body 
    FROM skill_base_clients skills
    left outer join
    strings_upper strings
    on upper(skills.desc) = strings.name
    
    left outer join 
    client_skill_learns learn
    on skills.name = learn.skill
    
    where activation_attribute = 'Active'
),
groupby as (
--select * from distinction
select body, max(class_by_code) class_by_code
from distinction
group by body 
having count(*) = 1
)
select body, substr(class_by_code, 1, 2) from groupby
where class_by_code in ('WA_', 'FI_', 'KN_', 'SC_', 'RA_', 'AS_', 'MG_', 'WI_', 'EL_', 'CL_', 'PR_', 'CH_', 'EN_', 'GU_', 'RI_', 'AR_', 'BA_')
order by 2, 1
;