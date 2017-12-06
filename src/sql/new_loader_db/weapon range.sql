

select distinct
weapon_type,
hit_count,
attack_range,
attack_gap,
count(*)
from client_items items
where weapon_type is not null
group by 1,2,3,4
order by weapon_type, hit_count desc, attack_range desc
;



select distinct
str.body,
weapon_type,
hit_count,
attack_range,
attack_gap
from client_items items
left join 
_ENGLISH_STRINGS_NA_EU_XREF str
on upper(items.desc) = str.upper_name
where weapon_type is not null
order by weapon_type, hit_count desc, attack_range desc