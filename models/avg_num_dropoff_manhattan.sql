select avg(passengers) as avg_num_of_passengers
from {{ ref("taxi_data") }}
where dropoff_borough = 'Manhattan'
