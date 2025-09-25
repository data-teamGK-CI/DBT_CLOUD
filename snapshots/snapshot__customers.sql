{% snapshot snapshot__customers %}

{{
    config(
      unique_key='id',
      strategy='check',
      check_cols = ['first_name','last_name'],
    )
}}

select
    customers_id,
    first_name,
    last_name
from {{source("jaffle_shop","customers")}}

{% endsnapshot %}