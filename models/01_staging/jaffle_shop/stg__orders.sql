
select
    id as order_id,
    user_id as customer_id,
    order_date,
    status,
from {{ source('jaffle_shop', 'orders') }}
-- {% if target.name =='default' %}
-- where order_date < current_date()
--  /* {{ target.dev }} */
-- {% endif %} 