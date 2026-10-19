with source as (

    select * from {{ source('platform', 'snap_ads_stats') }}

),

stg_snap_ads_stats as (

    select
        ad_detail_id,
        ad_currency_code,
        ad_country,
        ad_spend,
        ad_impressions,
        ad_clicks,
        ad_date,
        data_src

    from source

)

select * from stg_snap_ads_stats