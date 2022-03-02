
# Análise Multivariada - Análise de Correspondência Canônica (CCA) -------------------------------------------------------------------------
# Autoria do script: Jeanne Franco ---------------------------------------------------------------------------------------------------------
# Data: 01/03/2022 -------------------------------------------------------------------------------------------------------------------------

# Conceito da Análise de Correspondência Canônica ------------------------------------------------------------------------------------------

## O objetivo dessa análise é identificar a influência de variáveis ambientais sobre os padrões
## de composição e abundância das espécies numa comunidade.

## São necessárias duas matriz, uma matriz x com variáveis independentes e uma matriz y com
## variáveis dependentes.

## A diferença dessa análise para a análise de RDA é que esta assume respostas lineares e a CCA
## assume respostas não-lineares (formas curvas ou unimodais).

## As correlações da CCA tenta maximizar as relações entre as variáveis x e y.

# Prática ----------------------------------------------------------------------------------------------------------------------------------

## Baixar pacote e dados

library(vegan)
data("varespec")
data("varechem")

## Nomear os dados ambientais x dados biológicos

sp <- varespec
amb <- varechem

## Consulta sobre a análise

?cca

## Modelo da análise RDA

result_cca <- cca(sp, amb)
result_cca


