with source as (

    select * from {{ source('platform', 'snap_adgroups') }}

),

stg_snap_adgroups as (

    select
        _surrogate_key,
        ad_group_id,
        campaign_id,
        ad_group_name,
        ad_group_updated_at

    from source

)

select * from stg_snap_adgroups