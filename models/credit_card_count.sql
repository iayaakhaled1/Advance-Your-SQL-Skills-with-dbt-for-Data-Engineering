select
   fare , 
   count(*) as total_fares_paid_by_credit_card
from {{ ref("taxi_data") }} where payment = 'credit card'
GROUP BY fare