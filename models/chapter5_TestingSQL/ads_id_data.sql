{{ config(materialized='view') }}

with source as (
    select * from {{ source('dbt_database','raw_ads_id') }}
)

select adid, latitude, longitude, city, eventdate, cohort from source