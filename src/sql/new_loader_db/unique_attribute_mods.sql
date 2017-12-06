select distinct attr from (
select (lower(bonus_attr_type)) attr from  _gear_stats
union all
select (lower(effect)) attr from _SKILL_STAT_BUFF_DEBUFF
)



select * from client_items items
join _gear_stats stats
on items.id = stats.id
where lower(bonus_attr_type) in ('hiddenpveattackratio', 'hiddenpvedefendratio')


select * from skill_base_clients skills
join _SKILL_STAT_BUFF_DEBUFF stats
on skills.id = stats.id
where lower(effect) in ('hiddenpveattackratio', 'hiddenpvedefendratio')
