{{ config(materialized='table') }}
select 
    extract(year from date(order_approved_at)) as year,
    COUNT(order_id) as orders
    from `dbt_shop.orders`
    group by year