{{ config(materialized='table') }}

with cnpj_filter as (
select  * from {{ref('cnpj')}} LIMIT 1000
)

SELECT * FROM cnpj_filter