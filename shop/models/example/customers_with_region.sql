{{ config(materialized='table') }}
select
    customer_id, 
    customer_unique_id, 
    customer_zip_code_prefix, 
    customer_city, 
    customer_state,
    case 
        when customer_state in ('SP', 'RJ', 'MG', 'ES') then 'Sudeste'
        when customer_state in ('RS', 'SC', 'PR') then 'Sul'
        when customer_state in ('CE', 'PI', 'MA', 'BA', 'RN', 'PB', 'PE', 'AL', 'SE') then 'Nordeste'
        when customer_state in ('AM', 'PA', 'TO', 'RO', 'AC', 'RR', 'AP') then 'Norte'
        when customer_state in ('MT', 'MS', 'GO', 'DF') then 'Centro-Oeste'
        else 'Outra'
    end as region
from `dbt_shop.customers`