*** Settings ***
Documentation     Arquivo de Testes para o Endpoint /carrinho
Resource          ../keywords/carrinho_keywords.robot
Suite Setup       Criar Sess�o Serverest

*** Test Cases ***

Cen�rio: GET Todos os Carrinhos 200
   [tags]      GET
   GET Endpoint /carrinhos
   Validar Status Code 200 