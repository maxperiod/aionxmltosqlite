create index index_strings
on strings (folder, name);


drop table if exists _ENGLISH_STRINGS_NA_EU_XREF;
CREATE TABLE _ENGLISH_STRINGS_NA_EU_XREF
AS

WITH client_strings_NA AS (
SELECT file, name, upper(name) upper_name, body FROM strings
where folder like '/ENU%'
),
client_strings_EU AS (
SELECT file, name, upper(name) upper_name, body FROM strings
where folder like '/ENG%'
),
full_join as (
select na.file, na.name na_name, eu.name eu_name, na.upper_name na_upper_name, eu.upper_name eu_upper_name, na.body na_body, eu.body eu_body

from client_strings_NA na
LEFT JOIN client_strings_EU eu
ON na.upper_name = eu.upper_name

UNION 

select eu.file, na.name na_name, eu.name eu_name, na.upper_name na_upper_name, eu.upper_name eu_upper_name, na.body na_body, eu.body eu_body

from client_strings_EU eu
LEFT JOIN client_strings_NA na
ON na.upper_name = eu.upper_name
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