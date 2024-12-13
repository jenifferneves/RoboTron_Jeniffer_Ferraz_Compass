*** Settings ***
Documentation     Arquivo simples para requisição HTTP em APIs
Library           RequestsLibrary

*** Variables ***
${BASE_URL}       https://serverest.dev 

*** Test Cases ***

Cenário: GET Todos os Usuários 200
   Criar Sessão Serverest
   GET Endpoint /usuarios
   Validar Status Code 200    200

*** Keywords ***

Criar Sessão Serverest
   Create Session    serverest    ${BASE_URL}

GET Endpoint /usuarios
   ${response}    GET On Session    serverest    /usuarios
   Set Global Variable    ${response}

Validar Status Code 200
   [Arguments]    ${statuscode}
   Should Be Equal As Numbers    ${response.status_code}    ${statuscode}