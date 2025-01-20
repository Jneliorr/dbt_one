{{ config(materialized='view') }}
-- dbt run --select models/dbt_dasn/cnpj_filtro --vars '{"dataset_name": "dbt_dasn","municipio_dasn": "5837"}'

  SELECT * FROM {{ref('perfil_das')}}
  WHERE codrecp = CAST({{ var("codrecp") }} AS STRING)
