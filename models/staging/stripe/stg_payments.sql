with payments as (
    select
        id,
        orderid as order_id,
        paymentmethod,
        status,
        amount,
        created,
        _batched_at as batch_time
    from
        `dbt-tutorial.stripe.payment`
)
select * from payments