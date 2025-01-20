{{ config(materialized='view') }}

SELECT 
    LEFT(Cnpjmatriz, 8) as cnpj_basico,
    PA,
    MAX(Pgdasd_ID_Declaracao) AS pgdasd_id_declaracao
  FROM pgdas_dw.contribuinte_apuracao_00000
  WHERE LEFT(Cnpjmatriz, 8) = '28367948' AND PA = 202212
  group by 
  cnpj_basico,
  PA



