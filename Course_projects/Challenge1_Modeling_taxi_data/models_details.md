## Step1) Define the source 

### What are dbt sources?
- Sources make it possible to reference data objects in a dbt project structure.
- By declaring tables as sources in dbt, you can directly reference them in your models, test assumptions about source data,
- and calculate “freshness” (the recency of loaded data).
- Sources are defined in yaml files, a format common in dbt, nested under a sources key.

![image](https://github.com/iayaakhaled1/Advance-Your-SQL-Skills-with-dbt-for-Data-Engineering/assets/145045777/d9e9a605-06e8-4b70-be42-5b2ba1e626b2)

- Name: refers to the schema in bigquery ( or other cloud providers )
- Table: refers to the table name


## Step2) Create dbt models 
1) First, create a new model called over_nine_miles.sql which generates a table that contains all the columns of the source data with only the taxi trips with a distance of over nine miles. 
2) Second, create a new model called credit_card_count.sql that contains a breakdown of the fares paid by credit card. 
3) Third, create a new model called cross_borough.sql which generates a table that contains all of the columns of the source data with only the trips which start in one borough and end in a different borough. 
4) Fourth, create a new model called avg_num_dropoff_manhattan.sql which contains the average number of passengers on all trips with a drop-off borough that is in Manhattan. For each of these, 
- make sure you add the necessary information to schema.yml. 