{{ config(materialized='view') }}

with source as (
    select * from {{ source('dbt_database','raw_jobs') }}
)

select job_id, excavator_id, city, manager from source