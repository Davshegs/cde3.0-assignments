with source as (

    select * from {{ source('platform', 'fb_ads') }}

),

stg_fb_ads as (

    select
        ad_id,
        campaign_id,
        ad_group_id,
        account_id,
        ad_name,
        ad_status,
        ad_updated_at

    from source

)

select * from stg_fb_ads