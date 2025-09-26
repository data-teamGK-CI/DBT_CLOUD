{% snapshot snapshot__customers %}

{{
  config(
    unique_key='id',
    strategy='check',
    check_cols='all'
  )
}}

select
    id,
    id as customer_id,
    first_name,
    last_name,
from {{ source('jaffle_shop','customers') }}

{% endsnapshot %}
