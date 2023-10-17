{{ config(materialized='view') }}
select * from table({{ source('default', 'dim_car_info') }})