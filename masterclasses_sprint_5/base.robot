#Sessão para configuração, documentacao, imports de arquivos e librarys
* Settings *
Documentation   Nome do documento para explicar o que o programa faz.  
Library         RequestsLibrary 
Resource        ./usuarios_keywords.robot
Resource        ./login_keywords.robot
Resource        ./produtos_keywords.robot
Resource        ./carrinho_keywords.robot

#Sessão para setagem de variáveis
* Variables *




#Sessão para criacao dos cenários de teste
* Test Cases *
Cenario: Get Todos os usuários 200
    [Tags]    GET
    Criar Sessao
    Get Endpoint /usuarios
    Validar Status Code "200"
    Validar Quantidade "${14}"

Cenario: POST Cadastrar usuario 201
    [Tags]    POST
    Criar Sessao
    Post Endpoint /usuarios
    Validar Status Code "201"
    Validar Se Mensagem Contem "sucesso"
Cenario: PUT Editar Usario 200
    [Tags]    PUT
    Criar Sessao
    PUt Endpoint /usuarios
    Validar Status Code "200"
Cenario: DELETE Deletar Usuario 200
    [Tags]    DELETE
    Criar Sessao
    Delete Endpoint /usuarios
    Validar Status Code "200"

Cenario: POST Realizar Login 200
    [Tags]    POSTLOGIN
    Criar Sessao
    Post Endpoint /login
    Validar Status Code "200"
Cenario: POST Criar Produto 201
    [Tags]    POSTPRODUTO
    Criar Sessao
    Fazer Login e Armazenar Token
    Post Endpoint /produtos
    Validar Status Code "201"
Cenario: DELETE Excluir Produto 200
    [Tags]    DELETEPRODUTO
    Criar Sessao
    Fazer Login e Armazenar Token
    Criar um produto e Armazenar ID
    DELETE Endpoint /produtos
    Validar Status Code "200"

Cenario POST Criar Usuario De Massa Estatico 201
   [Tags]   POSTUSUARIODEMASSA
   Criar Sessao
   Criar Usuario Estatico Valido
   Validar Status Code "201"



#Sessão para criacao de Keywords Personalizadas
* Keywords *
Criar Sessao                                                        
    Create Session  serverest   http://localhost:3000      


