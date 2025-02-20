select
    CUSTOMERID,
    SEGMENT,
    country,   
SUm(ORDER_PROFIT) AS PRODUCT_PROFIT
FROM {{ ref('ORDERS_STAGE') }}
GROUP BY 
    CUSTOMERID,
    SEGMENT,
    country