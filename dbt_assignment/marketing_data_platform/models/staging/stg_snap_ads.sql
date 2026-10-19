with source as (

    select * from {{ source('platform', 'snap_ads') }}

),

stg_snap_ads as (

    select
        ad_id,
        ad_group_id,
        ad_name,
        ad_detail_updated_at

    from source

)

select * from stg_snap_ads