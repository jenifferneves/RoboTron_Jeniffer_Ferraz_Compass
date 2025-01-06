*** Settings ***
Documentation     Arquivo de Testes para o Endpoint /produto
Resource          ../keywords/produtos_keywords.robot
Suite Setup       Criar Sess�o Serverest

*** Test Cases ***

Cen�rio: GET Todos os Produto 200
   [tags]      GETPRODUTO
   GET Endpoint /produtos
   Validar Status Code 200

Cen�rio: POST Criar Produto 201
   [tags]      POSTPRODUTO
   Fazer Login e Armazenar Token
   POST Endpoint /produtos
   Validar Status Code 201

Cen�rio: PUT Editar Produto 200
   [tags]      PUTPRODUTO
   Fazer Login e Armazenar Token
   Criar um Produto e Armazenar ID
   Criar Dados Produto Valido 
   POST Endpoint /produtos
   PUT Endpoint /produtos
   Validar Status Code 200

Cen�rio DELETE Excluir Produto 200
   [tags]      DELETEPRODUTO
   Fazer Login e Armazenar Token
   Criar um Produto e Armazenar ID
   DELETE Endpoint /produtos
   Validar Status Code 200