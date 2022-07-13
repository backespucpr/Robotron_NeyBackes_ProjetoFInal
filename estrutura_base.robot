#Sessão para configuração, documentacao, imports de arquivos e librarys
* Settings *
Documentation   Nome do documento para explicar o que o programa faz.  
Library         RequestsLibrary 


#Sessão para setagem de variáveis
* Variables *




#Sessão para criacao dos cenários de teste
* Test Cases *
Cenario: Get Todos os usuários 200
    Criar Sessao
    Get Endpoint /usuarios
    Validar Status Code "200"

Cenario: POST Cadastrar usuario 201
    Criar Sessao
    Post Endpoint /usuarios
    Validar Status Code "201"
Cenario: PUT Editar Usario 200
    Criar Sessao
    PUt Endpoint /usuarios
    Validar Status Code "200"



#Sessão para criacao de Keywords Personalizadas
* Keywords *
Criar Sessao                                                        #Questão para averiguar se o cenário está correto
    Create Session  serverest   https://serverest.dev/               

Get Endpoint /usuarios
    ${response}     Get on Session      serverest         /usuarios
    Set Global Variable     ${response}

POST Endpoint /usuarios
    ${payload}     Create Dictionary     nome=Osdsadas    email=dasdasdas@gmail.com    password=123    administrador=true
    ${response}     Post on Session      serverest         /usuarios    data=${payload}
    Log to console     Response: ${response.content}
    SET Global Variable     ${response}

PUT Endpoint /usuarios
    ${payload}     Create Dictionary     nome=dasdasdsadasdas   email=tdsadasdsdasdas@gmail.com    password=123    administrador=true
    ${response}     PUT on Session      serverest       /usuarios/mR1PVVmrAenrnzGb    data=${payload}
    Log To Console    Response: ${response.content}
    SET Global Variable     ${response}

validar Status Code "${statuscode}"
    Should Be true  ${response.status_code} == ${status_code}