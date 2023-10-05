{{ config(materialized="view") }}

with
    excavator_id_cte as (

        select excavator_id
        from {{ ref("excavators") }}
        where
            oil_level != 'P'
            or air_filter != 'P'
            or coolant_level != 'P'
            or hydraulic_valves != 'P'

    )
select job_id, excavator_id
from {{ ref("jobs") }}
inner join excavator_id_cte 
using (excavator_id) 
where job_id = 398

union all

select job_id, excavator_id
from {{ ref("jobs") }}
inner join excavator_id_cte using (excavator_id) WHERE job_id = 417

union all

select job_id, excavator_id
from {{ ref("jobs") }}
inner join excavator_id_cte using (excavator_id) WHERE job_id = 401

union all

select job_id, excavator_id
from {{ ref("jobs") }}
inner join excavator_id_cte using (excavator_id) WHERE job_id = 332

union all

select job_id, excavator_id
from {{ ref("jobs") }}
inner join excavator_id_cte using (excavator_id) WHERE job_id = 329

union all

select job_id, excavator_id
from {{ ref("jobs") }}
inner join excavator_id_cte using (excavator_id) WHERE job_id = 340

union all
select job_id, excavator_id
from {{ ref("jobs") }}
inner join excavator_id_cte using (excavator_id) WHERE job_id = 366

union all

select job_id, excavator_id
from {{ ref("jobs") }}
inner join excavator_id_cte using (excavator_id) WHERE job_id = 373

union all

select job_id, excavator_id
from {{ ref("jobs") }}
inner join excavator_id_cte using (excavator_id) WHERE job_id = 376

union all

select job_id, excavator_id
from {{ ref("jobs") }}
inner join excavator_id_cte using (excavator_id) WHERE job_id = 423