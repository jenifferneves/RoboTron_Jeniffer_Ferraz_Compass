*** Settings ***
Documentation     Arquivo de Testes para o Endpoint /login
Resource          ../keywords/login_keywords.robot
Suite Setup       Criar Sess�o Serverest


*** Test Cases ***

Cen�rio: POST Realizar login 200
   [tags]      POSTLOGIN
   POST Endpoint /login
   Validar Status Code 200
   Validar Ter Logado

Cen�rio: POST Realizar login 401
   [tags]      POSTINVALIDO
   POST Endpoint /login
   Validar Mensagem de Erro
   Validar Status Code Negativo