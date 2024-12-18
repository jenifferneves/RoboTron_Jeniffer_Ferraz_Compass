*** Settings ***
Documentation     Arquivo simples para requisi��o HTTP em APIs
Library           RequestsLibrary

*** Variables ***
${BASE_URL}       https://serverest.dev 

*** Test Cases ***

Cen�rio: GET Todos os Usu�rios 200
   [tags]      GET
   Criar Sess�o Serverest
   GET Endpoint /usuarios
   Validar Status Code 200 
   Validar Quantidade ${471} 
   Printar Conteudo Response   

Cen�rio: POST Cadastrar Usu�rios 201
   [tags]      POST
   Criar Sess�o Serverest
   POST Endpoint /usuarios
   Validar Status Code 201
   Validar Se Mensagem Contem sucesso

Cen�rio: PUT Editar Usu�rio 200
   [tags]      PUT
   Criar Sess�o Serverest
   PUT Endpoint /usuarios
   Validar Status Code 201

Cen�rio: DELETE Excluir Usu�rio 200
   [tags]      DELETE
   Criar Sess�o Serverest
   DELETE Endpoint /usuarios
   Validar Status Code 200

*** Keywords ***

Criar Sess�o Serverest
   Create Session    serverest    ${BASE_URL} 

GET Endpoint /usuarios
   ${response}    GET On Session    serverest    /usuarios
   Set Global Variable    ${response}

POST Endpoint /usuarios
   &{payLoad}     Create Dictionary    nome=Mateus Souza    email=mateussouza38@gmail.com    password=456    administrador=true
   ${response}    POST On Session    serverest    /usuarios    data=&{payLoad}
   Log To Console  Status Code: ${response.status_code}
   Set Global Variable    ${response}

PUT Endpoint /usuarios 
   &{payLoad}     Create Dictionary    nome=Jorge Ferraz    email=jorgeferraz23@gmail.com    password=456    administrador=true  
   ${response}    PUT On Session    serverest    /usuarios/OJXoUBnX84BeQOQJ    data=&{payLoad}
   Log To Console  Status Code: ${response.status_code}
   Set Global Variable    ${response}

DELETE Endpoint /usuarios
   ${response}    DELETE On Session    serverest    /usuarios/jogfODIlXsqxNFS2
   Log To Console  Status Code: ${response.status_code}
   Set Global Variable    ${response}

Validar Status Code ${statuscode}
    Should Be True     ${response.status_code} == ${statuscode}

Validar Quantidade ${quantidade}
    Should Be Equal     ${response.json()["quantidade"]}      ${quantidade}

Validar Se Mensagem Contem ${palavra}
    Should Contain     ${response.json()["message"]}          ${palavra}

Printar Conteudo Response 
    Log To Console      Nome: ${response.json()["usuarios"][1]["nome"]}
