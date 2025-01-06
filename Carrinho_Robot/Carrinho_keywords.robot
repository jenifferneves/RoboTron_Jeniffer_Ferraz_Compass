*** Settings ***
Documentation           Keywords e Variaveis para Ações de endpoints de Carrinho
Resource                ../support/base.robot
Resource                ./login_keywords.robot

*** Variables ***
&{dict1}    idProduto=Ld7PRbvL1MCwInZM    quantidade=3
#@{list_of_dicts}     &{dict1}
@{list_of_dicts}    produtos:[{'idProduto': 'Ld7PRbvL1MCwInZM', 'quantidade': 3}]

*** Keywords ***

GET Endpoint /carrinhos
   ${response}    GET On Session    serverest    /carrinhos
   Set Global Variable    ${response}

POST Endpoint /carrinhos
   ${response}    POST On Session    serverest    /carrinhos    json=&{payLoad}
   Log To Console  Status Code: ${response.status_code}
   Set Global Variable    ${response}