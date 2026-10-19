with source as (

    select * from {{ source('platform', 'fb_ads_stats') }}

),

stg_fb_ads_stats as (

    select
        ad_id,
        account_id,
        ad_spend,
        ad_impressions,
        ad_clicks,
        ad_date

    from source

)

select * from stg_fb_ads_stats