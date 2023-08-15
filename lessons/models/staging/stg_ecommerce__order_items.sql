with source as (
  select *
    from  {{ source('thelook_ecommerce', 'order_items') }}
)

select -- ids
       id                   as order_item_id
      ,order_id
      ,user_id
      ,product_id

      -- other columns
      ,sale_price           as item_sale_price
  from source