with

source as (

    select * from {{ source('jaffle_shop', 'customers') }}

),

renamed as (

    select

        ----------  ids
        id as customer_id,

        ---------- text
        first_name as customer_first_name, 
        last_name as customer_last_name 

    from source

)

select * from renamed