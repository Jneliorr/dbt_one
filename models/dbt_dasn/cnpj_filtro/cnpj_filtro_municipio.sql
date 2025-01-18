{{ config(materialized='view') }}

SELECT distinct id_pgdas FROM {{ref('cnpj_pgdas')}}
WHERE Cod_TOM = CAST({{ var("municipio_dasn") }} AS STRING)