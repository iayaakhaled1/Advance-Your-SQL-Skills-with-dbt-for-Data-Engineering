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
where job_id in (398, 417,401,332,329,340,366,373,376,423)

