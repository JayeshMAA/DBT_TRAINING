{{
    config(
        materialized='table'
    )
}}

select * 
from {{ source('GLOBALEMART','orders') }}