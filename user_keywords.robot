#Sessão para configuração, documentacao, imports de arquivos e librarys
* Settings *
Documentation   Ações e variáveis para o endpoint usuarios.  
Library         RequestsLibrary 
Resource        ./common.robot


#Sessão para setagem de variáveis
* Variables *

${user_id}  0uxuPY0cbmQhpEz1
${user_id_invalida}  não existe




#Sessão para criacao de Keywords Personalizadas
* Keywords *

Get Endpoint /usuarios
    ${response}     Get on Session      serverest         /usuarios
    Set Global Variable     ${response}
    Log to console     Response: ${response.content}
    Log to console     Status: ${response.status_code}

Get Endpoint /usuarios/_id
    ${response}     Get on Session      serverest         /usuarios/${user_id}
    Set Global Variable     ${response}
    Log to console     Response: ${response.content}
    Log to console     Status: ${response.status_code}

Get Endpoint /usuarios/_id INVALIDO
    ${response}     Get on Session      serverest         /usuarios/${user_id_invalida}
    Set Global Variable     ${response}
    Log to console     Response: ${response.content}
    Log to console     Status: ${response.status_code}

Validar ID errado
    Run Keyword And Expect Error	HTTPError: 400 Client Error: Bad Request for url: http://localhost:3000/usuarios/n%C3%A3o%20existe    Get Endpoint /usuarios/_id INVALIDO


POST Endpoint /usuarios
    ${response}     Post on Session      serverest         /usuarios    json=${payload}
    Log to console     Response: ${response.content}
    SET Global Variable     ${response}   

POST User Estatico 
    ${json}     Importar Json Estatico  massa_user.json
    ${payload}  Set Variable     ${json["user_valido"]}
    Set Global Variable     ${payload}
    POST Endpoint /usuarios

DELETE Endpoint /usuarios
    ${response}    Delete on Session      serverest         /usuarios/s1HRvJRWtCbpuH3b"
    Log To Console    Response: ${response.content}
    Set Global Variable    ${response}
PUT Endpoint /usuarios
    ${response}     Put on Session      serverest         /usuarios/whKi1ojgViRKuAfe     json=${payload}
    Log To Console    Response: ${response.content}
    SET Global Variable     ${response}
PUT User Estatico
    ${json}     Importar Json Estatico  massa_user.json
    ${payload}  Set Variable     ${json["Outro"]}
    Set Global Variable     ${payload}
    PUT Endpoint /usuarios