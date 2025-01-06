*** Settings ***
Documentation           Keywords e Variaveis para Ações de endpoints de Produtos
Resource                ../support/base.robot
Resource                ./login_keywords.robot

*** Keywords ***

POST Endpoint /produtos
   &{header}      Create Dictionary         authorization=${token_auth}
   &{payLoad}     Create Dictionary         nome=TV Samsung IP 35pls         preco=69           descricao=TV         quantidade=89
   ${response}    POST On Session    serverest    /produtos    data=&{payLoad}           headers=${header}
   Log To Console  Status Code: ${response.status_code}
   Set Global Variable    ${response}

GET Endpoint /produtos
   ${response}    GET On Session    serverest    /produtos
   Set Global Variable    ${response}

DELETE Endpoint /produtos
   &{header}      Create Dictionary         authorization=${token_auth}
   ${response}    DELETE On Session    serverest    /produtos/${id_produto}          headers=${header}
   Log To Console  Status Code: ${response.status_code}
   Set Global Variable    ${response}

Validar Ter Criado Produto
   Should Be Equal          ${response.json()["message"]}         Cadastro realizado com sucesso
   Should Not Be Empty      ${response.json()["_id"]}

Criar um Produto e Armazenar ID
   POST Endpoint /produtos
   Validar Ter Criado Produto
   ${id_produto}            Set Variable                          ${response.json()["_id"]}
   Log To Console           ID Produto: ${id_produto}
   Set Global Variable      ${id_produto}


Criar Dados Produto Valido
   Fazer Login e Armazenar Token
   POST Endpoint /produtos
   Criar um Produto e Armazenar ID
   &{header}      Create Dictionary         authorization=${token_auth}
   ${response}    PUT on Session     serverest     /produtos/${id_produto}               headers=${header}
   Log To Console  Status Code: ${response.status_code}

