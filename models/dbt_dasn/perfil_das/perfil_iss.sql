{{ config(materialized='view') }}
-- dbt run --select models/dbt_dasn/perfil_das --vars '{"dataset_name": "dbt_dasn","municipio_dasn": "5837","codrecp": "1010"}'

  SELECT * FROM {{ref('perfil_das')}}
  WHERE codrecp = CAST({{ var("codrecp") }} AS STRING)
