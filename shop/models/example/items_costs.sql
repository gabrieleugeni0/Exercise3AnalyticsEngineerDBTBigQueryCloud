select
    order_item_id,
    SUM(price) as total_price
    from `dbt_shop.order_items`
    group by order_item_id