set hive.execution.engine=tez;
set tez.queue.name=q1;

drop table comp_staging.tbl;
create table comp_staging.tbl
stored as orc tblproperties('orc.compress' = 'SNAPPY') as
select 
cast(some_num as int) as itm_id,
min(cast(psm_attri_val as int)) as aaa
from db2.tbl2
where some_dt in (select max(some_dt) as some_dt from db2.tbl2)
group by some_num;
