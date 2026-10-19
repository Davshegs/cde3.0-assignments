with source as (

    select * from {{ source('platform', 'fb_adgroups') }}

),

stg_fb_adgroups as (

    select
        ad_group_id,
        ad_group_name,
        ad_group_updated_at

    from source

)

select * from stg_fb_adgroups