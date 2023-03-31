select
    region,
    count(customer_id) as customers
    from `dbt_shop.customers_with_region`
    group by region