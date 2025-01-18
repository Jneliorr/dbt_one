{{ config(materialized='view') }}

SELECT 
    LEFT(Cnpjmatriz, 8) as cnpj_basico,
    PA,
    MAX(Pgdasd_ID_Declaracao) AS pgdasd_id_declaracao
  FROM pgdas_dw.contribuinte_apuracao_00000
  group by 
  cnpj_basico,
  PA



