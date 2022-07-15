*** Settings ***
Documentation    Keyword e Variaves para acoes do Endpoint de endpoint



*** Keywords ***
Post Endpoint /produtos
    ${header}    Create Dictionary     Authorization=${token_auth}
    ${payload}    Create Dictionary     nome=papel   preco=10.00    descricao=papel     quantidade=10
    ${response}     Post on Session      serverest         /produtos    data=${payload}    headers=${header}
    Log to console     Response: ${response.content}
    SET Global Variable     ${response}
DELETE Endpoint /produtos
    ${header}    Create Dictionary     Authorization=${token_auth}  
    ${response}     Delete on Session      serverest         /produtos/${id_produto}     headers=${header}
    Log to console     Response: ${response.content}
    SET Global Variable     ${response}

Validar Ter Criado Produto
    Should Be Equal    ${response.json()["message"]}    Cadastro realizado com sucesso
    Should not be empty    ${response.json()["_id"]}
Criar um produto e Armazenar ID   
    Post Endpoint /produtos
    Validar Ter Criado Produto
    ${id_produto}    Set Variable     ${response.json()["_id"]}
    Log to console     ID produto: ${id_produto}
    Set Global Variable     ${id_produto}
    
   