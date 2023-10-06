
    with cte as (
        select cohort , count(*) as total_rows 
        from {{ ref('ads_id_data')}}
        group by cohort) 
    SELECT * FROM cte
    where total_rows > 100
