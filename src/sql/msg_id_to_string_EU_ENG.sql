--begin;

DROP TABLE IF EXISTS _MSG_CODE_TO_STRING_EU_ENG;

CREATE TABLE _MSG_CODE_TO_STRING_EU_ENG AS 

/*SELECT id, name, body FROM client_strings_bm
UNION ALL
SELECT id, name, body FROM extract_l10n_ENG_Data_Strings_client_strings_bmrestrict
WHERE name LIKE '%F2P_GET_EXP%'
UNION ALL
SELECT id, name, body FROM client_strings_dic_etc
UNION ALL
SELECT id, name, body FROM client_strings_dic_item
UNION ALL       
SELECT id, name, body FROM client_strings_dic_monster
UNION ALL
SELECT id, name, body FROM client_strings_dic_people
UNION ALL
SELECT id, name, body FROM client_strings_dic_place
UNION ALL
SELECT id, name, body FROM client_strings_etc
UNION ALL
SELECT id, name, body FROM client_strings_funcpet
UNION ALL
SELECT id, name, body FROM client_strings_gossip
UNION ALL
SELECT id, name, body FROM client_strings_item
UNION ALL
SELECT id, name, body FROM client_strings_item2
UNION ALL
SELECT id, name, body FROM client_strings_item3
UNION ALL
SELECT id, name, body FROM client_strings_level
UNION ALL
SELECT id, name, body FROM client_strings_monster
UNION ALL*/
SELECT id, name, body FROM ENG_Data_Strings_client_strings_msg
WHERE name not like 'STR\_MSG\_ID%' escape '\'
AND body not like '%'||CHAR(10)||'%'
/*UNION ALL
SELECT id, name, body FROM client_strings_npc
UNION ALL
SELECT id, name, body FROM client_strings_quest
UNION ALL
SELECT id, name, body FROM client_strings_skill
*/
UNION ALL
SELECT id, name, body FROM ENG_Data_Strings_client_strings_ui
WHERE 
(SUBSTR(name, 1, 15) = 'STR_CLASS_NAME_'
OR SUBSTR(name, 1, 29) = 'STR_SKILL_EFFECT_MSG_CRITICAL'
OR SUBSTR(name, 1, 11) = 'STR_UNKNOWN'
OR SUBSTR(name, 1, 29) = 'STR_INTERSERVER_ORIGINAL_NAME'
OR name LIKE 'STR_INTERSERVER_%_NAME'
OR name LIKE 'STR_INSTANCE_DUNGEON_%_SERVER'
)
;


--commit;