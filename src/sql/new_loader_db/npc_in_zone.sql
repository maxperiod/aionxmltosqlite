SELECT 
zones.folder, 
substr(zones.file, 14, length(zones.file) - 17) zone, 
zones.maxperiod_insertion_order, 
movetype, 
nameid, 
npc_clients.name,
strings.body,
npc_clients.hpgauge_level,
condition_info, 
select_prob, 
pos_x, 
pos_y, 
pos_z, 
abyss_info, 
spawn_country, 
spawn_version 
FROM clientzones_npc_infos zones

LEFT JOIN npc_clients
ON zones.nameid = npc_clients.id

LEFT JOIN _ENGLISH_STRINGS_NA_EU_XREF strings
on upper(npc_clients.desc) = strings.upper_name

--where movetype = 'true'