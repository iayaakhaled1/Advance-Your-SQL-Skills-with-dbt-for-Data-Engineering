select * 
from {{ ref("taxi_data") }} 
where distance > 9
