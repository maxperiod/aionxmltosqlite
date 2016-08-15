with gatherables as (
SELECT harvestskill, skill_level, material1, aerial_adj
FROM gather_src
where material1 is not null
union all
SELECT harvestskill, skill_level, material2, aerial_adj
FROM gather_src
where material2 is not null
union all
SELECT harvestskill, skill_level, material3, aerial_adj
FROM gather_src
where material3 is not null
union all
SELECT harvestskill, skill_level, material4, aerial_adj
FROM gather_src
where material4 is not null
union all
SELECT harvestskill, skill_level, material5, aerial_adj
FROM gather_src
where material5 is not null
union all
SELECT harvestskill, skill_level, material6, aerial_adj
FROM gather_src
where material6 is not null
union all
SELECT harvestskill, skill_level, material7, aerial_adj
FROM gather_src
where material7 is not null
union all
SELECT harvestskill, skill_level, material8, aerial_adj
FROM gather_src
where material8 is not null
),
strings as
(
SELECT name, body
FROM client_strings_item
union all
SELECT name, body
FROM client_strings_item2
union all
SELECT name, body
FROM client_strings_item3
),
items as 
(
SELECT name, desc
FROM client_items_misc
union all
SELECT name, desc
FROM client_items_etc
union all
SELECT name, desc
FROM client_items_armor
)

select distinct harvestskill, skill_level, body, aerial_adj
from gatherables
left outer join
items
on gatherables.material1 = items.name
left outer join
strings
on items.desc = strings.name

--select distinct success_adj, failure_adj, aerial_adj from gather_src;


