*** Settings ***
Documentation    Keyword e Variaves para acoes do Endpoint de usuario


*** Variables ***


*** Keywords ***

Get Endpoint /usuarios
    ${response}     Get on Session      serverest         /usuarios
    Set Global Variable     ${response}
POST Endpoint /usuarios
    ${payload}     Create Dictionary     nome=chefe   email=teste@gmail.com    password=123    administrador=true
    ${response}     Post on Session      serverest         /usuarios    data=${payload}
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