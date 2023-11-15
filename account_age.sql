with

tbl1 as (

select 
playerid,
assignment_date,
install_date,
EXTRACT(YEAR FROM CURRENT_DATE()) - EXTRACT(YEAR FROM CAST(install_date AS DATE)) as account_age,
conversion_date
from king-ds-recruit-candidate-914.abtest.assignment
)

select
account_age,
count(*) as tbl_ct
from tbl1
group by 1
