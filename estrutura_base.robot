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
    Validar Status Code "201"


#Sessão para criacao de Keywords Personalizadas
* Keywords *
Criar Sessao                                                        #Questão para averiguar se o cenário está correto
    Create Session  serverest   https://serverest.dev/    
Get Endpoint /usuarios
    ${response}     Get on Session      serverest         /usuarios
    Set Global Variable     ${response}

validar Status Code "${statuscode}"
    Should Be true  ${response.status_code} == ${status_code}