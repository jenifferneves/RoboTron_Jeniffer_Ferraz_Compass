*** Settings ***
Documentation     Keywords e Variaveis para Gera��o de Massa de Dados
Library           FakerLibrary


*** Keywords ***

Criar Dados Usuario Valido
    ${nome}               FakerLibrary.Name
    ${email}              FakerLibrary.Email
    ${payload}            Create Dictionary     nome=${nome}         email=${email}          password=senha123          administrador=true
    Log To Console        ${payload}
    Set Global Variable   ${payload}