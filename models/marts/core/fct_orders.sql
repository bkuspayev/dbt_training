with payments as (
    select * from {{ ref('stg_payments')}}
),

orders as (
    select * from {{ ref('stg_orders')}}
)

select
    ods.order_id,
    ods.customer_id,
    amount
from
    orders ods 
    left join 
    payments pts on ods.order_id = pts.order_id