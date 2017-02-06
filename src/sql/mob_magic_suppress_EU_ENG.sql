with tbl as 

(
select distinct desc, hpgauge_level, magical_skill_boost, magical_skill_boost_resist
from 
npcs_client_npcs_monster tbl
union all
select distinct desc, hpgauge_level, magical_skill_boost, magical_skill_boost_resist
from 
npcs_client_npcs_npc tbl
union all
select distinct desc, hpgauge_level, magical_skill_boost, magical_skill_boost_resist
from 
npcs_client_npcs_abyss_monster tbl
union all
select distinct desc, hpgauge_level, magical_skill_boost, magical_skill_boost_resist
from 
npcs_client_npcs_std_monster tbl
union all
select distinct desc, hpgauge_level, magical_skill_boost, magical_skill_boost_resist
from 
npcs_client_npcs_test_monster tbl
),
str as 
(
select name, body from eng_data_strings_client_strings_monster str
union all
select name, body from eng_data_strings_client_strings_npc str
)

select distinct 
coalesce(body, desc) name, 
case 
        when hpgauge_level = 1 then 'Common 0'
        when hpgauge_level = 2 then 'Common 1'
        when hpgauge_level = 3 then 'Common 2'
        when hpgauge_level = 4 then 'Common 4'
        when hpgauge_level = 5 then 'Common 5'
        when hpgauge_level = 10 then 'Elite 1'
        when hpgauge_level = 11 then 'Elite 2'
        when hpgauge_level = 12 then 'Elite 3'
        when hpgauge_level = 13 then 'Elite 4'
        when hpgauge_level = 14 then 'Elite 5'
        when hpgauge_level = 20 then 'Ultimate 1'
        when hpgauge_level = 21 then 'Ultimate 2'
        when hpgauge_level = 22 then 'Ultimate 3'
        when hpgauge_level = 25 then 'Legendary 0'
        when hpgauge_level = 26 then 'Legendary 1'
        when hpgauge_level = 27 then 'Legendary 2'
        else hpgauge_level
end grade, 
magical_skill_boost_resist from tbl
left outer join
 str
on tbl.desc = str.name


where magical_skill_boost_resist > 0
order by cast(hpgauge_level as number) desc, body  
--where hpgauge_level = 10
/*
3
4
5
2
13
10
11
1
14
20
12
26
22
21
27
25
*/