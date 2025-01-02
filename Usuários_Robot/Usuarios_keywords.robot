*** Settings ***
Documentation           Keywords e Variaveis para Ações de endpoints de Usuários
Resource                ../support/base.robot

*** Keywords ***

GET Endpoint /usuarios
   ${response}    GET On Session    serverest    /usuarios
   Set Global Variable    ${response}

POST Endpoint /usuarios
   ${response}    POST On Session    serverest    /usuarios    json=&{payLoad}
   Log To Console  Status Code: ${response.status_code}
   Set Global Variable    ${response}

PUT Endpoint /usuarios 
   ${response}    PUT On Session    serverest    /usuarios/${response.json()["_id"]}   json=&{payLoad}
   Log To Console  Status Code: ${response.status_code}
   Set Global Variable    ${response}

DELETE Endpoint /usuarios
   ${response}    DELETE On Session    serverest    /usuarios/${response.json()["_id"]}  
   Log To Console  Status Code: ${response.status_code}
   Set Global Variable    ${response}