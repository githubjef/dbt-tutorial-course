with source as (
	select *
    from {{ source('thelook_ecommerce', 'products') }}
)

select -- ids
       id                     as product_id

      -- other columns
      ,cost
      ,retail_price
      ,department

      /*
        lesson 46:
        EfJ, 10.08.2023
        multiple line comments

       */
     	{#
        lesson 46:
        EfJ, 10.08.2023
        multiple line comments
	    #}

  from source
