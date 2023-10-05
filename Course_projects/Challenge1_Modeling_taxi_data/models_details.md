## Step1) Define the source 

### What are dbt sources?
- Sources make it possible to reference data objects in a dbt project structure.
- By declaring tables as sources in dbt, you can directly reference them in your models, test assumptions about source data,
- and calculate “freshness” (the recency of loaded data).
- Sources are defined in yaml files, a format common in dbt, nested under a sources key.

![image](https://github.com/iayaakhaled1/Advance-Your-SQL-Skills-with-dbt-for-Data-Engineering/assets/145045777/d9e9a605-06e8-4b70-be42-5b2ba1e626b2)

- Name: refers to the schema in bigquery ( or other cloud providers )
- Table: refers to the table name
