--begin;
/*
DROP TABLE IF EXISTS _MSG_CODE_TO_STRING;

CREATE TABLE _MSG_CODE_TO_STRING AS 
*/
/*SELECT id, name, body FROM client_strings_bm
UNION ALL*/
SELECT /*id,*/ name, body FROM strings
where folder like ?
and (/*
    (
        file = 'client_strings_bmrestrict.xml' 
        and name LIKE '%F2P_GET_EXP%'
    )
    or */
    (
        file = 'client_strings_msg.xml' 
        AND name not like 'STR\_ID%' escape '\'
        AND name not like 'STR\_MSG\_ID%' escape '\'
        AND name not like 'STR\_MSG\_GUILD%' escape '\'
        AND name not like 'STR\_MSG\_1221%' escape '\'
        AND name not like 'STR\_MSG\_1231%' escape '\'
        AND name not like 'STR\_MSG\_1241%' escape '\'
        AND name not like 'STR\_MSG\_2011%' escape '\'
        AND name not like 'STR\_MSG\_2021%' escape '\'
        AND name not like 'STR\_MSG\_3011%' escape '\'
        AND name not like 'STR\_MSG\_3021%' escape '\'
        AND name not like 'STR\_MSG\_5011%' escape '\'
        AND name not like 'STR\_MSG\_6011%' escape '\'
        AND name not like 'STR\_MSG\_Dreadgion%' escape '\'
        AND name not like 'STR\_MSG\_Ab1%' escape '\'
        AND name not like 'STR\_MSG\_GAB1%' escape '\'
        AND name not like 'STR\_MSG\_ShugoShip%' escape '\'
        AND name not like 'STR\_MSG\_LF4%' escape '\'
        AND name not like 'STR\_MSG\_LF5%' escape '\'
        AND name not like 'STR\_MSG\_LF6%' escape '\'
        AND name not like 'STR\_MSG\_DF4%' escape '\'
        AND name not like 'STR\_MSG\_DF5%' escape '\'
        AND name not like 'STR\_MSG\_DF6%' escape '\'
        AND name not like 'STR\_MSG\_LDF4%' escape '\'
        AND name not like 'STR\_MSG\_LDF5%' escape '\'
        AND body not like '%'||CHAR(10)||'%'
        
    )
    or (
        file = 'client_strings_ui.xml'
        and (
            SUBSTR(name, 1, 15) = 'STR_CLASS_NAME_'
            OR SUBSTR(name, 1, 29) = 'STR_SKILL_EFFECT_MSG_CRITICAL'
            OR SUBSTR(name, 1, 11) = 'STR_UNKNOWN'
            OR SUBSTR(name, 1, 29) = 'STR_INTERSERVER_ORIGINAL_NAME'
            OR name LIKE 'STR_INTERSERVER_%_NAME'
            OR name LIKE 'STR_INSTANCE_DUNGEON_%_SERVER'
        )
    )
    or (
        file = 'client_strings_level.xml'
        and name like 'STR\_ZONE\_NAME\_%' escape '\'
        and (
            name in (
                SELECT 'STR_ZONE_NAME_'||name from zonemaps
            )
            or name like 'STR_ZONE_NAME_IDArena%' escape '\'
        )
    )
)
    
;

