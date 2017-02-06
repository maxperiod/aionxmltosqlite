select skill_group_name, class, skill, effect1_reserved2, effect1_reserved13, effect1_type ,effect1_reserved9 from 
_SKILLS_WITH_NAME_NORMALIZED

where activation_attribute = 'Passive'
and class is not null
order by class, skill_group_name