with gatherables as (

SELECT combineskill, required_skillpoint, product FROM client_combine_recipe
where product is not null
union all
SELECT combineskill, required_skillpoint, combo1_product FROM client_combine_recipe
where combo1_product is not null

union all
SELECT combineskill, required_skillpoint, combo2_product FROM client_combine_recipe
where combo2_product is not null

union all
SELECT combineskill, required_skillpoint, combo3_product FROM client_combine_recipe
where combo3_product is not null

union all
SELECT combineskill, required_skillpoint, combo4_product FROM client_combine_recipe
where combo4_product is not null

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

select distinct combineskill, required_skillpoint, body
from gatherables
left outer join
items
on gatherables.product = items.name
left outer join
strings
on items.desc = strings.name
where combineskill <> 'convert'
--select distinct success_adj, failure_adj, aerial_adj from gather_src;


