*** Settings ***
Documentation     Arquivo de Testes para o Endpoint /login
Resource          ../keywords/login_keywords.robot
Suite Setup       Criar Sessão Serverest


*** Test Cases ***

Cenário: POST Realizar login 200
   [tags]      POSTLOGIN
   POST Endpoint /login
   Validar Status Code 200
   Validar Ter Logado

Cenário: POST Realizar login 401
   [tags]      POSTINVALIDO
   POST Endpoint /login
   Validar Mensagem de Erro
   Validar Status Code Negativo