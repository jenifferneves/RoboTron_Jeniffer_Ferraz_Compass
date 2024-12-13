*** Test Cases ***

Cen�rio: GET Todos os Usu�rios - Status 200
    GET Endpoint /usuarios
    Validar Response Cont�m Campos Obrigat�rios (e.g., "id", "nome")
    Validar Status Code 200

Cen�rio: GET Usu�rio Espec�fico - Status 200
    GET Endpoint /usuarios com id "${usuario_id}"
    Validar o Usu�rio com id "${usuario_id}"
    Validar Status Code 200
    Validar Mensagem Cont�m "nome: Fulano da Silva"

Cen�rio: POST Criar Novo Usu�rio - Status 201
    Criar Usu�rio Din�mico
    POST Usu�rio Din�mico no Endpoint /usuarios
    Validar Status Code 201
    Validar Mensagem Cont�m "Cadastro realizado com sucesso"

Cen�rio: PUT Editar Usu�rio Existente - Status 200
    PUT Editar Usu�rio com id "${usuario_id}" usando os dados Din�micos
    Validar Status Code 200
    Validar Mensagem Cont�m "Registro alterado com sucesso"

Cen�rio: DELETE Usu�rio Existente - Status 200
    [Setup]    Criar Usu�rio Din�mico
    DELETE Usu�rio Espec�fico com id "${usuario_id}"
    Validar Status Code 200
    Validar Mensagem Cont�m "Registro exclu�do com sucesso | Nenhum registro exclu�do"

Cen�rio: GET Todos os Produtos - Status 200
    GET Endpoint /produtos
    Validar Response Cont�m Campos Obrigat�rios (e.g., "id", "nome")
    Validar Status Code 200

Cen�rio: GET Produto Espec�fico - Status 200
    GET Endpoint /produtos com id "${produto_id}"
    Validar o Produto com id "${produto_id}"
    Validar Status Code 200
    Validar Mensagem Cont�m "nome: Logitech MX Vertical"

Cen�rio: POST Criar Novo Produto - Status 201
    Criar Produto Din�mico
    POST Produto Din�mico no Endpoint /produtos
    Validar Status Code 201
    Validar Mensagem Cont�m "Cadastro realizado com sucesso"

Cen�rio: PUT Editar Produto Existente - Status 200
    PUT Editar Produto com id "${produto_id}" usando os dados Din�micos
    Validar Status Code 200
    Validar Mensagem Cont�m "Registro alterado com sucesso"

Cen�rio: DELETE Produto Existente - Status 200
    [Setup]    Criar Produto Din�mico
    DELETE Produto Espec�fico com id "${produto_id}"
    Validar Status Code 200
    Validar Mensagem Cont�m "Registro exclu�do com sucesso | Nenhum registro exclu�do"