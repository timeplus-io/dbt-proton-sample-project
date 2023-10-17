{{ config(materialized='view') }}
select window_end,cid,count(1) as cnt from tumble({{ source('default', 'car_live_data') }},1s) group by window_end, cid