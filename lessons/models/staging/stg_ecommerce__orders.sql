with source as (

  select *
    from {{ source('thelook_ecommerce', 'orders') }}

)

select -- ids
       order_id
      ,user_id

      -- timestamps
      ,created_at
      ,returned_at
      ,shipped_at
      ,delivered_at

      ,status
      ,num_of_item            as num_items_ordered
      -- EfJ, 01.08.2023
      --,gender

  from source
