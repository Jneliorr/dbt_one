{{ config(materialized='table') }}

select * from {{ref('cnpj_rj')}}
where MUNICIPIO = '5837'