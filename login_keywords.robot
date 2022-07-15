#Sessão para configuração, documentacao, imports de arquivos e librarys
* Settings *
Documentation   Ações e variáveis para o endpoint login.  
Library         RequestsLibrary 
Resource        ./common.robot


#Sessão para setagem de variáveis
* Variables *






#Sessão para criacao de Keywords Personalizadas
* Keywords *
POST Login Estatico Valido
    ${json}     Importar Json Estatico  massa_login.json
    ${payload}  Set Variable     ${json["user_valido"]}
    Set Global Variable     ${payload}
    POST Endpoint /login

POST Endpoint /login
    ${response}     Post on Session      serverest         /login   json=&{payload}
    Log to console     Response: ${response.content}    
    SET Global Variable     ${response}    

Validar Ter Logado
    Should Be Equal    ${response.json()["message"]}    Login realizado com sucesso
    Should not be empty    ${response.json()["authorization"]}

POST Login Estatico Invalido    
    ${json}     Importar Json Estatico  massa_login.json
    ${payload}  Set Variable     ${json["user_invalido"]}
    Set Global Variable     ${payload}    
    Run Keyword And Expect Error	HTTPError: 401 Client Error: Unauthorized for url: http://localhost:3000/login     POST Endpoint /login
    
Fazer Login e Armazenar Token
    POST Login Estatico Valido
    Validar Ter Logado
    ${token_auth}    Set Variable     ${response.json()["authorization"]}
    Log to console     Token: ${token_auth}
    Set Global Variable     ${token_auth}
   