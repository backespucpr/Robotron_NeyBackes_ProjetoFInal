*** Settings ***
Documentation    Keyword e Variaves para acoes do Endpoint de endpoint


*** Variables ***
${email_para_login}    fulano@qa.com
${senha_para_login}    teste


*** Keywords ***
Post Endpoint /login
    ${payload}     Create Dictionary     email=${email_para_login}    password=${senha_para_login}
    ${response}     Post on Session      serverest         /login    data=${payload}
    Log to console     Response: ${response.content}
    SET Global Variable     ${response}
Validar Ter Logado
    Should Be Equal    ${response.json()["message"]}    Login realizado com sucesso
    Should not be empty    ${response.json()["authorization"]}

Fazer Login e Armazenar Token
    Post Endpoint /login
    Validar Ter Logado
    ${token_auth}    Set Variable     ${response.json()["authorization"]}
    Log to console     Token: ${token_auth}
    Set Global Variable     ${token_auth}