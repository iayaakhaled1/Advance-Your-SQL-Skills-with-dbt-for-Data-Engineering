select * from {{ ref("taxi_data") }} where dropoff_borough != pickup_borough
