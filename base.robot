#Sessão para configuração, documentacao, imports de arquivos e librarys
* Settings *
Documentation   Testes para a API Serverest.  
Library         RequestsLibrary
Resource        ./common.robot
Resource        ./login_keywords.robot
Resource        ./user_keywords.robot
Resource        ./produtos_keywords.robot
Resource        ./carrinho_keywords.robot



#Sessão para setagem de variáveis
* Variables *




#Sessão para criacao dos cenários de teste
* Test Cases *

Cenario: POST Realizar Login 200
    [Tags]    POSTLOGIN
    Criar Sessao    
    Fazer Login e Armazenar Token
    Validar Ter Logado    
    validar Status Code "200"
Cenario: POST Realizar Login 401
    [Tags]    POSTLOGININVALIDO
    Criar Sessao    
    POST Login Estatico Invalido 
    Status Code Erro Endpoint login 401
    
Cenario: GET Todos os usuários 200
    [Tags]    GETUSUARIOS
    Criar Sessao
    Get Endpoint /usuarios
    Validar Status Code "200"

Cenario: GET Endpoint /usuarios/_id 200
    [Tags]    GETUSUARIOID
    Criar Sessao
    Get Endpoint /usuarios/_id 
    Validar Status Code "200"
     

Cenario: GET Endpoint /usuarios/_id INVALIDO
    [Tags]    GETUSUARIOIDINVALIDO
    Criar Sessao
    Validar ID errado
    Status Code Erro Endpoint usuario/id 400

Cenario: POST Endpoint /usuarios    
    [Tags]    POSTUSUARIO
    Criar Sessao
    POST User Estatico 
    Validar Status Code "201"
Cenario: DELETE Endpoint /usuarios
    [Tags]    DELETEUSUARIO
    Criar Sessao
    DELETE Endpoint /usuarios 
    Validar Status Code "200"
Cenario: PUT Endpoint /usuarios
    [Tags]    PUTUSUARIO
    Criar Sessao
    PUT User Estatico
    Validar Status Code "200"

Cenario: GET Endpoint /produtos
    [Tags]    GETPRODUTOS
    Criar Sessao
    GET Endpoint /produtos
    Validar Status Code "200"
Cenario: GET Endpoint /produtos ID 200
    [Tags]    GETPRODUTOSID
    Criar Sessao
    GET Endpoint /produtos ID 200
    Validar Status Code "200"
Cenario: GET Endpoint /produtos ID 200
    [Tags]    POSTPRODUTO
    Criar Sessao
    POST Produto Estatico
    Validar Status Code "201"
Cenario: DELETE Endpoint /produtos ID 200
    [Tags]    DELETEPRODUTO
    Criar Sessao
    DELETE Endpoint /produtos ID 200
    Validar Status Code "200"
Cenario: PUT Endpoint /usuarios    
    [Tags]    PUTPRODUTO
    Criar Sessao
    PUT Produto Estatico
    Validar Status Code "201"
Cenario: Get Endpoint /usuarios 200
    [Tags]    GETCARRINH0
    Criar Sessao
    Get Endpoint /usuarios 200
    Validar Status Code "200"
