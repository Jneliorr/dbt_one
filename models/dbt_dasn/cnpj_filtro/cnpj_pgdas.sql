{{ config(materialized='view') }}
SELECT distinct id_pgdas, Cod_TOM FROM pgdas_dw.estabelecimentos_filial_03000