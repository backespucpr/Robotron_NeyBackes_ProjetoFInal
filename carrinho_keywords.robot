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

Get Endpoint /usuarios 200
    ${response}     Get on Session      serverest         /carrinho/qbMqntef4iTOwWfg
    Set Global Variable     ${response}
    Log to console     Response: ${response.content}
    Log to console     Status: ${response.status_code}

