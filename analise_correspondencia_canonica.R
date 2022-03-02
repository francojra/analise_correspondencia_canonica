
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

## Modelo da análise CCA

result_cca <- cca(sp, amb)
result_cca
summary(result_cca)

## Interpretação dos resultados

# A proporção da inércia explicada (constrained) pelas variáveis foi de quase 70%.
# O sumário também apresenta a importância dos componentes que até a segunda CCA
# foi de 35% de proporção explicada.

# No sumário podemos encontrar os escores de cada variável ambiental, de cada espécie
# e dos locais nos componentes.

## Visualização

plot(result_cca)

## Interpretação do gráfico

# Os vetores em azul do gráfico são as variáveis ambientais, os nomes
# em vermelho são as espécies e os números em preto, os sítios de coleta.