with payment as(
select 
    id,
    orderid as order_id,
    paymentmethod as paymenth_method,
    status,
    amount / 100 as amount,
    created as created_at
  from dbt-tutorial.stripe.payment
)

select * from payment
