{{ config(materialized='table') }}

select * from {{ref('select_coluns')}}
where MUNICIPIO = '5837'
