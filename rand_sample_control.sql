#standardSQL

with

tbl1 as (

select
playerid, 
case 
  when abtest_group = 'A' then 'control_group'
  when abtest_group = 'B' then 'test_group' end as group_category,
from king-ds-recruit-candidate-914.abtest.assignment 
)

select *
from tbl1
where rand() <= .3
AND group_category = 'control_group'
limit 385
