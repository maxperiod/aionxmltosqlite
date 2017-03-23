with numbers as (
    select 1.0 value
    union all
    select max(value) + 1 from numbers
    group by value having value < 500
)

SELECT 
--id, 
--name, 
cast(numbers.value as integer) CP,
--stat1_name, 
cast(round((stat1_a * numbers.value) / (stat1_b + numbers.value)) as integer) phyAttack,
--stat2_name, 
cast(round((stat2_a * numbers.value) / (stat2_b + numbers.value)) as integer) physicaldefend/*,
stat3_name, 
cast(round((stat3_a * numbers.value) / (stat3_b + numbers.value)) as integer) MagicalHitAccuracy,
stat4_name, 
cast(round((stat4_a * numbers.value) / (stat4_b + numbers.value)) as integer) Phy_defense
*/

FROM client_highdeva_first_stats stats
cross join numbers
where name = 'HSTR'
;



with numbers as (
    select 1.0 value
    union all
    select max(value) + 1 from numbers
    group by value having value < 500
)

SELECT 
--id, 
--name, 

cast(numbers.value as integer) CP,
--stat1_name, 
cast(round((stat1_a * numbers.value) / (stat1_b + numbers.value)) as integer) MaxHP,
--stat2_name, 
cast(round((stat2_a * numbers.value) / (stat2_b + numbers.value)) as integer) hpRegen,
--stat3_name, 
cast(round((stat3_a * numbers.value) / (stat3_b + numbers.value)) as integer) Block/*,
stat4_name, 
cast(round((stat4_a * numbers.value) / (stat4_b + numbers.value)) as integer) PhysicalCriticalReduceRate*/

FROM client_highdeva_first_stats stats
cross join numbers
where name = 'HVIT'
;


with numbers as (
    select 1.0 value
    union all
    select max(value) + 1 from numbers
    group by value having value < 500
)

SELECT 
--id, 
--name, 

cast(numbers.value as integer) CP,
--stat1_name, 
cast(round((stat1_a * numbers.value) / (stat1_b + numbers.value)) as integer) dodge,
--stat2_name, 
cast(round((stat2_a * numbers.value) / (stat2_b + numbers.value)) as integer) parry,
--stat3_name, 
cast(round((stat3_a * numbers.value) / (stat3_b + numbers.value)) as integer) concentration,
--stat4_name, 
cast(round((stat4_a * numbers.value) / (stat4_b + numbers.value)) as integer) PhysicalCriticalReduceRate

FROM client_highdeva_first_stats stats
cross join numbers
where name = 'HDEX'
;


with numbers as (
    select 1.0 value
    union all
    select max(value) + 1 from numbers
    group by value having value < 500
)

SELECT 
--id, 
--name, 

cast(numbers.value as integer) CP,
--stat1_name, 
cast(round((stat1_a * numbers.value) / (stat1_b + numbers.value)) as integer) Critical,
--stat2_name, 
cast(round((stat2_a * numbers.value) / (stat2_b + numbers.value)) as integer) hitAccuracy,
--stat3_name, 
cast(round((stat3_a * numbers.value) / (stat3_b + numbers.value)) as integer) MagicalHitAccuracy/*,
stat4_name, 
cast(round((stat4_a * numbers.value) / (stat4_b + numbers.value)) as integer) Phy_defense*/

FROM client_highdeva_first_stats stats
cross join numbers
where name = 'HAGI'
;


with numbers as (
    select 1.0 value
    union all
    select max(value) + 1 from numbers
    group by value having value < 500
)

SELECT 
cast(numbers.value as integer) CP,
--stat1_name, 
cast(round((stat1_a * numbers.value) / (stat1_b + numbers.value)) as integer) Magicalskillboost,
--stat2_name, 
cast(round((stat2_a * numbers.value) / (stat2_b + numbers.value)) as integer) MagicalCritical,
--stat3_name, 
cast(round((stat3_a * numbers.value) / (stat3_b + numbers.value)) as integer) MagicalSkillBoostResist/*,
stat4_name, 
cast(round((stat4_a * numbers.value) / (stat4_b + numbers.value)) as integer) PhysicalCriticalReduceRate*/

FROM client_highdeva_first_stats stats
cross join numbers
where name = 'HKNO'
;


with numbers as (
    select 1.0 value
    union all
    select max(value) + 1 from numbers
    group by value having value < 500
)

SELECT 
--id, 
--name, 

cast(numbers.value as integer) CP,
--stat1_name, 
cast(round((stat1_a * numbers.value) / (stat1_b + numbers.value)) as integer) MaxMP,
--stat2_name, 
cast(round((stat2_a * numbers.value) / (stat2_b + numbers.value)) as integer) mpRegen,
--stat3_name, 
cast(round((stat3_a * numbers.value) / (stat3_b + numbers.value)) as integer) MagicalCriticalReduceRate,
--stat4_name, 
cast(round((stat4_a * numbers.value) / (stat4_b + numbers.value)) as integer) MagicalResist

FROM client_highdeva_first_stats stats
cross join numbers
where name = 'HWIL'
;


