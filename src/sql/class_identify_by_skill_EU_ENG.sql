
--begin;

create temp table _tmp_client_strings_skill as
select upper(name) name, body
from ENG_data_strings_client_strings_skill
;

create temp table _tmp_client_skills as 
select upper(desc) desc_upper, *
from skills_client_skills
where name not like 'P\_%' escape '\'
;



drop table if exists _CLASS_IDENTIFY_BY_SKILL_EU_ENG;

create table _CLASS_IDENTIFY_BY_SKILL_EU_ENG AS

with skill_class as (
select distinct body, 
case 
        when upper(substr(skill.name, 1, 3)) in ('WA_', 'FI_', 'KN_', 'SC_', 'RA_', 'AS_', 'MG_', 'WI_', 'EL_', 'CL_', 'PR_', 'CH_', 'EN_', 'GU_', 'RI_', 'AR_', 'BA_')
                then upper(substr(skill.name, 1, 2))
        else null
end class
from _tmp_client_strings_skill str
left outer join
_tmp_client_skills skill
on str.name = skill.desc_upper
)
select body, max(class) from
skill_class
group by body having count(*) = 1 and max(class) is not null
order by max(class)
;

drop table if exists _tmp_client_strings_skill;
drop table if exists _tmp_client_skills;

--commit;