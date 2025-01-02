*** Settings ***
Documentation           Keywords e Variaveis para Ações de endpoints de Login
Resource                ../support/base.robot

*** Variables ***
${email_para_login}         fernandosouza@qa.com.br
${password_para_login}      teste123


*** Keywords ***

POST Endpoint /login
   &{payLoad}     Create Dictionary    email=${email_para_login}           password=${password_para_login}
   ${response}    POST On Session    serverest    /login    data=&{payLoad}
   Log To Console  Status Code: ${response.status_code}
   Set Global Variable    ${response}

Validar Ter Logado
   Should Be Equal          ${response.json()["message"]}         Login realizado com sucesso
   Should Not Be Empty      ${response.json()["authorization"]}
   
Fazer Login e Armazenar Token
   POST Endpoint /login
   Validar Ter Logado
   ${token_auth}            Set Variable             ${response.json()["authorization"]}
   Log To Console           Token Salvo: ${token_auth}
   Set Global Variable      ${token_auth}

Validar Mensagem de Erro
   Should Be Equal          ${response.json()["message"]}         Email e/ou senha inválidos