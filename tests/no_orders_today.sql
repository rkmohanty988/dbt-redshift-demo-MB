-- Test to check if there are no orders from today

select count(*) as num_orders_today
from {{ref('stg_orders')}}
where DATE(order_date) = sysdate
GROUP BY Order_ID
having count(*) >0

