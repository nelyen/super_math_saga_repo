#standardSQL
-- control_group: 8,265,610 (80%)
-- test_group: 2,065,446 (20%)

select 
case 
  when ast.abtest_group = 'A' then 'control_group'
  when ast.abtest_group = 'B' then 'test_group' end as group_category,
count(ast.playerid) as player_count,  
sum(case when a.purchases >= 1 THEN 1 end) as paid_purchase_ct,
round(sum(case when a.purchases >= 1 THEN 1 end) / count(ast.playerid),3) as paid_purchase_rate,
sum(case when a.purchases = 0 THEN 1 end) as free_purchase_ct,
round(sum(case when a.purchases = 0 THEN 1 end) / count(ast.playerid),3) as free_purchase_rate

from king-ds-recruit-candidate-914.abtest.assignment as ast
  join king-ds-recruit-candidate-914.abtest.activity as a
  on a.playerid = ast.playerid

group by 1
