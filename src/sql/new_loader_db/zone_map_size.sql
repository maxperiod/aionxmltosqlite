with subzoneminmax as (
with minmax as (
select 
file, 
min(cast(x as number)) minx, 
max(cast(x as number)) maxx, 
min(cast(y as number)) miny, 
max(cast(y as number)) maxy
from clientzones_subzones_points_info_points
group by file
)
select 
lower(substr(file, 14, length(file) - 17)) zonename,
*,
round(maxx - minx, 6) subzoned_width,
round(maxy - miny, 6) subzoned_height
from minmax
)


SELECT 
names.body,
zonemaps.name,
zonemaps.world_width,
zonemaps.world_height,
subzoneminmax.subzoned_width,
subzoneminmax.subzoned_height

FROM zonemaps
left join _ENGLISH_STRINGS_NA_EU_XREF names
on 'STR_ZONE_NAME_'||upper(zonemaps.name) = names.upper_name

left join subzoneminmax
on lower(zonemaps.name) = subzoneminmax.zonename

;

