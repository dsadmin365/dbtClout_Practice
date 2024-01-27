select 
--from orders
ORDERID, ORDERDATE, SHIPDATE, SHIPMODE, o.CUSTOMERID, o.PRODUCTID, ORDERCOSTPRICE, ORDERSSELLINGPRICE, ORDERSSELLINGPRICE as orderprofit,
--from product
CATEGORY, PRODUCTNAME, SUBCATEGORY,
--from customer
CUSTOMERNAME, SEGMENT, COUNTRY, STATE

from 
{{ ref('raw_orders') }} o left join {{ ref('raw_product') }} p
on o.productid=p.productid
left join {{ ref('raw_customer') }} c
on o.CUSTOMERID=c.CUSTOMERID