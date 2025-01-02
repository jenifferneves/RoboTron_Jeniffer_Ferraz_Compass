*** Settings ***
Documentation     Arquivo de Testes para o Endpoint /usuarios
Resource          ../keywords/usuarios_keywords.robot
Resource          ../support/base.robot
Resource          ../support/fixtures/dynamics.robot
Suite Setup       Criar Sessão Serverest

*** Test Cases ***

Cenário: GET Todos os Usuários 200
   [tags]      GET
   GET Endpoint /usuarios
   Validar Status Code 200 

Cenário: POST Cadastrar Usuários 201
   [tags]      POST
   Criar Dados Usuario Valido
   POST Endpoint /usuarios
   Validar Status Code 201
   Validar Se Mensagem Contem sucesso

Cenário: PUT Editar Usuário 200
   [tags]      PUT
   Criar Dados Usuario Valido 
   POST Endpoint /usuarios
   PUT Endpoint /usuarios
   Validar Status Code 200

Cenário: DELETE Excluir Usuário 200
   [tags]      DELETE
   Criar Dados Usuario Valido
   POST Endpoint /usuarios
   DELETE Endpoint /usuarios
   Validar Status Code 200