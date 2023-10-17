{{ config(materialized='view') }}
select 
    device AS device_id, location,model, number,to_time(time) AS time,
    _tp_time, _tp_index_time
from {{ source('default','raw_iot_data') }} AS t
left join {{ ref('dim_device_info') }} AS dim on t.device = dim.device_id
