select *  from t_jobcate

alter table t_jobcate rename column hotid to name_tmp;
alter table t_jobcate add hotid varchar2(60);
update t_jobcate set hotid=trim(name_tmp);
alter table t_jobcate drop column name_tmp;
select * from(select * from t_jobcate) tjc left join t_jobcate tjp on tjc.parentid = tjp.id


select 
       tjp.id as id, tjp.name as name, tjp.parentId as parentId, 
       tjp.hotid as hotid , tjp.type as type, tjc.id as c_id,
       tjc.name as c_name, tjc.parentid as c_parentId, tjc.hotid as c_hotid,
       tjc.type as c_type 
from( 
       select 
                tj.id as id, tj.name as name, 
                tj.parentId as parentId, 
                tj.hotid as hotid , 
                tj.type as type 
       from t_jobcate tj where type= 1) tjp left join t_jobcate tjc on tjp.id = tjc.hotid

















---查询一级类别及该大类的热门推荐     
select 
    tj1.id as id,
    tj1.name as name,
    tj1.parentId as parentId,
    tj1.hotid as hotid ,
    tj1.type as type,
    tjh.id as c_id,
    tjh.name as c_name,
    tjh.parentid as c_parenhtId,
    tjh.hotid as c_hotid,
    tjh.type c_type         
from(select


         tj.id as id,
         tj.name as name,
         tj.parentId as parentId,
         tj.hotid as hotid ,
         tj.type as type
from t_jobcate tj where type= 1) tj1
left join t_jobcate tjh on tj1.id = tjh.hotid


select  
    tjp.id as id,
    tjp.name as name,
    tjp.parentId as parentId,
    tjp.hotid as hotid ,
    tjp.type as type,
    tjc.id as c_id,
    tjc.name as c_name,
    tjc.parentid as c_parenhtId,
    tjc.hotid as c_hotid,
    tjc.type c_type   
from (
select 
         tj.id as id,
         tj.name as name,
         tj.parentId as parentId,
         tj.hotid as hotid ,
         tj.type as type
 from t_jobcate tj where parentid = 1) tjp left join t_jobcate tjc on tjp.id = tjc.parentid




        

