*** Settings ***
Documentation           Keywords e Variaveis para Ações de Gerais
library                 OperatingSystem


*** Keywords ***


Validar Status Code ${statuscode}
    Should Be True     ${response.status_code} == ${statuscode}

Validar Se Mensagem Contem ${palavra}
   Should Contain     ${response.json()["message"]}          ${palavra}

