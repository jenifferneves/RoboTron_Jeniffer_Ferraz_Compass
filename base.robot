*** Settings ***
Documentation     Arquivo simples para requisição HTTP em APIs
Library           RequestsLibrary
Library           Collection
Library           OperatinSystem
Resource          ./common/commom.robot
Resource          ./support/fixtures/dynamics.robot
Resource          ./variaveis/serverest_variaveis.robot


*** Keywords ***

Criar Sessão Serverest
   Create Session    serverest    ${BASE_URL} 
