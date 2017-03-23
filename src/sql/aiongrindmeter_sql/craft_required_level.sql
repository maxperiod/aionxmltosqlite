with gatherables as (

SELECT combineskill, required_skillpoint, product FROM client_combine_recipes
where product is not null
union all
SELECT combineskill, required_skillpoint, combo1_product FROM client_combine_recipes
where combo1_product is not null

union all
SELECT combineskill, required_skillpoint, combo2_product FROM client_combine_recipes
where combo2_product is not null

union all
SELECT combineskill, required_skillpoint, combo3_product FROM client_combine_recipes
where combo3_product is not null

union all
SELECT combineskill, required_skillpoint, combo4_product FROM client_combine_recipes
where combo4_product is not null

)

select distinct gatherables.combineskill, coalesce(body, gatherables.product) body, required_skillpoint
from gatherables
left outer join
client_items
on gatherables.product = client_items.name
inner join
strings
on client_items.desc = strings.name
and strings.folder like ?

where gatherables.combineskill <> 'convert'
--select distinct success_adj, failure_adj, aerial_adj from gather_src;
order by gatherables.combineskill, body, required_skillpoint


