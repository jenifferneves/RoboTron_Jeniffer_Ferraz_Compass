*** Settings ***
Documentation     Arquivo simples para requisi��o HTTP em APIs
Library           RequestsLibrary
Library           Collection
Library           OperatinSystem
Resource          ./common/commom.robot
Resource          ./support/fixtures/dynamics.robot
Resource          ./variaveis/serverest_variaveis.robot


*** Keywords ***

Criar Sess�o Serverest
   Create Session    serverest    ${BASE_URL} 
