select 
--from row orders
ORDERID,
ORDERDATE,
SHIPDATE,
SHIPMODE,
ORDERCOSTPRICE,
ORDERSELLINGPRICE,
---from customer
c.CUSTOMERID,
C.SEGMENT,
c.country,
--from product
p.productid,
p.CATEGORY,
p.PRODUCTNAME,
P.SUBCATEGORY,
 o.ORDERSELLINGPRICE - o.ORDERCOSTPRICE as ORDER_PROFIT from 
{{ ref('RAW_ORIDERS') }} O 
left outer join 
{{ ref('RAW_CUSTOMER') }} as C
On 
O.CUSTOMERID=c.CUSTOMERID
left outer join 
{{ ref('RAW_PRODUCTS') }} as P 
On
O.productid=p.productid
