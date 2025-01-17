{{ config(materialized='table') }}

SELECT a.*,
    b.*
EXCEPT(CNPJ_BASICO),
    c.*
EXCEPT(CNPJ_BASICO),
    d.cnae AS CNAE,
    d.tipo AS CLASIFICACAO_PRINCIPAL,
    d.descricao AS DESCRICAO_CNAE
FROM {{ref('estabelecimento')}} AS a
    LEFT JOIN {{ref('empresas')}} AS b on a.cnpj_BASICO = b.cnpj_basico
    LEFT JOIN {{ref('simples_nacional')}} AS c on a.cnpj_BASICO = c.cnpj_basico
    LEFT JOIN {{ref('cnae')}} AS d on a.CNAE_PRINCIPAL = d.cnae
WHERE 
  ('{{var("filtro_municipio")}}' = "" OR a.MUNICIPIO = '{{var("filtro_municipio")}}')
  AND 
  ('{{var("filtro_uf")}}' = "" OR a.UF = '{{var("filtro_uf")}}')    

