with source as (

    select * from {{ source('platform', 'fb_accounts') }}

),

stg_fb_accounts as (

    select
        account_id,
        account_name,
        ad_currency_code,
        account_created_at,
        account_updated_at

    from source

)

select * from stg_fb_accounts