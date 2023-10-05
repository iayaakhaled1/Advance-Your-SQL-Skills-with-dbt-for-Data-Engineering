{{ config(
    materialized='incremental',
    primary_key= 'currency_day_key'
) }}

with source as (

    select * from {{ source('dbt_database','raw_crypto_data') }}

) , 
renamed as (
    SELECT 
    CONCAT(currency, '_', replace(detail_date,'/','')) AS currency_day_key,
    currency,
    detail_date,
    closing_price,
    `24_hour_open`as h24_hour_open,
    `24h_high_usd` as h24_high_usd,
    `24h_low_usd` as h24_low_usd
    from source
)

select *
from renamed

{% if is_incremental() %}

where currency_day_key > (select max(currency_day_key) from {{ source('dbt_database','raw_crypto_data') }})

{% endif %}