-- dbt run --select models/dbt_dasn/perfil_das --vars '{"dataset_name": "dbt_dasn","municipio_dasn": "5837","codrecp": "1010"}'
-- dbt run --select models/dbt_dasn --vars '{"dataset_name": "dbt_dasn","municipio_dasn": "5837","codrecp": "1010"}'
{{ config(materialized='table') }}


  SELECT A.*, D.data_arrecadacao FROM {{ref('perfil_iss')}} AS a
  INNER JOIN {{ref('cnpj_filtro_municipio')}}  AS b ON A.id_pgdas = b.id_pgdas
  INNER JOIN {{ref('cnpj_PA')}}  AS c ON A.id_pgdas = c.pgdasd_id_declaracao
  LEFT JOIN {{ref('das_pag')}} AS d ON A.num_guia = d.numero_das
