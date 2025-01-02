*** Settings ***
Documentation     Arquivo de Testes para o Endpoint /usuarios
Resource          ../keywords/usuarios_keywords.robot
Resource          ../support/base.robot
Resource          ../support/fixtures/dynamics.robot
Suite Setup       Criar Sess�o Serverest

*** Test Cases ***

Cen�rio: GET Todos os Usu�rios 200
   [tags]      GET
   GET Endpoint /usuarios
   Validar Status Code 200 

Cen�rio: POST Cadastrar Usu�rios 201
   [tags]      POST
   Criar Dados Usuario Valido
   POST Endpoint /usuarios
   Validar Status Code 201
   Validar Se Mensagem Contem sucesso

Cen�rio: PUT Editar Usu�rio 200
   [tags]      PUT
   Criar Dados Usuario Valido 
   POST Endpoint /usuarios
   PUT Endpoint /usuarios
   Validar Status Code 200

Cen�rio: DELETE Excluir Usu�rio 200
   [tags]      DELETE
   Criar Dados Usuario Valido
   POST Endpoint /usuarios
   DELETE Endpoint /usuarios
   Validar Status Code 200