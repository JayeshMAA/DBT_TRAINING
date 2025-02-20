{{
    config(
        materialized='table'
    )
}}

select * 
from {{ source('GLOBALEMART', 'customers') }}