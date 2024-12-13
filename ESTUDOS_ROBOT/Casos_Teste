*** Test Cases ***

Cenário: GET Todos os Usuários - Status 200
    GET Endpoint /usuarios
    Validar Response Contém Campos Obrigatórios (e.g., "id", "nome")
    Validar Status Code 200

Cenário: GET Usuário Específico - Status 200
    GET Endpoint /usuarios com id "${usuario_id}"
    Validar o Usuário com id "${usuario_id}"
    Validar Status Code 200
    Validar Mensagem Contém "nome: Fulano da Silva"

Cenário: POST Criar Novo Usuário - Status 201
    Criar Usuário Dinâmico
    POST Usuário Dinâmico no Endpoint /usuarios
    Validar Status Code 201
    Validar Mensagem Contém "Cadastro realizado com sucesso"

Cenário: PUT Editar Usuário Existente - Status 200
    PUT Editar Usuário com id "${usuario_id}" usando os dados Dinâmicos
    Validar Status Code 200
    Validar Mensagem Contém "Registro alterado com sucesso"

Cenário: DELETE Usuário Existente - Status 200
    [Setup]    Criar Usuário Dinâmico
    DELETE Usuário Específico com id "${usuario_id}"
    Validar Status Code 200
    Validar Mensagem Contém "Registro excluído com sucesso | Nenhum registro excluído"

Cenário: GET Todos os Produtos - Status 200
    GET Endpoint /produtos
    Validar Response Contém Campos Obrigatórios (e.g., "id", "nome")
    Validar Status Code 200

Cenário: GET Produto Específico - Status 200
    GET Endpoint /produtos com id "${produto_id}"
    Validar o Produto com id "${produto_id}"
    Validar Status Code 200
    Validar Mensagem Contém "nome: Logitech MX Vertical"

Cenário: POST Criar Novo Produto - Status 201
    Criar Produto Dinâmico
    POST Produto Dinâmico no Endpoint /produtos
    Validar Status Code 201
    Validar Mensagem Contém "Cadastro realizado com sucesso"

Cenário: PUT Editar Produto Existente - Status 200
    PUT Editar Produto com id "${produto_id}" usando os dados Dinâmicos
    Validar Status Code 200
    Validar Mensagem Contém "Registro alterado com sucesso"

Cenário: DELETE Produto Existente - Status 200
    [Setup]    Criar Produto Dinâmico
    DELETE Produto Específico com id "${produto_id}"
    Validar Status Code 200
    Validar Mensagem Contém "Registro excluído com sucesso | Nenhum registro excluído"