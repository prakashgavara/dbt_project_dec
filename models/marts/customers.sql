with

source as (

    select * from {{ source('ecom', 'raw_customers') }}

),

renamed as (

    select

        ----------  ids
        id as customerid,

        ---------- text
        name as customername

    from source

)

select * from renamed