*** Settings ***
Documentation    Keyword e Variaves para acoes gerais
Library          OperatingSystem

*** Keywords ***

Criar Sessao                                                        
    Create Session  serverest   http://localhost:3000     

validar Status Code "${statuscode}"    
    Should Be true     ${response.status_code} == ${status_code}
    Log to console     Response: ${response.status_code}
Status Code Erro Endpoint login ${statuscode} 
    ${conteudo}     Run Keyword And Expect Error	HTTPError: 401 Client Error: Unauthorized for url: http://localhost:3000/login     POST Endpoint /login
    Set Global Variable     ${conteudo}
    Should Contain      ${conteudo}     ${statuscode}
Status Code Erro Endpoint usuario/id ${statuscode} 
    ${conteudo}     Run Keyword And Expect Error	HTTPError: 400 Client Error: Bad Request for url: http://localhost:3000/usuarios/n%C3%A3o%20existe     GET Endpoint /usuarios/_id INVALIDO
    Set Global Variable     ${conteudo}
    Should Contain      ${conteudo}     ${statuscode} 

Importar Json Estatico  
    [Arguments]     ${nome_arquivo}
    ${arquivo}      Get File    ${EXECDIR}/${nome_arquivo}
    ${data}         Evaluate    json.loads('''${arquivo}''')    json
    [Return]        ${data}