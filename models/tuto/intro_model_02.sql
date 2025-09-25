{{config(materialized = 'table')}} 

SELECT * FROM {{ ref('intro_model_01') }}