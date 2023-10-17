{{ config(materialized='view') }}
select window_end,cid,cnt, license_plate_no from {{ ref('dbt_car_1s') }} as left 
inner join {{ ref('dbt_car_info') }} as right
on left.cid=right.cid