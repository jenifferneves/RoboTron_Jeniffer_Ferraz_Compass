*** Settings ***
Documentation     Arquivo de Testes para o Endpoint /carrinho
Resource          ../keywords/carrinho_keywords.robot
Suite Setup       Criar Sessão Serverest

*** Test Cases ***

Cenário: GET Todos os Carrinhos 200
   [tags]      GET
   GET Endpoint /carrinhos
   Validar Status Code 200 