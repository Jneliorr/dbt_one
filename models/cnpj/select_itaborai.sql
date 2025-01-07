{{ config(materialized='table') }}
select * from {{ref('select_coluns')}}
