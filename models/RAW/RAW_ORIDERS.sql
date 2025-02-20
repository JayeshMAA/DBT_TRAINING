{{
    config(
        materialized='table'
    )
}}

select * 
from RAW.GLOBALEMART.ORDERS