{{ config(materialized='view') }}
-- dbt run --select models/dbt_dasn/perfil_das --vars '{"dataset_name": "dbt_dasn"}'

  SELECT numero_das, data_arrecadacao FROM dasn.dasn_pag