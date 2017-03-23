with zones_with_name as (
    with zones as (
        
        --select distinct upper(substr(file, 14, length(file) - 17)) zone,
        --length(file) - 17 string_length        
        --from clientzones_subzones
        select upper(name) zone--,
        --length(name) string_length        
        from zonemaps
        
        union 
        
        select distinct 
        upper(substr(name, 15)) zone--,
        --length(name - 15) string_length
        from strings
        where name like 'STR_ZONE_NAME_%'
        
    )
    select zones.*, 
    --str.body,
    length(zone) string_length,
    case when instr(zone, '_') > 0 
        then instr(zone, '_') - 1 
        else length(zone)
    end first_underscore
    from zones
    /*left outer join
    _ENGLISH_STRINGS_NA_EU_XREF str
    on 'STR_ZONE_NAME_'||zones.zone = str.upper_name
    */
),
mob_zone as (
    with mob_zone_base as (
        select name,        
        upper(coalesce(
            substr(zonesnpc.file, 14, length(zonesnpc.file) - 17),
            zones_with_name.zone
        )) zone
        --zones_with_name.string_length
        from npc_clients
        
        left join zones_with_name
        on substr(upper(npc_clients.name), 1, zones_with_name.string_length) = zones_with_name.zone
        and instr(npc_clients.name, '_') - 1 = zones_with_name.first_underscore
        
        left join clientzones_npc_infos zonesnpc
        on npc_clients.id = zonesnpc.nameid
    ),
    mob_zone_string_length as (
        select 
        name,
        length(zone) zone_length
        from mob_zone_base
        
    ),
     max_mob_zone_string_length as (
        select 
        name,
        max(zone_length) max_zone_length
        from mob_zone_string_length 
        group by name   
    )
    --select * from mob_zone_string_length
    
    select distinct mob_zone_base.*,
    body
    from mob_zone_base
    
    join max_mob_zone_string_length
    on mob_zone_base.name = max_mob_zone_string_length.name
    and length(mob_zone_base.zone) = max_mob_zone_string_length.max_zone_length
    
    left outer join
    _ENGLISH_STRINGS_NA_EU_XREF str
    on 'STR_ZONE_NAME_'||mob_zone_base.zone = str.upper_name
    
)
--select * from mob_zone

select distinct 
tbl.name,
--mob_zone.zone,
--substr(upper(tbl.name), 1, instr(tbl.name, '_') - 1),
coalesce(str.body, desc) mob_name, 
magical_skill_boost_resist magic_suppression,
mob_zone.body map,
--zones_with_name.string_length,
--max(zones_with_name.string_length) max_string_length,
--instr(tbl.name, '_') - 1,
--zones_with_name.body estimate_zone,

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
        when hpgauge_level = 15 then 'Elite 6'
        when hpgauge_level = 20 then 'Ultimate 1'
        when hpgauge_level = 21 then 'Ultimate 2'
        when hpgauge_level = 22 then 'Ultimate 3'
        when hpgauge_level = 25 then 'Legendary 0'
        when hpgauge_level = 26 then 'Legendary 1'
        when hpgauge_level = 27 then 'Legendary 2'
        else hpgauge_level
end grade, 

ui_type
from npc_clients tbl
left outer join
_ENGLISH_STRINGS_NA_EU_XREF str
on upper(tbl.desc) = str.upper_name
--where hpgauge_level in (15, 25)

join npc_uis
on lower(tbl.ui_type) = lower(npc_uis.name)
and (npc_uis.ui_hpgauge = 1 or npc_uis.click_hpgauge = 1)

left join mob_zone
on tbl.name = mob_zone.name

left join zones_with_name
on mob_zone.name = zones_with_name.zone
--on substr(upper(tbl.name), 1, zones_with_name.string_length) = zones_with_name.zone
--and instr(tbl.name, '_') - 1 = zones_with_name.first_underscore




where magical_skill_boost_resist > 0
--and tbl.name like 'ID%'
--and (lower(tbl.name) like 'ab1%' or lower(tbl.name) like 'gab1%')
--and tbl.name not like 'ID%' and lower(tbl.name) not like 'ab1%' and lower(tbl.name) not like 'gab1%'
--and grade like 'Ultimate%'
--order by cast(hpgauge_level as number) desc, upper(tbl.name), str.body  
--group by name, 

order by  /*coalesce(map, 'zzz'), substr(upper(tbl.name), 1, instr(tbl.name, '_') - 1),*/ cast(hpgauge_level as number) desc,  str.body, upper(tbl.name)
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