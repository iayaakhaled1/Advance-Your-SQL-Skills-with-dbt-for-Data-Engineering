## Challenge: Materializations
#### Let's put our knowledge about all things materializations to practice and help a fictional version of our crypto company above.
-  This project contains a data set of crypto data over a fixed period of time. It includes data across Bitcoin,
 Ethereum and a few other coins. 
 1) To get started run DBT Seed, to seed the raw crypto data table with the necessary information. 
 - Once the seed command has successfully run, you should be able to navigate SQL tools, open up the chapter three database, 
 2) For this challenge, update the materialization strategies for each of the models to ensure that 
  the most appropriate strategy is selected.


## Important notes 
Below is the original code to generate the model, but it includes many errors 
```
-- crypto_data: Update the materialization to ensure the best strategy is selected

{{ config(materialized='incremental') }}

with source as (

    select * from {{ ref('raw_crypto_data') }}

)

select currency, detail_date, closing_price, 24_hour_open, 24h_high_usd, 24h_low_usd from source

{% if is_incremental() %}

where detail_date > (select max(detail_date) from {{ this }})

{% endif %}
```

- The main problem with the crypto_data model you have provided is that it is not using the primary key that was specified in the config block. The config block specifies that the primary key is currency_day_key, but the where clause in the {% if is_incremental() %} block is filtering on the detail_date column.

- To fix this problem, you need to change the where clause in the {% if is_incremental() %} block to filter on the currency_day_key column. Here is a corrected version of the crypto_data model:

```{{ config(
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

{% endif %}```