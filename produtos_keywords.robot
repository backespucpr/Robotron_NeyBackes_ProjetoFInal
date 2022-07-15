*** Settings ***
Documentation    Keyword e Variaves para acoes do Endpoint de endpoint

* Variables *
${token_auth}   Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImZ1bGFub0BxYS5jb20iLCJwYXNzd29yZCI6InRlc3RlIiwiaWF0IjoxNjU3ODQwMzMyLCJleHAiOjE2NTc4NDA5MzJ9.NY0UZWYiidyJ4FJnmruVMkh90u29WUr4Caibg5ubw0g

*** Keywords ***

GET Endpoint /produtos
    ${response}     Get on Session      serverest         /produtos
    Set Global Variable     ${response}
    Log to console     Response: ${response.content}
    Log to console     Status: ${response.status_code}
GET Endpoint /produtos ID 200
    ${response}     Get on Session      serverest         /produtos/y7lvghX9RtHgHAv3
    Set Global Variable     ${response}
    Log to console     Response: ${response.content}
    Log to console     Status: ${response.status_code}
POST Endpoint /produtos 200
    ${header}    Create Dictionary     Authorization=${token_auth}
    ${response}     Post on Session      serverest         /produtos    json=${payload}    headers=${header}
    Log to console     Response: ${response.content}
    SET Global Variable     ${response}
POST Produto Estatico
    ${json}     Importar Json Estatico  massa_produtos.json
    ${payload}  Set Variable     ${json["produto1"]}
    Set Global Variable     ${payload}
    POST Endpoint /produtos 200

DELETE Endpoint /produtos ID 200
    ${header}    Create Dictionary     Authorization=${token_auth}
    ${response}     DELETE on Session      serverest         /produtos/oOWsgxMBNSZX3VIP     headers=${header}
    Set Global Variable     ${response}
    Log to console     Response: ${response.content}
    Log to console     Status: ${response.status_code}
PUT Endpoint /produtos 200
    ${header}    Create Dictionary     Authorization=${token_auth}
    ${response}     Put on Session      serverest         /produtos/oOWsgxMBNSZX3VIP    json=${payload}    headers=${header}
    Log to console     Response: ${response.content}
    SET Global Variable     ${response}
PUT Produto Estatico
    ${json}     Importar Json Estatico  massa_produtos.json
    ${payload}  Set Variable     ${json["produto2"]}
    Set Global Variable     ${payload}
    PUT Endpoint /produtos 200