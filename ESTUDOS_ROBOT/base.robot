*** Settings ***
Documentation     Arquivo simples para requisi��o HTTP em APIs
Library           RequestsLibrary

*** Variables ***
${BASE_URL}       https://serverest.dev 

*** Test Cases ***

Cen�rio: GET Todos os Usu�rios 200
   Criar Sess�o Serverest
   GET Endpoint /usuarios
   Validar Status Code 200    200

*** Keywords ***

Criar Sess�o Serverest
   Create Session    serverest    ${BASE_URL}

GET Endpoint /usuarios
   ${response}    GET On Session    serverest    /usuarios
   Set Global Variable    ${response}

Validar Status Code 200
   [Arguments]    ${statuscode}
   Should Be Equal As Numbers    ${response.status_code}    ${statuscode}