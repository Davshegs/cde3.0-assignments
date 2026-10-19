with source as (

    select * from {{ source('platform', 'fb_campaigns') }}

),

stg_fb_campaigns as (

    select
        campaign_id,
        campaign_name,
        campaign_updated_at

    from source

)

select * from stg_fb_campaigns