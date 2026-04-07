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

Inbound pallet analysis project based on real-world operations, using processed and anonymized data.

## Objectives:

Analyze the operational performance of the inbound process, focusing on:
 - pallet volume and productivity (trucks waiting time) per operator;
 - volume and efficiency per vehicle type;
 - main commercial partners and gaps between phisically received and system-recorded pallets.


## Key insights:
 - High operational concentration among the top 3 personnel responsible for pallet receiving with greater activity during 2nd shift;
 - Average unloading time ranges between 60 and 75 minutes, indicating a stable operational pattern, although there is inneficiencies can be addressed;
 - Side-loading vehicles handle lower volume per operationbut have shorter waiting times, while box trucks carry higher loads with significantly longer waiting times;
 - Discrepancies between physically received pallets and system records are generally low, with approximately 5 out of every 6 partners showing gaps below 0.5%.

## Technologies used

 - PostgreSQL
 - SQL


## Current status

_Finished project (1st version), inlcuding data modeling and manipulation focused on inbound logistics operations, as well as the generation of business-oriented insights._

_The project may be expanded in the future with new, deeper analisys under different approaches._