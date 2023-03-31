SELECT
    customers.customer_state, count(orders.order_id) as orders
    from `dbt_shop.orders` as orders
    inner join `dbt_shop.customers` as customers on orders.customer_id = customers.customer_id
    group by customers.customer_state