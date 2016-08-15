select 
category1,
sum(reward_exp1 * case when max_repeat_count = 255 then 0 else max_repeat_count end)
from quest
where race_permitted like '%pc_light%'
and (class_permitted like '%warrior%' or class_permitted like '%knight%')
and minlevel_permitted <= 74
group by category1
having sum(reward_exp1 * case when max_repeat_count = 255 then 0 else max_repeat_count end) > 0

select 
category1,
sum(reward_exp1 * case when max_repeat_count = 255 then 0 else max_repeat_count end)
from quest
where race_permitted like '%pc_dark%'
and (class_permitted like '%warrior%' or class_permitted like '%knight%')
and minlevel_permitted <= 74
group by category1
having sum(reward_exp1 * case when max_repeat_count = 255 then 0 else max_repeat_count end) > 0


select 
sum(reward_exp1 * case when max_repeat_count = 255 then 0 else max_repeat_count end)
from quest
where race_permitted like '%pc_light%'
and (class_permitted like '%warrior%' or class_permitted like '%knight%')
and minlevel_permitted <= 74
and coalesce(category1, '') <> 'significant'

select 
sum(reward_exp1 * case when max_repeat_count = 255 then 0 else max_repeat_count end)
from quest
where race_permitted like '%pc_dark%'
and (class_permitted like '%warrior%' or class_permitted like '%knight%')
and minlevel_permitted <= 74
and coalesce(category1, '') <> 'significant'


select str.body, quest.* 
from quest
left join client_strings_quest str
on str.name = upper(quest.desc)
where race_permitted like '%pc_light%'
and minlevel_permitted <= 74
and max_repeat_count <> 255
order by cast(reward_exp1 as number) desc

and category1 not in ('important', 'quest', 'mission')