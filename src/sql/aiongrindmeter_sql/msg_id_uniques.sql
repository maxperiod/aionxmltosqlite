select distinct name, id from strings
where file in (
'client_strings_level.xml',
'client_strings_msg.xml',
'client_strings_ui.xml'
)
and trim(name) <> ''
/*and id not in (
select id from strings
where file in (
'client_strings_level.xml',
'client_strings_msg.xml',
'client_strings_ui.xml'
)
group by folder, id having count(*) > 1
)*/
;
