with 
orders as 
   (select * from {{ ref('raw_orders') }} )
select orderid,sum(ordersellingprice) as sp
from orders
group by orderid
having sp < 0


