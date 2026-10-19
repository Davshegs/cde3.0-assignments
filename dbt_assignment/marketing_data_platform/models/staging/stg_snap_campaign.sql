with source as (

    select * from {{ source('platform', 'snap_campaigns') }}

),

stg_snap_campaigns as (

    select
        campaign_id,
        account_id,
        campaign_name

    from source

)

select * from stg_snap_campaigns