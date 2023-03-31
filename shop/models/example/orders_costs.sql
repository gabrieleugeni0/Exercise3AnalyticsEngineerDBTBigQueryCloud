SELECT
    orders.order_id,     
    orders.customer_id,     
    orders.order_status, 
    orders. order_purchase_timestamp, 
    orders.order_approved_at, 
    orders.order_delivered_carrier_date, 
    orders.order_estimated_delivery_date, 
    order_items.product_id, 
    order_items.seller_id, 
    order_items.shipping_limit_date, 
    order_items.price, 
    order_items.freight_value, 
    order_items.price + order_items.freight_value as total_price_order
    from `dbt_shop.orders` as orders
    inner join `dbt_shop.order_items` as order_items on orders.order_id = order_items.order_id