select *
  from {{ ref('fct_orders') }} o
 where not exists(select customer_id c
                    from {{ ref('dim_customers') }} c
                   where o.customer_id = c.customer_id)