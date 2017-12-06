select 
id,
str.body,
level
from client_items items

left join _ENGLISH_STRINGS_NA_EU_XREF str
on upper(items.desc) = str.upper_name

where equipment_slots is not null or weapon_type is not null
order by cast(level as number) desc