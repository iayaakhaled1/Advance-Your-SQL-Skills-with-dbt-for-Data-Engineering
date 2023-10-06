
select *
from {{ source('dbt_database', 'raw_taxi_trips') }}