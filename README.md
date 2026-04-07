# Análise de recebimento logístico

## BR Português

Projeto de análise de recebimento de pallets baseado em operações reais, com informações tratadas e anonimizadas.

## Objetivo:

Analisar o desempenho operacional do processo de recebimento, com foco em:
 - volumes de pallet e produtividade (tempo de espera dos caminhões) por responsável
 - volume e eficiência por tipo de veículo
 - maiores parceiros e gaps entre cadastro sistêmico e retorno físico dos pallets

## Principais insights:

 - Alta concentração operacional dos 3 principais responsáveis pelo recebimento dos pallets com fluxo maior no 2° turno;
 - Tempo médio de descarga entre 60 e 75 minutos, mostrando padrão estável de operação, embora hajam ineficiências que podem ser exploradas;
 - Veículos do tipo sider têm menor volume por operação, mas baixo tempo de descarga, enquanto veículos do tipo baú têm alta carga e tempo de espera significativamente superiores;
 - Gaps entre o volume físico e cadastrado no sistema são baixos, com aproximadamente 5 a cada 6 parceiros apresentando divergência inferior a 0,5%.

## Tecnologias utilizadas:

 - PostgreSQL
 - SQL

## Status atual:

_Projeto finalizado (versão 1), contendo modelagem e manipulação de dados voltadas à análise operacional de recebimento logístico de pallets, além da criação de insights orientados ao negócio._

_O projeto poderá ser expandido futuramente com novas análises e aprofundamentos sob diferentes perspectivas._


# Logistics inbound analysis

## US English

Inbound pallet analysis project, based on real-world operations, using processed and anonymized data.

## Objectives:

Analyze the operational performance of the inbound process, such as:
 - pallet volume per operator
 - volume per entry type
 - productivity metrics

## Technologies used

 - PostgreSQL
 - SQL

## Current status

_Under development (early exploratory analysis phase)_
