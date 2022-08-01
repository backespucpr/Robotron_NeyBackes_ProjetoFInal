#Sessão para configuração, documentacao, imports de arquivos e librarys
* Settings *

Documentation   Arquivos de teste para o endpoint de /login
Resource        ../keywords/user_keywords.robot

Suite Setup     Criar Sessao

#Sessão para criacao dos cenários de teste
* Test Cases *

#VALIDAÇÕES NO ENDPOINT /usuarios

Cenario: POST Cadastrar Usuario 201
    [Tags]    POST_USUARIO
    Iniciar cores de resposta 
    POST Cadastro Usuario Dinamico Valido
    Imprimir Usuario Response.Content
    Resposta Usuario Cadastrado  
    validar Status Code "201"    
    DELETE Endpoint /usuarios
    #DELETE Não esquece de tirar a reposta do content 
    Imprimir Delete Usuario Response.Content

Cenario: POST Cadastrar Usuario Email Repetido 400
    [Tags]    POST_USUARIO_EMAIL_REPETIDO
    Iniciar cores de resposta   
    POST Cadastro Usuario Dinamico Email Repetido
    Imprimir Usuario Response.Content
    Resposta Usuario Email Repetido
    validar Status Code "400"

Cenario: GET LIstar Usuarios 200
    [Tags]    GET_USUARIOS
    Iniciar cores de resposta  
    GET Endpoint /usuarios      
    validar Status Code "200"

Genario: GET Listar Usuario ID 200
    [Tags]    GET_USUARIO_ID
    Iniciar cores de resposta 
    GET Endpoint /usuarios    
    GET Endpoint Estatico /usuarios/_id    
    validar Status Code "200"

Genario: GET Listar Usuario ID Não Encontrado 400
    [Tags]    GET_USUARIO_ID_NAO_ENCONTRADO
    Iniciar cores de resposta
    GET Endpoint Estatico /usuarios/_id Nao Encontrado
    Resposta Usuario Não Encontrado  
    validar Status Code "400"


Cenario: PUT Alterar Cadastro Usuario 200
    [Tags]    PUT_USUARIO
    Iniciar cores de resposta 
    POST Cadastro Usuario Dinamico Valido
    PUT Alterar Cadastro Usuario Diamico Valido
    Resposta Cadastro Usuario Alterado
    validar Status Code "200"    
    DELETE Endpoint /usuarios
    #DELETE Não esquece de tirar a reposta do content 
    Imprimir Delete Usuario Response.Content

Cenario: PUT Alterar Cadastro Sem ID 201
    [Tags]    PUT_USUARIO_SEM_ID
    Iniciar cores de resposta     
    PUT Alterar Cadastro Usuario Diamico Valido Sem ID
    Resposta Cadastro Usuario Sem ID
    validar Status Code "201"    
    DELETE Endpoint /usuarios
    #DELETE Não esquece de tirar a reposta do content 
    Imprimir Delete Usuario Response.Content

Cenario: PUT Alterar Cadastro Email Repeito 400
    [Tags]    PUT_USUARIO_EMAIL_REPETIDO
    Iniciar cores de resposta     
    POST Cadastro Usuario Dinamico Valido
    PUT Alterar Cadastro Usuario Diamico Email Repetido
    Resposta Cadastro Usuario Email Repetido
    validar Status Code "400"    
    DELETE Endpoint /usuarios
    #DELETE Não esquece de tirar a reposta do content 
    Imprimir Delete Usuario Response.Content
    
Cenario: DELETE Excluir Usuario 200
    [Tags]    DELETE_USUARIO
    Iniciar cores de resposta
    POST Cadastro Usuario Dinamico Valido
    DELETE Endpoint /usuarios
    Imprimir Delete Usuario Response.Content
    Resposta Delete Usuario
    validar Status Code "200"

Cenario: DELETE Excluir Usuario ID Inexistente 200
    [Tags]    DELETE_USUARIO_ID_INEXISTENTE
    Iniciar cores de resposta
    DELETE Endpoint /usuarios Nao Encontrado
    Imprimir Delete Usuario Response.Content
    Resposta Delete Usuario ID inexistente  
    validar Status Code "200"
 