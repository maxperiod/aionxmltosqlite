drop index if exists index_strings;

create index index_strings
on strings (folder, name);

drop table if exists _strings_upper_name;
create table _strings_upper_name as
SELECT folder, file, name, upper(name) upper_name, body FROM strings
;
/*
drop table if exists _client_strings_NA;
drop table if exists _client_strings_EU;

create temp table _client_strings_NA as
SELECT file, name, upper(name) upper_name, body FROM strings
    where folder like '/ENU%'
;
create temp table _client_strings_EU as
SELECT file, name, upper(name) upper_name, body FROM strings
    where folder like '/ENG%'
;
*/

drop index if exists index_strings_upper_name;

create index index_strings_upper_name
on _strings_upper_name (folder, upper_name);

drop table if exists _ENGLISH_STRINGS_NA_EU_XREF;
CREATE TABLE _ENGLISH_STRINGS_NA_EU_XREF
AS
with full_join as (
   
    select na.file, na.name na_name, eu.name eu_name, na.upper_name na_upper_name, eu.upper_name eu_upper_name, na.body na_body, eu.body eu_body
    
    from _strings_upper_name na
    LEFT JOIN _strings_upper_name eu
    ON na.upper_name = eu.upper_name
    where na.folder like '/ENU%' and eu.folder like '/ENG%'
    
    UNION
    
    select eu.file, na.name na_name, eu.name eu_name, na.upper_name na_upper_name, eu.upper_name eu_upper_name, na.body na_body, eu.body eu_body
    
    from _strings_upper_name eu
    LEFT JOIN _strings_upper_name na
    ON na.upper_name = eu.upper_name
    where na.folder like '/ENU%' and eu.folder like '/ENG%'
)

select 
file, 
coalesce(na_name, eu_name) name,
coalesce(na_upper_name, eu_upper_name) upper_name,
na_body,
eu_body,
case when coalesce(na_body, na_name) = coalesce(eu_body, eu_name) then coalesce(na_body, na_name, eu_name)
    when coalesce(na_body, na_name, eu_name) <> coalesce(eu_body, eu_name, na_name) then coalesce(na_body, na_name, eu_name) || ' / ' || coalesce(eu_body, eu_name, na_name)
end body
from full_join
;

create index index_ENGLISH_STRINGS_NA_EU_XREF
on _ENGLISH_STRINGS_NA_EU_XREF (upper_name)
;