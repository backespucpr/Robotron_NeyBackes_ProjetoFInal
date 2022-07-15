*** Settings ***
Documentation    Keyword e Variaves para acoes do Endpoint de usuario
Resource         ./common.robot


*** Variables ***


*** Keywords ***

Get Endpoint /usuarios
    ${response}     Get on Session      serverest         /usuarios
    Set Global Variable     ${response}
POST Endpoint /usuarios
    ${response}     Post on Session      serverest         /usuarios    json=&{payload}
    Log to console     Response: ${response.content}
    SET Global Variable     ${response}

PUT Endpoint /usuarios
    ${payload}     Create Dictionary     nome=teste   email=tetes22@gmail.com    password=123    administrador=true
    ${response}     PUT on Session      serverest       /usuarios/BeeJh5lz3k6kSIzA    data=${payload}
    Log To Console    Response: ${response.content}
    SET Global Variable     ${response}
DELETE Endpoint /usuarios
    ${response}    Delete on Session      serverest         /usuarios/s1HRvJRWtCbpuH3b"
    Log To Console    Response: ${response.content}
    Set Global Variable    ${response}

Validar Quantidade "${quantidade}"
    Should Be Equal     ${response.json()["quantidade"]}    ${quantidade}
    Log To Console    Response: ${response.content}

Validar Se Mensagem Contem "${palavra}"    
    Should Contain    ${response.json()["message"]}    ${palavra}


Criar Usuario Estatico Valido
    ${json}     Importar Json Estatico  json_usuario.json
    ${payload}  Set Variable     ${json["user_valido"]}
    Set Global Variable     ${payload}
    POST Endpoint /usuarios