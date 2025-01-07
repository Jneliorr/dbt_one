{{ config(materialized='table') }}
select 
CNPJ_COMPLETO,
NOME_FANTASIA,
UF,
MUNICIPIO

from {{ref('cnpj1000')}}