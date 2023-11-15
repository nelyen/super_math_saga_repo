select 
case 
  when abtest_group = 'A' then 'control_group'
  when abtest_group = 'B' then 'test_group' end as group_category,
count(playerid) as player_count
from king-ds-recruit-candidate-914.abtest.assignment 
group by 1
