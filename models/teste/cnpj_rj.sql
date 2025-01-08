-- {{ config(materialized='table') }}

SELECT a.*,
    b.*
EXCEPT(CNPJ_BASICO),
    c.*
EXCEPT(CNPJ_BASICO),
    d.cnae,
    d.tipo AS Classificacao_Principal,
    d.descricao
FROM {{ref('estabelecimento')}} AS a
    LEFT JOIN {{ref('empresas')}} AS b on a.cnpj_BASICO = b.cnpj_basico
    LEFT JOIN {{ref('simples_nacional')}} AS c on a.cnpj_BASICO = c.cnpj_basico
    LEFT JOIN {{ref('cnae')}} AS d on a.CNAE_PRINCIPAL = d.cnae